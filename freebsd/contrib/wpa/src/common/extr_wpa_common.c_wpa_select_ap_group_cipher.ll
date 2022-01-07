; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_select_ap_group_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_select_ap_group_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_select_ap_group_cipher(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %34 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %44 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %56 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  store i32 %64, i32* %4, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %63, %51, %39, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
