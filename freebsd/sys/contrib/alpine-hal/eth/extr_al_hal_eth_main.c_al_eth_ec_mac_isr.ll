; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ec_mac_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ec_mac_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"[%s]: ethernet interrupts handler\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@AL_INT_GROUP_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[%s]: ethernet group A cause 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[%s]: mac group A cause 0x%08x\0A\00", align 1
@AL_INT_GROUP_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"[%s]: mac group B cause 0x%08x\0A\00", align 1
@AL_INT_GROUP_C = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"[%s]: mac group C cause 0x%08x\0A\00", align 1
@AL_INT_GROUP_D = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"[%s]: mac group D cause 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"[%s]: ethernet group B cause 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"[%s]: ethernet group C cause 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"[%s]: ethernet group D cause 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_ec_mac_isr(%struct.al_hal_eth_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  %5 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AL_INT_GROUP_A, align 4
  %21 = call i32 @al_iofic_read_cause(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %16
  %31 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AL_INT_GROUP_A, align 4
  %35 = call i32 @al_iofic_read_cause(i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AL_INT_GROUP_B, align 4
  %45 = call i32 @al_iofic_read_cause(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AL_INT_GROUP_C, align 4
  %55 = call i32 @al_iofic_read_cause(i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AL_INT_GROUP_D, align 4
  %65 = call i32 @al_iofic_read_cause(i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %30, %16
  %72 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AL_INT_GROUP_B, align 4
  %76 = call i32 @al_iofic_read_cause(i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AL_INT_GROUP_C, align 4
  %86 = call i32 @al_iofic_read_cause(i32 %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AL_INT_GROUP_D, align 4
  %96 = call i32 @al_iofic_read_cause(i32 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (i8*, i32, ...) @al_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %99, i32 %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %71, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @al_dbg(i8*, i32, ...) #1

declare dso_local i32 @al_iofic_read_cause(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
