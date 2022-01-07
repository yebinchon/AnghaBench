; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_assoc_req_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_assoc_req_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.wpa_bss = type { i32 }
%struct.wpabuf = type { i32 }

@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_assoc_req_ie(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.wpa_bss*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %64

32:                                               ; preds = %28, %21
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %64

40:                                               ; preds = %32
  %41 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %42 = icmp eq %struct.wpa_bss* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %64

44:                                               ; preds = %40
  %45 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %46 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %47 = call %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss* %45, i32 %46)
  store %struct.wpabuf* %47, %struct.wpabuf** %12, align 8
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %54 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %60 = call i32 @p2p_assoc_req_ie(i32* %52, i32 %55, i32* %56, i64 %57, i32 %58, %struct.wpabuf* %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %62 = call i32 @wpabuf_free(%struct.wpabuf* %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %44, %43, %39, %31, %20
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.wpabuf* @wpa_bss_get_vendor_ie_multi(%struct.wpa_bss*, i32) #1

declare dso_local i32 @p2p_assoc_req_ie(i32*, i32, i32*, i64, i32, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
