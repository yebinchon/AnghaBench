; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_local_do_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_local_do_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Couldn't fork: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Executing %s -c \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Executing %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Couldn't execute \22%s\22: %s\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Couldn't wait for child: %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Shell exited abnormally\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Shell exited with status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @local_do_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_do_shell(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %10
  %19 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %18, %13
  %21 = call i32 (...) @fork()
  store i32 %21, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* @errno, align 8
  %25 = call i8* @strerror(i64 %24)
  %26 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i8*, i8** %2, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 (i8*, i8*, ...) @debug3(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %37, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* null)
  br label %47

41:                                               ; preds = %30
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, i8*, ...) @debug3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %44, i8* %45, i8* null)
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* @errno, align 8
  %51 = call i8* @strerror(i64 %50)
  %52 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %49, i8* %51)
  %53 = call i32 @_exit(i32 1) #3
  unreachable

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @waitpid(i32 %56, i32* %3, i32 0)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EINTR, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* @errno, align 8
  %65 = call i8* @strerror(i64 %64)
  %66 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %59
  br label %55

68:                                               ; preds = %55
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @WIFEXITED(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %83

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @WEXITSTATUS(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @WEXITSTATUS(i32 %79)
  %81 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %72
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @debug3(i8*, i8*, ...) #1

declare dso_local i32 @execl(i8*, i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
