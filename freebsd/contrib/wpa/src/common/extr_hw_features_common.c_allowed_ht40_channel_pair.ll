; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_allowed_ht40_channel_pair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_allowed_ht40_channel_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i64 }
%struct.hostapd_channel_data = type { i32, i32 }

@__const.allowed_ht40_channel_pair.allowed = private unnamed_addr constant [15 x i32] [i32 36, i32 44, i32 52, i32 60, i32 100, i32 108, i32 116, i32 124, i32 132, i32 140, i32 149, i32 157, i32 165, i32 184, i32 192], align 16
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Channel %d is not allowed as primary\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"HT40: control channel: %d  secondary channel: %d\00", align 1
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_40P = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_40M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"HT40 secondary channel %d not allowed\00", align 1
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"HT40 channel pair (%d, %d) not allowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allowed_ht40_channel_pair(%struct.hostapd_hw_modes* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [15 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.hostapd_channel_data*, align 8
  %13 = alloca %struct.hostapd_channel_data*, align 8
  %14 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = bitcast [15 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([15 x i32]* @__const.allowed_ht40_channel_pair.allowed to i8*), i64 60, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.hostapd_channel_data* @hw_get_channel_chan(%struct.hostapd_hw_modes* %20, i32 %21, i32* null)
  store %struct.hostapd_channel_data* %22, %struct.hostapd_channel_data** %12, align 8
  %23 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %24 = icmp ne %struct.hostapd_channel_data* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %126

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %35 = call i64 @chan_pri_allowed(%struct.hostapd_channel_data* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %126

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_ERROR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %4, align 4
  br label %126

42:                                               ; preds = %30
  %43 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.hostapd_channel_data* @hw_get_channel_chan(%struct.hostapd_hw_modes* %43, i32 %44, i32* null)
  store %struct.hostapd_channel_data* %45, %struct.hostapd_channel_data** %13, align 8
  %46 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %13, align 8
  %47 = icmp ne %struct.hostapd_channel_data* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %126

49:                                               ; preds = %42
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %13, align 8
  %55 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %65 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40P, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %70
  %74 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %75 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40M, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73, %63, %49
  %81 = load i32, i32* @MSG_ERROR, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 0, i32* %4, align 4
  br label %126

84:                                               ; preds = %73, %70
  %85 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %86 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %126

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %11, align 8
  br label %101

101:                                              ; preds = %114, %99
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %104 = call i64 @ARRAY_SIZE(i32* %103)
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  br label %117

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %101

117:                                              ; preds = %112, %101
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @MSG_ERROR, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123)
  store i32 0, i32* %4, align 4
  br label %126

125:                                              ; preds = %117
  store i32 1, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %120, %90, %80, %48, %38, %37, %25
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.hostapd_channel_data* @hw_get_channel_chan(%struct.hostapd_hw_modes*, i32, i32*) #2

declare dso_local i64 @chan_pri_allowed(%struct.hostapd_channel_data*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
