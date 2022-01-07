; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_p2p_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_p2p_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_ssid*, %struct.TYPE_4__*, %struct.wpa_supplicant*, %struct.TYPE_3__* }
%struct.wpa_ssid = type { i64, i64, i64, i32, i32, %struct.wpa_ssid* }
%struct.TYPE_4__ = type { %struct.wpa_ssid* }
%struct.TYPE_3__ = type { %struct.wpa_supplicant* }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_supplicant* (%struct.wpa_supplicant*, i32*, i64, i32*)* @wpas_get_p2p_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_supplicant* @wpas_get_p2p_group(%struct.wpa_supplicant* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %6, align 8
  br label %16

16:                                               ; preds = %84, %4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %18 = icmp ne %struct.wpa_supplicant* %17, null
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %23, align 8
  store %struct.wpa_ssid* %24, %struct.wpa_ssid** %10, align 8
  br label %25

25:                                               ; preds = %79, %19
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %27 = icmp ne %struct.wpa_ssid* %26, null
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @os_memcmp(i32* %45, i32 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %38, %33, %28
  br label %79

53:                                               ; preds = %44
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %55 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %62 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %61, i32 0, i32 0
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %62, align 8
  %64 = icmp ne %struct.wpa_ssid* %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %79

66:                                               ; preds = %59, %53
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %71 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_supplicant* %78, %struct.wpa_supplicant** %5, align 8
  br label %89

79:                                               ; preds = %65, %52
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %81 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %80, i32 0, i32 5
  %82 = load %struct.wpa_ssid*, %struct.wpa_ssid** %81, align 8
  store %struct.wpa_ssid* %82, %struct.wpa_ssid** %10, align 8
  br label %25

83:                                               ; preds = %25
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %86 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %85, i32 0, i32 2
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %86, align 8
  store %struct.wpa_supplicant* %87, %struct.wpa_supplicant** %6, align 8
  br label %16

88:                                               ; preds = %16
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %5, align 8
  br label %89

89:                                               ; preds = %88, %77
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  ret %struct.wpa_supplicant* %90
}

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
