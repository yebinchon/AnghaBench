; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_selected_registrar_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_selected_registrar_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32, i64, %struct.TYPE_2__*, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPS: Selected registrar information changed\00", align 1
@WPS_MAX_AUTHORIZED_MACS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Authorized MACs union (start with own)\00", align 1
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS: Internal Registrar selected (pbc=%d)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"WPS: Internal Registrar not selected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_registrar_selected_registrar_changed(%struct.wps_registrar* %0, i32 %1) #0 {
  %3 = alloca %struct.wps_registrar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %9 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %12 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %11, i32 0, i32 7
  store i64 %10, i64* %12, align 8
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %18 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %21 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WPS_MAX_AUTHORIZED_MACS, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @os_memcpy(i64 %19, i32 %22, i32 %25)
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %29 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @wpa_hexdump(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %31, i32 8)
  %33 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %34 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %2
  %38 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %39 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %47 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %53 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %37
  %57 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %58 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %59 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %61 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wps_set_pushbutton(i32* %5, i32 %64)
  br label %74

66:                                               ; preds = %37
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %72 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %66
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %77 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %82 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %2
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %88 = call i32 @wps_registrar_sel_reg_union(%struct.wps_registrar* %87)
  %89 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %90 = call i32 @wps_set_ie(%struct.wps_registrar* %89)
  %91 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %92 = call i32 @wps_cb_set_sel_reg(%struct.wps_registrar* %91)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i64, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wps_set_pushbutton(i32*, i32) #1

declare dso_local i32 @wps_registrar_sel_reg_union(%struct.wps_registrar*) #1

declare dso_local i32 @wps_set_ie(%struct.wps_registrar*) #1

declare dso_local i32 @wps_cb_set_sel_reg(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
