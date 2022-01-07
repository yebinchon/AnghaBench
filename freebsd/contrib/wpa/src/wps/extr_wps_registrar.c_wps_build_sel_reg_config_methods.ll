; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_sel_reg_config_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_sel_reg_config_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WPS:  * Selected Registrar Config Methods (%x)\00", align 1
@ATTR_SELECTED_REGISTRAR_CONFIG_METHODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_registrar*, %struct.wpabuf*)* @wps_build_sel_reg_config_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_sel_reg_config_methods(%struct.wps_registrar* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %7 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %8 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %23 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %29 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %12
  %33 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %34 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wps_set_pushbutton(i32* %6, i32 %37)
  br label %39

39:                                               ; preds = %32, %12
  %40 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %41 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %46 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %53 = load i32, i32* @ATTR_SELECTED_REGISTRAR_CONFIG_METHODS, align 4
  %54 = call i32 @wpabuf_put_be16(%struct.wpabuf* %52, i32 %53)
  %55 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %56 = call i32 @wpabuf_put_be16(%struct.wpabuf* %55, i32 2)
  %57 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @wpabuf_put_be16(%struct.wpabuf* %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @wps_set_pushbutton(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
