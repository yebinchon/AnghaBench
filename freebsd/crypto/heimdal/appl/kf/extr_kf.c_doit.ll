; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_doit.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i64)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doit(i8* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* @NI_MAXSERV, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = call i32 @memset(%struct.addrinfo* %14, i32 0, i32 32)
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @IPPROTO_TCP, align 4
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = trunc i64 %21 to i32
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = call i32 @snprintf(i8* %23, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @getaddrinfo(i8* %33, i8* %23, %struct.addrinfo* %14, %struct.addrinfo** %12)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @gai_strerror(i32 %39)
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %5
  %43 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  store %struct.addrinfo* %43, %struct.addrinfo** %13, align 8
  br label %44

44:                                               ; preds = %85, %42
  %45 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %46 = icmp ne %struct.addrinfo* %45, null
  br i1 %46, label %47, label %89

47:                                               ; preds = %44
  %48 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @socket(i32 %50, i32 %53, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %85

61:                                               ; preds = %47
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @connect(i32 %62, i32 %65, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @close(i32 %74)
  br label %85

76:                                               ; preds = %61
  %77 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %78 = call i32 @freeaddrinfo(%struct.addrinfo* %77)
  %79 = load i32, i32* %18, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @proto(i32 %79, i8* %80, i8* %81, i8* %82, i64 %83)
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %94

85:                                               ; preds = %71, %60
  %86 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 5
  %88 = load %struct.addrinfo*, %struct.addrinfo** %87, align 8
  store %struct.addrinfo* %88, %struct.addrinfo** %13, align 8
  br label %44

89:                                               ; preds = %44
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %93 = call i32 @freeaddrinfo(%struct.addrinfo* %92)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %94

94:                                               ; preds = %89, %76
  %95 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %6, align 4
  ret i32 %96
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

declare dso_local i32 @proto(i32, i8*, i8*, i8*, i64) #2

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
