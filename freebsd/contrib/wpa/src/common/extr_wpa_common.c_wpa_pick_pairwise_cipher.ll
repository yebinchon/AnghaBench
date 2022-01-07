; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_pick_pairwise_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_pick_pairwise_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_pick_pairwise_cipher(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  store i32 %11, i32* %3, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  store i32 %32, i32* %3, align 4
  br label %51

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @WPA_CIPHER_NONE, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %43, %40
  store i32 -1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %38, %31, %24, %17, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
