; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_bit_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_get_bit_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }

@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_bss_get_bit_rates(%struct.wpa_bss* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %13 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %14 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %12, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %16 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %17 = call i32* @wpa_bss_get_ie(%struct.wpa_bss* %15, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 0, %33 ]
  %36 = add nsw i32 %26, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32* @os_malloc(i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %102

42:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %69

54:                                               ; preds = %52
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 127
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %43

69:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %95, %69
  %71 = load i32*, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br label %79

79:                                               ; preds = %73, %70
  %80 = phi i1 [ false, %70 ], [ %78, %73 ]
  br i1 %80, label %81, label %98

81:                                               ; preds = %79
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 127
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %70

98:                                               ; preds = %79
  %99 = load i32*, i32** %11, align 8
  %100 = load i32**, i32*** %5, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i32* @os_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
