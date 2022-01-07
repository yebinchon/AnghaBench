; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_wmm_calc_regulatory_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_wmm_calc_regulatory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.hostapd_wmm_ac_params*, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i64, i32, i64 }
%struct.TYPE_3__ = type { %struct.hostapd_wmm_ac_params* }
%struct.hostapd_wmm_ac_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.hostapd_wmm_ac_params*)* @wmm_calc_regulatory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmm_calc_regulatory_limit(%struct.hostapd_data* %0, %struct.hostapd_wmm_ac_params* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.hostapd_wmm_ac_params*, align 8
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.hostapd_wmm_ac_params* %1, %struct.hostapd_wmm_ac_params** %4, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %11, align 8
  store %struct.hostapd_hw_modes* %12, %struct.hostapd_hw_modes** %5, align 8
  %13 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %17, align 8
  %19 = call i32 @os_memcpy(%struct.hostapd_wmm_ac_params* %13, %struct.hostapd_wmm_ac_params* %18, i32 8)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %65, %2
  %21 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %22 = icmp ne %struct.hostapd_hw_modes* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %26 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %68

31:                                               ; preds = %29
  %32 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %33 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %32, i32 0, i32 1
  %34 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %34, i64 %36
  store %struct.hostapd_channel_data* %37, %struct.hostapd_channel_data** %7, align 8
  %38 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %39 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %65

48:                                               ; preds = %31
  %49 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %50 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %55 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %57, align 8
  %59 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %60 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %61 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @wmm_set_regulatory_limit(%struct.hostapd_wmm_ac_params* %58, %struct.hostapd_wmm_ac_params* %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %48
  br label %68

65:                                               ; preds = %47
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %20

68:                                               ; preds = %64, %29
  %69 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %71 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %73, align 8
  %75 = call i64 @os_memcmp(%struct.hostapd_wmm_ac_params* %69, %struct.hostapd_wmm_ac_params* %74, i32 8)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %68
  %78 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %79 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %81, align 8
  %83 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %84 = call i32 @os_memcpy(%struct.hostapd_wmm_ac_params* %82, %struct.hostapd_wmm_ac_params* %83, i32 8)
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %86 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %77, %68
  ret void
}

declare dso_local i32 @os_memcpy(%struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params*, i32) #1

declare dso_local i32 @wmm_set_regulatory_limit(%struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params*, i32) #1

declare dso_local i64 @os_memcmp(%struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
