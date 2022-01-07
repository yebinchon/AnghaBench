; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_config = type { i32, i64, i64, i32*, i32, i64, i64, i64, i32* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Cannot enable IEEE 802.11d without setting the country_code\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Cannot enable IEEE 802.11h without IEEE 802.11d enabled\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Cannot add Power Constraint element without Country element\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Cannot set Spectrum Management bit without Country and Power Constraint elements\00", align 1
@NUM_TX_QUEUES = common dso_local global i64 0, align 8
@AIRTIME_MODE_STATIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_config_check(%struct.hostapd_config* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.hostapd_config* %0, %struct.hostapd_config** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %16 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %15, i32 0, i32 8
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %23 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* @MSG_ERROR, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %118

31:                                               ; preds = %21, %9, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %36 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %41 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @MSG_ERROR, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %118

47:                                               ; preds = %39, %34, %31
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %52 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %57 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @MSG_ERROR, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %118

63:                                               ; preds = %55, %50, %47
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %68 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %73 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @MSG_ERROR, align 4
  %78 = call i32 @wpa_printf(i32 %77, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %118

79:                                               ; preds = %71, %66, %63
  store i64 0, i64* %6, align 8
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @NUM_TX_QUEUES, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @hostapd_config_check_cw(%struct.hostapd_config* %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %118

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %80

94:                                               ; preds = %80
  store i64 0, i64* %6, align 8
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %98 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %103 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @hostapd_config_check_bss(i32 %107, %struct.hostapd_config* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store i32 -1, i32* %3, align 4
  br label %118

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %6, align 8
  br label %95

117:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %112, %89, %76, %60, %44, %28
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hostapd_config_check_cw(%struct.hostapd_config*, i64) #1

declare dso_local i64 @hostapd_config_check_bss(i32, %struct.hostapd_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
