; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_scan_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_scan_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@MBO_OUI_TYPE = common dso_local global i32 0, align 4
@MBO_ATTR_ID_CELL_DATA_CAPA = common dso_local global i32 0, align 4
@OCE_STA = common dso_local global i32 0, align 4
@OCE_ATTR_ID_CAPA_IND = common dso_local global i32 0, align 4
@OCE_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_mbo_scan_ie(%struct.wpa_supplicant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %7 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %8 = call i32 @wpabuf_put_u8(%struct.wpabuf* %6, i32 %7)
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = call i32* @wpabuf_put(%struct.wpabuf* %9, i32 1)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = load i32, i32* @OUI_WFA, align 4
  %13 = call i32 @wpabuf_put_be24(%struct.wpabuf* %11, i32 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = load i32, i32* @MBO_OUI_TYPE, align 4
  %16 = call i32 @wpabuf_put_u8(%struct.wpabuf* %14, i32 %15)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load i32, i32* @MBO_ATTR_ID_CELL_DATA_CAPA, align 4
  %19 = call i32 @wpabuf_put_u8(%struct.wpabuf* %17, i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = call i32 @wpabuf_put_u8(%struct.wpabuf* %20, i32 1)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wpabuf_put_u8(%struct.wpabuf* %22, i32 %27)
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCE_STA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = load i32, i32* @OCE_ATTR_ID_CAPA_IND, align 4
  %38 = call i32 @wpabuf_put_u8(%struct.wpabuf* %36, i32 %37)
  %39 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %40 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i32 1)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %42 = load i32, i32* @OCE_RELEASE, align 4
  %43 = call i32 @wpabuf_put_u8(%struct.wpabuf* %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %2
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = call i32* @wpabuf_put(%struct.wpabuf* %45, i32 0)
  %47 = load i32*, i32** %5, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = sub nsw i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
