; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_msg_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_msg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.ctrl_iface_global_priv* }
%struct.ctrl_iface_global_priv = type { i64, i32 }

@WPA_MSG_NO_GLOBAL = common dso_local global i32 0, align 4
@WPA_MSG_PER_INTERFACE = common dso_local global i32 0, align 4
@WPA_MSG_ONLY_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i64)* @wpa_supplicant_ctrl_iface_msg_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_ctrl_iface_msg_cb(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpa_supplicant*, align 8
  %12 = alloca %struct.ctrl_iface_global_priv*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %14, %struct.wpa_supplicant** %11, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %16 = icmp ne %struct.wpa_supplicant* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %86

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @WPA_MSG_NO_GLOBAL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %26, align 8
  %28 = icmp ne %struct.ctrl_iface_global_priv* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %33, align 8
  store %struct.ctrl_iface_global_priv* %34, %struct.ctrl_iface_global_priv** %12, align 8
  %35 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %12, align 8
  %36 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %29
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @WPA_MSG_PER_INTERFACE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = phi i32* [ null, %44 ], [ %48, %45 ]
  %51 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %12, align 8
  %52 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %12, align 8
  %55 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant* %40, i32* %50, i32 %53, i64* %55, i32 %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %49, %29
  br label %61

61:                                               ; preds = %60, %22, %18
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @WPA_MSG_ONLY_GLOBAL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %61
  br label %86

71:                                               ; preds = %65
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant* %72, i32* null, i32 %77, i64* %81, i32 %82, i8* %83, i64 %84)
  br label %86

86:                                               ; preds = %71, %70, %17
  ret void
}

declare dso_local i32 @wpa_supplicant_ctrl_iface_send(%struct.wpa_supplicant*, i32*, i32, i64*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
