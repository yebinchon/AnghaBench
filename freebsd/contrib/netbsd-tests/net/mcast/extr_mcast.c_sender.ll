; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_sender.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@connect = common dso_local global i32 0, align 4
@connector = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"clock (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"sending\00", align 1
@ss = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"send (%s)\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i64, i32, i32)* @sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sender(i32 %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.message, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @connect, align 4
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @connector, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @getsocket(i8* %19, i8* %20, i32 %28, i32* %17, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @synchronize(i32 %31, i32 1)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %95

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %85, %35
  %38 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %37
  %43 = call i32 @gettimeofday(%struct.timeval* %18, i32* null)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @ERRX(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* @debug, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 @show(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.message* %16)
  br label %64

64:                                               ; preds = %62, %50
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @send(i32 %68, %struct.message* %16, i32 16, i32 0)
  br label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @sendto(i32 %71, %struct.message* %16, i32 16, i32 0, i8* bitcast (i32* @ss to i8*), i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %69, %67 ], [ %73, %70 ]
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 @ERRX(i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  %84 = call i32 @usleep(i32 100)
  br label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %37

89:                                               ; preds = %37
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @synchronize(i32 %90, i32 1)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 -1, i32* %7, align 4
  br label %95

94:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %93, %34
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @getsocket(i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @synchronize(i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @ERRX(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @show(i8*, %struct.message*) #1

declare dso_local i32 @send(i32, %struct.message*, i32, i32) #1

declare dso_local i32 @sendto(i32, %struct.message*, i32, i32, i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
