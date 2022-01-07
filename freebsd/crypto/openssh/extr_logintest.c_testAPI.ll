; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_logintest.c_testAPI.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_logintest.c_testAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logininfo = type { i8*, i8*, i32 }
%struct.passwd = type { i8* }
%struct.hostent = type { i32** }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"**\0A** Testing the API...\0A**\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"login_alloc_entry test (no host info):\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OpenSSH-logintest\00", align 1
@be_verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"li1\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Setting host address info for 'localhost' (may call out):\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Couldn't set hostname(lookup failed)\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"NOT RUNNING LOGIN TESTS - you are not root!\0A\00", align 1
@nologtest = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"Performing an invalid login attempt (no type field)\0A--\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"--\0A(Should have written errors to stderr)\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Performing a login on line %s \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"who | grep '%s '\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"--\0APausing for %d second(s)...\0A\00", align 1
@PAUSE_BEFORE_LOGOUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Performing a logout \00", align 1
@.str.15 = private unnamed_addr constant [234 x i8] c"\0AThe root login shown above should be gone.\0AIf the root login hasn't gone, but another user on the same\0Apty has, this is OK - we're hacking it here, and there\0Ashouldn't be two users on one pty in reality...\0A-- ('who' output follows)\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"-- ('who' output ends)\0A\00", align 1
@.str.17 = private unnamed_addr constant [104 x i8] c"--\0AThe output of 'last' shown next should have an entry for root \0A  on %s for the time shown above:\0A--\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"last | grep '%s ' | head -3\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"--\0AEnd of login test.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testAPI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.logininfo*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [8 x i8], align 1
  %8 = alloca [32 x i8], align 16
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @getuid()
  %11 = call %struct.passwd* @getpwuid(i32 %10)
  store %struct.passwd* %11, %struct.passwd** %3, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %13 = load %struct.passwd*, %struct.passwd** %3, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlcpy(i8* %12, i8* %15, i32 32)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i64 (...) @getpid()
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %21 = call i32 @ttyname(i32 0)
  %22 = call %struct.logininfo* @login_alloc_entry(i32 %19, i8* %20, i32* null, i32 %21)
  store %struct.logininfo* %22, %struct.logininfo** %2, align 8
  %23 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %24 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlcpy(i8* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %27 = load i64, i64* @be_verbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  %30 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %31 = call i32 @dump_logininfo(%struct.logininfo* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %0
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %34 = call %struct.hostent* @gethostbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.hostent* %34, %struct.hostent** %4, align 8
  %35 = icmp ne %struct.hostent* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %56

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %40 = bitcast i32* %39 to i8*
  %41 = load %struct.hostent*, %struct.hostent** %4, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @memcpy(i8* %40, i8* %47, i32 4)
  %49 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %50 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %51 = call i32 @login_set_addr(%struct.logininfo* %49, %struct.sockaddr* %50, i32 4)
  %52 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %53 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlcpy(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 8)
  br label %56

56:                                               ; preds = %38, %36
  %57 = load i64, i64* @be_verbose, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %61 = call i32 @dump_logininfo(%struct.logininfo* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i64 (...) @geteuid()
  %64 = trunc i64 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %113

68:                                               ; preds = %62
  %69 = load i64, i64* @nologtest, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %1, align 4
  br label %113

72:                                               ; preds = %68
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %74 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %75 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @line_stripname(i8* %73, i32 %76, i32 8)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %79 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %80 = call i32 @login_write(%struct.logininfo* %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %85 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %86 = call i32 @login_login(%struct.logininfo* %85)
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %89 = call i32 @snprintf(i8* %87, i32 256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %88)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %91 = call i32 @system(i8* %90)
  %92 = load i32, i32* @PAUSE_BEFORE_LOGOUT, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @PAUSE_BEFORE_LOGOUT, align 4
  %95 = call i32 @sleep(i32 %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.15, i64 0, i64 0))
  %98 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %99 = call i32 @login_logout(%struct.logininfo* %98)
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %101 = call i32 @system(i8* %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.17, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %107 = call i32 @snprintf(i8* %105, i32 256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %106)
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %109 = call i32 @system(i8* %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %111 = load %struct.logininfo*, %struct.logininfo** %2, align 8
  %112 = call i32 @login_free_entry(%struct.logininfo* %111)
  store i32 1, i32* %1, align 4
  br label %113

113:                                              ; preds = %72, %71, %66
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.logininfo* @login_alloc_entry(i32, i8*, i32*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @ttyname(i32) #1

declare dso_local i32 @dump_logininfo(%struct.logininfo*, i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @login_set_addr(%struct.logininfo*, %struct.sockaddr*, i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @line_stripname(i8*, i32, i32) #1

declare dso_local i32 @login_write(%struct.logininfo*) #1

declare dso_local i32 @login_login(%struct.logininfo*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @login_logout(%struct.logininfo*) #1

declare dso_local i32 @login_free_entry(%struct.logininfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
