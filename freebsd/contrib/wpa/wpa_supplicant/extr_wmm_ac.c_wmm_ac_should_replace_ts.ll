; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_should_replace_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_should_replace_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64** }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"WMM AC: TSID %i already exists on different ac (%d)\00", align 1
@TS_DIR_IDX_COUNT = common dso_local global i32 0, align 4
@TS_DIR_IDX_UPLINK = common dso_local global i32 0, align 4
@TS_DIR_IDX_BIDI = common dso_local global i32 0, align 4
@TS_DIR_IDX_DOWNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32, i32)* @wmm_ac_should_replace_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmm_ac_should_replace_ts(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @wmm_ac_find_tsid(%struct.wpa_supplicant* %14, i32 %15, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i32 -1, i32* %5, align 4
  br label %89

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %28, %4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @TS_DIR_IDX_COUNT, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 0
  %41 = load i64**, i64*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %51, %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %86 [
    i32 128, label %62
    i32 129, label %72
    i32 130, label %82
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @TS_DIR_IDX_UPLINK, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = load i32, i32* @TS_DIR_IDX_BIDI, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = or i32 %65, %67
  %69 = and i32 %63, %68
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %87

72:                                               ; preds = %60
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @TS_DIR_IDX_DOWNLINK, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = load i32, i32* @TS_DIR_IDX_BIDI, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = or i32 %75, %77
  %79 = and i32 %73, %78
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %87

82:                                               ; preds = %60
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %87

86:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %89

87:                                               ; preds = %82, %72, %62
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %86, %23
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @wmm_ac_find_tsid(%struct.wpa_supplicant*, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
