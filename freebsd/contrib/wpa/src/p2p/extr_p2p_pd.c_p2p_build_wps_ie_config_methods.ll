; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2p_build_wps_ie_config_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2p_build_wps_ie_config_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPS_DEV_OUI_WFA = common dso_local global i32 0, align 4
@ATTR_CONFIG_METHODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i32)* @p2p_build_wps_ie_config_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_build_wps_ie_config_methods(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %7 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %8 = call i32 @wpabuf_put_u8(%struct.wpabuf* %6, i32 %7)
  %9 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %10 = call i32* @wpabuf_put(%struct.wpabuf* %9, i32 1)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = load i32, i32* @WPS_DEV_OUI_WFA, align 4
  %13 = call i32 @wpabuf_put_be32(%struct.wpabuf* %11, i32 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %15 = load i32, i32* @ATTR_CONFIG_METHODS, align 4
  %16 = call i32 @wpabuf_put_be16(%struct.wpabuf* %14, i32 %15)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %18 = call i32 @wpabuf_put_be16(%struct.wpabuf* %17, i32 2)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @wpabuf_put_be16(%struct.wpabuf* %19, i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %22, i32* %23)
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
