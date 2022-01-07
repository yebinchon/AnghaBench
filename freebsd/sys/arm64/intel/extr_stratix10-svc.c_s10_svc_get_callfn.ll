; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_svc_get_callfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/intel/extr_stratix10-svc.c_s10_svc_get_callfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s10_svc_softc = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@arm_smccc_hvc = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@arm_smccc_smc = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid method \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"SMC method not provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.s10_svc_softc*, i32)* @s10_svc_get_callfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @s10_svc_get_callfn(%struct.s10_svc_softc* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.s10_svc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  store %struct.s10_svc_softc* %0, %struct.s10_svc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %9 = call i64 @OF_getprop(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %8, i32 16)
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32*, i32** @arm_smccc_hvc, align 8
  store i32* %16, i32** %3, align 8
  br label %37

17:                                               ; preds = %11
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32*, i32** @arm_smccc_smc, align 8
  store i32* %22, i32** %3, align 8
  br label %37

23:                                               ; preds = %17
  %24 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %25 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.s10_svc_softc*, %struct.s10_svc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.s10_svc_softc, %struct.s10_svc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %30
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %36, %21, %15
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
