; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_build_ext_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_build_ext_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64*, i64* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Not enough room for building extended capabilities element\00", align 1
@WLAN_EID_EXT_CAPAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_build_ext_capab(%struct.wpa_supplicant* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %6, align 8
  store i64* %11, i64** %8, align 8
  store i64 10, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 2
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %104

29:                                               ; preds = %21
  %30 = load i32, i32* @WLAN_EID_EXT_CAPAB, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %8, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %8, align 8
  store i64 %34, i64* %35, align 8
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %72, %29
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @wpas_ext_capab_byte(%struct.wpa_supplicant* %42, i64* %43, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %41
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = xor i64 %57, -1
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, %58
  store i64 %61, i64* %59, align 8
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %67
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %51, %41
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %8, align 8
  br label %37

77:                                               ; preds = %37
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 1, %83
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br label %88

88:                                               ; preds = %81, %78
  %89 = phi i1 [ false, %78 ], [ %87, %81 ]
  br i1 %89, label %90, label %96

90:                                               ; preds = %88
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  store i64 %93, i64* %95, align 8
  br label %78

96:                                               ; preds = %88
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %4, align 4
  br label %104

100:                                              ; preds = %96
  %101 = load i64, i64* %9, align 8
  %102 = add i64 2, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %99, %26
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_ext_capab_byte(%struct.wpa_supplicant*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
