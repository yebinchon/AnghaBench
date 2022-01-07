; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_update_peer_vendor_elems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_update_peer_vendor_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPA_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@WMM_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@WPS_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@P2P_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@WFD_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_device*, i32*, i64)* @p2p_update_peer_vendor_elems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_update_peer_vendor_elems(%struct.p2p_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.p2p_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.p2p_device* %0, %struct.p2p_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %13 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @wpabuf_free(i32* %15)
  %17 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %18 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %7, align 8
  br label %24

24:                                               ; preds = %103, %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %32, label %108

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = icmp sgt i64 %40, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %108

49:                                               ; preds = %32
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %49
  br label %103

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = icmp sge i32 %58, 4
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @WPA_GET_BE32(i32* %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @WPA_IE_VENDOR_TYPE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @WMM_IE_VENDOR_TYPE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @WPS_IE_VENDOR_TYPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @P2P_IE_VENDOR_TYPE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @WFD_IE_VENDOR_TYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74, %70, %66, %60
  br label %103

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %86 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 2, %88
  %90 = call i64 @wpabuf_resize(i32** %87, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %108

93:                                               ; preds = %84
  %94 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %95 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 -2
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 2, %100
  %102 = call i32 @wpabuf_put_data(i32* %97, i32* %99, i32 %101)
  br label %103

103:                                              ; preds = %93, %82, %56
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %7, align 8
  br label %24

108:                                              ; preds = %92, %48, %24
  ret void
}

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i64 @wpabuf_resize(i32**, i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
