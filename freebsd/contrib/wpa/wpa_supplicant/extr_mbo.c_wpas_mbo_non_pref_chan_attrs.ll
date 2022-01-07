; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_mbo_non_pref_channel* }
%struct.wpa_mbo_non_pref_channel = type { i64, i64, i64 }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpabuf*, i32)* @wpas_mbo_non_pref_chan_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_mbo_non_pref_chan_attrs(%struct.wpa_supplicant* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_mbo_non_pref_channel*, align 8
  %10 = alloca %struct.wpa_mbo_non_pref_channel*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 1
  %13 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %12, align 8
  %14 = icmp ne %struct.wpa_mbo_non_pref_channel* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %25 = call i32 @wpas_mbo_non_pref_chan_subelem_hdr(%struct.wpabuf* %24, i32 4)
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %28 = call i32 @wpas_mbo_non_pref_chan_attr_hdr(%struct.wpabuf* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %23
  br label %106

30:                                               ; preds = %15
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 1
  %33 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %32, align 8
  %34 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %33, i64 0
  store %struct.wpa_mbo_non_pref_channel* %34, %struct.wpa_mbo_non_pref_channel** %9, align 8
  store i64 1, i64* %7, align 8
  br label %35

35:                                               ; preds = %103, %30
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ule i64 %36, %39
  br i1 %40, label %41, label %106

41:                                               ; preds = %35
  store %struct.wpa_mbo_non_pref_channel* null, %struct.wpa_mbo_non_pref_channel** %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 1
  %50 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %50, i64 %51
  store %struct.wpa_mbo_non_pref_channel* %52, %struct.wpa_mbo_non_pref_channel** %10, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %10, align 8
  %55 = icmp ne %struct.wpa_mbo_non_pref_channel* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %10, align 8
  %58 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %9, align 8
  %61 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %56
  %65 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %10, align 8
  %66 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %9, align 8
  %69 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %10, align 8
  %74 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %9, align 8
  %77 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %72, %64, %56, %53
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @wpas_mbo_non_pref_chan_subelement(%struct.wpa_supplicant* %84, %struct.wpabuf* %85, i64 %86, i64 %87)
  br label %95

89:                                               ; preds = %80
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %91 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @wpas_mbo_non_pref_chan_attr(%struct.wpa_supplicant* %90, %struct.wpabuf* %91, i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %10, align 8
  %97 = icmp ne %struct.wpa_mbo_non_pref_channel* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %106

99:                                               ; preds = %95
  %100 = load i64, i64* %7, align 8
  store i64 %100, i64* %8, align 8
  %101 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %10, align 8
  store %struct.wpa_mbo_non_pref_channel* %101, %struct.wpa_mbo_non_pref_channel** %9, align 8
  br label %102

102:                                              ; preds = %99, %72
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %7, align 8
  br label %35

106:                                              ; preds = %29, %98, %35
  ret void
}

declare dso_local i32 @wpas_mbo_non_pref_chan_subelem_hdr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_attr_hdr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_subelement(%struct.wpa_supplicant*, %struct.wpabuf*, i64, i64) #1

declare dso_local i32 @wpas_mbo_non_pref_chan_attr(%struct.wpa_supplicant*, %struct.wpabuf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
