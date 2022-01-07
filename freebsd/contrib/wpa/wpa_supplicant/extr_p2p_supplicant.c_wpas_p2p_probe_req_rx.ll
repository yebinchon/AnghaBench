; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_probe_req_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_probe_req_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_probe_req_rx(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %61

25:                                               ; preds = %8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %61

33:                                               ; preds = %25
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @p2p_probe_req_rx(i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i64 %43, i32 %44, i32 %47)
  switch i32 %48, label %59 [
    i32 130, label %49
    i32 132, label %58
    i32 131, label %58
    i32 129, label %58
    i32 128, label %60
  ]

49:                                               ; preds = %33
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @wpas_notify_preq(%struct.wpa_supplicant* %50, i32* %51, i32* %52, i32* %53, i32* %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %33, %33, %33, %49
  br label %59

59:                                               ; preds = %33, %58
  store i32 0, i32* %9, align 4
  br label %61

60:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %59, %32, %24
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @p2p_probe_req_rx(i32*, i32*, i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @wpas_notify_preq(%struct.wpa_supplicant*, i32*, i32*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
