; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_probe_config_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_probe_config_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS:  * Config Methods (%x)\00", align 1
@ATTR_CONFIG_METHODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_registrar*, %struct.wpabuf*)* @wps_build_probe_config_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_probe_config_methods(%struct.wps_registrar* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_registrar*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %7 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %15 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = load i32, i32* @ATTR_CONFIG_METHODS, align 4
  %25 = call i32 @wpabuf_put_be16(%struct.wpabuf* %23, i32 %24)
  %26 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %27 = call i32 @wpabuf_put_be16(%struct.wpabuf* %26, i32 2)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @wpabuf_put_be16(%struct.wpabuf* %28, i32 %29)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
