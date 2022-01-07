; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_start_go_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_start_go_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_3__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.wpa_ssid = type { i32, i32* }

@WPS_NFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32*, i32, i32, i32*, i32, i32, %struct.wpa_ssid*, i32)* @wpas_p2p_start_go_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_start_go_neg(%struct.wpa_supplicant* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.wpa_ssid* %7, i32 %8) #0 {
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wpa_ssid*, align 8
  %18 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.wpa_ssid* %7, %struct.wpa_ssid** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %9
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 2, i32* %16, align 4
  br label %29

29:                                               ; preds = %28, %21, %9
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 255, i32 100
  %41 = call i32 @p2p_set_config_timeout(i32 %34, i32 %40, i32 20)
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %54 = icmp ne %struct.wpa_ssid* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  br label %60

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32* [ %58, %55 ], [ null, %59 ]
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %63 = icmp ne %struct.wpa_ssid* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %66 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  br label %69

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @WPS_NFC, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %83

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 0, %82 ]
  %85 = call i32 @p2p_connect(i32 %46, i32* %47, i32 %48, i32 %49, i32* %50, i32 %51, i32 %52, i32* %61, i32 %70, i32 %73, i32 %74, i32 %84)
  ret i32 %85
}

declare dso_local i32 @p2p_set_config_timeout(i32, i32, i32) #1

declare dso_local i32 @p2p_connect(i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
