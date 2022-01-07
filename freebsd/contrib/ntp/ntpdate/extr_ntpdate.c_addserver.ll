; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_addserver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_addserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { %struct.server*, i64, %struct.addrinfo }
%struct.addrinfo = type { i32, i32, %struct.addrinfo*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ntp\00", align 1
@ai_fam_templ = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EAI_FAIL = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Exiting, name server cannot be used: %s (%d)\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"name server cannot be used: %s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error resolving %s: %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't find host %s: %s (%d)\00", align 1
@sys_numservers = common dso_local global i64 0, align 8
@sys_servers = common dso_local global %struct.server* null, align 8
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @addserver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addserver(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.server*, align 8
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %12 = call i32 @strlcpy(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 5)
  %13 = call i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8 %6)
  %14 = load i32, i32* @ai_fam_templ, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %20 = call i32 @getaddrinfo(i8* %18, i8* %19, %struct.addrinfo* %6, %struct.addrinfo** %4)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EAI_FAIL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @EAI_AGAIN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @gai_strerror(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @gai_strerror(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %27
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @gai_strerror(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %45, i8* %47, i32 %48)
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @gai_strerror(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %51, i8* %53, i32 %54)
  br label %123

56:                                               ; preds = %1
  %57 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %57, %struct.addrinfo** %5, align 8
  br label %58

58:                                               ; preds = %116, %56
  %59 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %60 = icmp ne %struct.addrinfo* %59, null
  br i1 %60, label %61, label %120

61:                                               ; preds = %58
  %62 = call i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8 %9)
  %63 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ule i64 %66, 24
  %68 = zext i1 %67 to i32
  %69 = call i32 @INSIST(i32 %68)
  %70 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(%struct.addrinfo* %9, i32 %72, i32 %75)
  %77 = call i64 @is_reachable(%struct.addrinfo* %9)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %61
  %80 = call %struct.server* @emalloc_zero(i32 40)
  store %struct.server* %80, %struct.server** %3, align 8
  %81 = load %struct.server*, %struct.server** %3, align 8
  %82 = getelementptr inbounds %struct.server, %struct.server* %81, i32 0, i32 2
  %83 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(%struct.addrinfo* %82, i32 %85, i32 %88)
  %90 = load i64, i64* @sys_numservers, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* @sys_numservers, align 8
  %92 = load %struct.server*, %struct.server** %3, align 8
  %93 = getelementptr inbounds %struct.server, %struct.server* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.server*, %struct.server** @sys_servers, align 8
  %95 = icmp eq %struct.server* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load %struct.server*, %struct.server** %3, align 8
  store %struct.server* %97, %struct.server** @sys_servers, align 8
  br label %114

98:                                               ; preds = %79
  %99 = load %struct.server*, %struct.server** @sys_servers, align 8
  store %struct.server* %99, %struct.server** %10, align 8
  br label %100

100:                                              ; preds = %106, %98
  %101 = load %struct.server*, %struct.server** %10, align 8
  %102 = getelementptr inbounds %struct.server, %struct.server* %101, i32 0, i32 0
  %103 = load %struct.server*, %struct.server** %102, align 8
  %104 = icmp ne %struct.server* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.server*, %struct.server** %10, align 8
  %108 = getelementptr inbounds %struct.server, %struct.server* %107, i32 0, i32 0
  %109 = load %struct.server*, %struct.server** %108, align 8
  store %struct.server* %109, %struct.server** %10, align 8
  br label %100

110:                                              ; preds = %100
  %111 = load %struct.server*, %struct.server** %3, align 8
  %112 = load %struct.server*, %struct.server** %10, align 8
  %113 = getelementptr inbounds %struct.server, %struct.server* %112, i32 0, i32 0
  store %struct.server* %111, %struct.server** %113, align 8
  br label %114

114:                                              ; preds = %110, %96
  br label %115

115:                                              ; preds = %114, %61
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 2
  %119 = load %struct.addrinfo*, %struct.addrinfo** %118, align 8
  store %struct.addrinfo* %119, %struct.addrinfo** %5, align 8
  br label %58

120:                                              ; preds = %58
  %121 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %122 = call i32 @freeaddrinfo(%struct.addrinfo* %121)
  br label %123

123:                                              ; preds = %120, %43
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @ZERO(%struct.addrinfo* byval(%struct.addrinfo) align 8) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @memcpy(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @is_reachable(%struct.addrinfo*) #1

declare dso_local %struct.server* @emalloc_zero(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
