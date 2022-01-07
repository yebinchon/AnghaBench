; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_capabilities_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_capabilities_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }
%struct.al_eth_capabilities = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AL_FALSE = common dso_local global i8* null, align 8
@AL_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Eth: unsupported MAC mode %d\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_capabilities_get(%struct.al_hal_eth_adapter* %0, %struct.al_eth_capabilities* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_capabilities*, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_capabilities* %1, %struct.al_eth_capabilities** %5, align 8
  %6 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %7 = call i32 @al_assert(%struct.al_eth_capabilities* %6)
  %8 = load i8*, i8** @AL_FALSE, align 8
  %9 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %10 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @AL_FALSE, align 8
  %12 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %13 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @AL_FALSE, align 8
  %15 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %16 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @AL_FALSE, align 8
  %18 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %19 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @AL_FALSE, align 8
  %21 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %22 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %21, i32 0, i32 9
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @AL_FALSE, align 8
  %24 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %25 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @AL_FALSE, align 8
  %27 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %28 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @AL_FALSE, align 8
  %30 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %31 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @AL_FALSE, align 8
  %33 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %34 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @AL_FALSE, align 8
  %36 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %37 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %67 [
    i32 129, label %41
    i32 128, label %41
    i32 130, label %60
  ]

41:                                               ; preds = %2, %2
  %42 = load i8*, i8** @AL_TRUE, align 8
  %43 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %44 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @AL_TRUE, align 8
  %46 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %47 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @AL_TRUE, align 8
  %49 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %50 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @AL_TRUE, align 8
  %52 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %53 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @AL_TRUE, align 8
  %55 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %56 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @AL_TRUE, align 8
  %58 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %59 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %74

60:                                               ; preds = %2
  %61 = load i8*, i8** @AL_TRUE, align 8
  %62 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %63 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @AL_TRUE, align 8
  %65 = load %struct.al_eth_capabilities*, %struct.al_eth_capabilities** %5, align 8
  %66 = getelementptr inbounds %struct.al_eth_capabilities, %struct.al_eth_capabilities* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %74

67:                                               ; preds = %2
  %68 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @al_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %60, %41
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @al_assert(%struct.al_eth_capabilities*) #1

declare dso_local i32 @al_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
