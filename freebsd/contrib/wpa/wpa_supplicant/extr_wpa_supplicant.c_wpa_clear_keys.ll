; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_clear_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_clear_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@WPA_ALG_NONE = common dso_local global i32 0, align 4
@MLME_SETPROTECTION_PROTECT_TYPE_NONE = common dso_local global i32 0, align 4
@MLME_SETPROTECTION_KEY_TYPE_PAIRWISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_clear_keys(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 4, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = load i32, i32* @WPA_ALG_NONE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @wpa_drv_set_key(%struct.wpa_supplicant* %21, i32 %22, i32* null, i32 %23, i32 0, i32* null, i32 0, i32* null, i32 0)
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 0)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @is_zero_ether_addr(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = load i32, i32* @WPA_ALG_NONE, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @wpa_drv_set_key(%struct.wpa_supplicant* %43, i32 %44, i32* %45, i32 0, i32 0, i32* null, i32 0, i32* null, i32 0)
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @MLME_SETPROTECTION_PROTECT_TYPE_NONE, align 4
  %50 = load i32, i32* @MLME_SETPROTECTION_KEY_TYPE_PAIRWISE, align 4
  %51 = call i32 @wpa_drv_mlme_setprotection(%struct.wpa_supplicant* %47, i32* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %38, %35, %28
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wpa_drv_set_key(%struct.wpa_supplicant*, i32, i32*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @wpa_drv_mlme_setprotection(%struct.wpa_supplicant*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
