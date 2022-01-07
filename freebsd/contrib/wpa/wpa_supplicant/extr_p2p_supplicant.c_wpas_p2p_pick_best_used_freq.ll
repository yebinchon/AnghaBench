; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_pick_best_used_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_pick_best_used_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_used_freq_data = type { i32, i32 }

@WPA_FREQ_USED_BY_INFRA_STATION = common dso_local global i32 0, align 4
@WPA_FREQ_USED_BY_P2P_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32)* @wpas_p2p_pick_best_used_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_pick_best_used_freq(%struct.wpa_supplicant* %0, %struct.wpa_used_freq_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_used_freq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_used_freq_data* %1, %struct.wpa_used_freq_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %20, i64 %22
  %24 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @p2p_supported_freq(i32 %19, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %33

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %10

33:                                               ; preds = %28, %10
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %95

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %85, %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @p2p_supported_freq(i32 %50, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %85

60:                                               ; preds = %45
  %61 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %61, i64 %63
  %65 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WPA_FREQ_USED_BY_INFRA_STATION, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %9, align 4
  br label %88

72:                                               ; preds = %60
  %73 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %73, i64 %75
  %77 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WPA_FREQ_USED_BY_P2P_CLIENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %72
  br label %85

85:                                               ; preds = %84, %59
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %41

88:                                               ; preds = %70, %41
  %89 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %89, i64 %91
  %93 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %37
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @p2p_supported_freq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
