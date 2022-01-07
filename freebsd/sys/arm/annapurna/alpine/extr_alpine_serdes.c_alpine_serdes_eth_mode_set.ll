; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_alpine_serdes_eth_mode_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_alpine_serdes_eth_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpine_serdes_eth_group_mode = type { i32, i32, i32 }
%struct.al_serdes_grp_obj = type { i32 (%struct.al_serdes_grp_obj*)*, i32 (%struct.al_serdes_grp_obj*)* }

@alpine_serdes_eth_group_mode = common dso_local global %struct.alpine_serdes_eth_group_mode* null, align 8
@serdes_base = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SERDES_NUM_GROUPS = common dso_local global i64 0, align 8
@ALPINE_SERDES_ETH_MODE_SGMII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alpine_serdes_eth_mode_set(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alpine_serdes_eth_group_mode*, align 8
  %7 = alloca %struct.al_serdes_grp_obj, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** @alpine_serdes_eth_group_mode, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %8, i64 %9
  store %struct.alpine_serdes_eth_group_mode* %10, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %11 = load i32*, i32** @serdes_base, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @SERDES_NUM_GROUPS, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %15
  %22 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %23 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %22, i32 0, i32 2
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %26 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %31 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29, %21
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @alpine_serdes_resource_get(i64 %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @al_serdes_handle_grp_init(i32 %37, i64 %38, %struct.al_serdes_grp_obj* %7)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ALPINE_SERDES_ETH_MODE_SGMII, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.al_serdes_grp_obj, %struct.al_serdes_grp_obj* %7, i32 0, i32 1
  %45 = load i32 (%struct.al_serdes_grp_obj*)*, i32 (%struct.al_serdes_grp_obj*)** %44, align 8
  %46 = call i32 %45(%struct.al_serdes_grp_obj* %7)
  br label %51

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.al_serdes_grp_obj, %struct.al_serdes_grp_obj* %7, i32 0, i32 0
  %49 = load i32 (%struct.al_serdes_grp_obj*)*, i32 (%struct.al_serdes_grp_obj*)** %48, align 8
  %50 = call i32 %49(%struct.al_serdes_grp_obj* %7)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %54 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %56 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %29
  %58 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %6, align 8
  %59 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %58, i32 0, i32 2
  %60 = call i32 @mtx_unlock(i32* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %19, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @al_serdes_handle_grp_init(i32, i64, %struct.al_serdes_grp_obj*) #1

declare dso_local i32 @alpine_serdes_resource_get(i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
