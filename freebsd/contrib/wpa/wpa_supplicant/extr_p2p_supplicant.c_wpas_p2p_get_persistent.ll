; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_persistent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i64, i64, i64, i32*, i32*, i32*, %struct.wpa_ssid* }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_ssid* @wpas_p2p_get_persistent(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_ssid*, align 8
  %11 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  store %struct.wpa_ssid* %16, %struct.wpa_ssid** %10, align 8
  br label %17

17:                                               ; preds = %105, %4
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %19 = icmp ne %struct.wpa_ssid* %18, null
  br i1 %19, label %20, label %109

20:                                               ; preds = %17
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %105

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @os_memcmp(i32* %36, i32* %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %29
  br label %105

44:                                               ; preds = %35, %26
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  store %struct.wpa_ssid* %54, %struct.wpa_ssid** %5, align 8
  br label %110

55:                                               ; preds = %47
  br label %105

56:                                               ; preds = %44
  %57 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %58 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* @ETH_ALEN, align 8
  %62 = call i64 @os_memcmp(i32* %59, i32* %60, i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  store %struct.wpa_ssid* %65, %struct.wpa_ssid** %5, align 8
  br label %110

66:                                               ; preds = %56
  %67 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %68 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %74 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %66
  br label %105

78:                                               ; preds = %72
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %101, %78
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %82 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %87 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = mul i64 %89, 2
  %91 = load i64, i64* @ETH_ALEN, align 8
  %92 = mul i64 %90, %91
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32*, i32** %7, align 8
  %95 = load i64, i64* @ETH_ALEN, align 8
  %96 = call i64 @os_memcmp(i32* %93, i32* %94, i64 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  store %struct.wpa_ssid* %99, %struct.wpa_ssid** %5, align 8
  br label %110

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %79

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104, %77, %55, %43, %25
  %106 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %107 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %106, i32 0, i32 7
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %107, align 8
  store %struct.wpa_ssid* %108, %struct.wpa_ssid** %10, align 8
  br label %17

109:                                              ; preds = %17
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %5, align 8
  br label %110

110:                                              ; preds = %109, %98, %64, %53
  %111 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  ret %struct.wpa_ssid* %111
}

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
