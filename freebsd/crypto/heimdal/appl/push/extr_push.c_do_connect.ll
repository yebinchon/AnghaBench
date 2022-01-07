; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_do_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_do_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@NI_MAXSERV = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"getaddrinfo(%s): %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to contact %s\00", align 1
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"setsockopt TCP_NODELAY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @do_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_connect(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %12, align 4
  %16 = load i32, i32* @NI_MAXSERV, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 32)
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @IPPROTO_TCP, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = trunc i64 %17 to i32
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ntohs(i32 %26)
  %28 = call i32 @snprintf(i8* %19, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @getaddrinfo(i8* %29, i8* %19, %struct.addrinfo* %10, %struct.addrinfo** %8)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @gai_strerror(i32 %35)
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %3
  %39 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %39, %struct.addrinfo** %9, align 8
  br label %40

40:                                               ; preds = %73, %38
  %41 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %42 = icmp ne %struct.addrinfo* %41, null
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  %44 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @socket(i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %73

57:                                               ; preds = %43
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @connect(i32 %58, i32 %61, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @close(i32 %70)
  br label %73

72:                                               ; preds = %57
  br label %77

73:                                               ; preds = %67, %56
  %74 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 5
  %76 = load %struct.addrinfo*, %struct.addrinfo** %75, align 8
  store %struct.addrinfo* %76, %struct.addrinfo** %9, align 8
  br label %40

77:                                               ; preds = %72, %40
  %78 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %79 = call i32 @freeaddrinfo(%struct.addrinfo* %78)
  %80 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %81 = icmp eq %struct.addrinfo* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @IPPROTO_TCP, align 4
  %88 = load i32, i32* @TCP_NODELAY, align 4
  %89 = bitcast i32* %7 to i8*
  %90 = call i64 @setsockopt(i32 %86, i32 %87, i32 %88, i8* %89, i32 4)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %85
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

96:                                               ; preds = %94, %82
  %97 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @errx(i32, i8*, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @connect(i32, i32, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
