; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_auth_go_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_auth_go_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.wpa_ssid = type { i32, i32* }

@WPS_NFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32*, i32, i32, i32*, i32, i32, %struct.wpa_ssid*, i32)* @wpas_p2p_auth_go_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_auth_go_neg(%struct.wpa_supplicant* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct.wpa_ssid* %7, i32 %8) #0 {
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
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 2, i32* %16, align 4
  br label %29

29:                                               ; preds = %28, %21, %9
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %42 = icmp ne %struct.wpa_ssid* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  br label %48

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32* [ %46, %43 ], [ null, %47 ]
  %50 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %51 = icmp ne %struct.wpa_ssid* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  %54 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 0, %56 ]
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @WPS_NFC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 0, %67 ]
  %70 = call i32 @p2p_authorize(i32 %34, i32* %35, i32 %36, i32 %37, i32* %38, i32 %39, i32 %40, i32* %49, i32 %58, i32 %59, i32 %69)
  ret i32 %70
}

declare dso_local i32 @p2p_authorize(i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
