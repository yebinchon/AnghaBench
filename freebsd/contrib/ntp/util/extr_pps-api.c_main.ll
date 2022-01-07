; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_pps-api.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_pps-api.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"/dev/cuaa1\00", align 1
@stdout = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"time_pps_create\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"time_pps_getcap\00", align 1
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_ECHOASSERT = common dso_local global i32 0, align 4
@PPS_CAPTUREBOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"time_pps_setparams\00", align 1
@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"time_pps_fetch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.timespec, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @setbuf(i32 %22, i32 0)
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call i32 @open(i8* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @err(i32 1, i8* %34)
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @time_pps_create(i32 %37, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @time_pps_getcap(i32 %44, i32* %11)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %52 = load i32, i32* @PPS_ECHOASSERT, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @time_pps_setparams(i32 %57, %struct.TYPE_5__* %8)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63, %84, %86
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PPS_TSFMT_TSPEC, align 4
  %69 = call i32 @time_pps_fetch(i32 %67, i32 %68, %struct.TYPE_6__* %7, %struct.timespec* %15)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @usleep(i32 10000)
  br label %64

86:                                               ; preds = %79, %74
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @Chew(i32* %87, i32* %88, i64 %90, i64 %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  br label %64
}

declare dso_local i32 @setbuf(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @time_pps_create(i32, i32*) #1

declare dso_local i32 @time_pps_getcap(i32, i32*) #1

declare dso_local i32 @time_pps_setparams(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @time_pps_fetch(i32, i32, %struct.TYPE_6__*, %struct.timespec*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @Chew(i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
