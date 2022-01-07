; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_common.c_client_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_common.c_client_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@NI_MAXSERV = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to contact %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_doit(i8* %0, i32 %1, i8* %2, i32 (i32, i8*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i32, i8*, i8*)*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 (i32, i8*, i8*)* %3, i32 (i32, i8*, i8*)** %9, align 8
  %18 = load i32, i32* @NI_MAXSERV, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @IPPROTO_TCP, align 4
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = trunc i64 %19 to i32
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = call i32 @snprintf(i8* %21, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @getaddrinfo(i8* %31, i8* %21, %struct.addrinfo* %12, %struct.addrinfo** %10)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @gai_strerror(i32 %37)
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %38)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %91

40:                                               ; preds = %4
  %41 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %41, %struct.addrinfo** %11, align 8
  br label %42

42:                                               ; preds = %82, %40
  %43 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %45, label %86

45:                                               ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @socket(i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %82

59:                                               ; preds = %45
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @connect(i32 %60, i32 %63, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @close(i32 %72)
  br label %82

74:                                               ; preds = %59
  %75 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %76 = call i32 @freeaddrinfo(%struct.addrinfo* %75)
  %77 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 %77(i32 %78, i8* %79, i8* %80)
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %91

82:                                               ; preds = %69, %58
  %83 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 5
  %85 = load %struct.addrinfo*, %struct.addrinfo** %84, align 8
  store %struct.addrinfo* %85, %struct.addrinfo** %11, align 8
  br label %42

86:                                               ; preds = %42
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %90 = call i32 @freeaddrinfo(%struct.addrinfo* %89)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %86, %74, %35
  %92 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
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

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
