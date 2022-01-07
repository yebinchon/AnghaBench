; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_get_start_chan_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_get_start_chan_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_4__*, %struct.hostapd_hw_modes* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"DFS only VHT20/40/80/160/80+80 is supported now\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"DFS chan_idx seems wrong; num-ch: %d ch-no: %d conf-ch-no: %d 11n: %d sec-ch: %d vht-oper-width: %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Available channel: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32*)* @dfs_get_start_chan_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_get_start_chan_idx(%struct.hostapd_iface* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca %struct.hostapd_channel_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 -1, i32* %17, align 4
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %19 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %24, %2
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %43 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %41, %34
  %49 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %50 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__* %51)
  switch i32 %52, label %77 [
    i32 128, label %53
    i32 130, label %54
    i32 131, label %60
    i32 129, label %66
  ]

53:                                               ; preds = %48
  br label %80

54:                                               ; preds = %48
  %55 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %56 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.TYPE_4__* %57)
  %59 = sub nsw i32 %58, 6
  store i32 %59, i32* %7, align 4
  br label %80

60:                                               ; preds = %48
  %61 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %62 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.TYPE_4__* %63)
  %65 = sub nsw i32 %64, 14
  store i32 %65, i32* %7, align 4
  br label %80

66:                                               ; preds = %48
  %67 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %68 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.TYPE_4__* %69)
  %71 = sub nsw i32 %70, 6
  store i32 %71, i32* %7, align 4
  %72 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %73 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @hostapd_get_oper_centr_freq_seg1_idx(%struct.TYPE_4__* %74)
  %76 = sub nsw i32 %75, 6
  store i32 %76, i32* %10, align 4
  br label %80

77:                                               ; preds = %48
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %66, %60, %54, %53
  br label %81

81:                                               ; preds = %80, %41
  %82 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %83 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %82, i32 0, i32 1
  %84 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %83, align 8
  store %struct.hostapd_hw_modes* %84, %struct.hostapd_hw_modes** %5, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %106, %81
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %88 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %93 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %92, i32 0, i32 1
  %94 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %94, i64 %96
  store %struct.hostapd_channel_data* %97, %struct.hostapd_channel_data** %6, align 8
  %98 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %99 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %8, align 4
  br label %109

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %85

109:                                              ; preds = %103, %85
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %149

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %149

115:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  %116 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %117 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %116, i32 0, i32 1
  %118 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %117, align 8
  store %struct.hostapd_hw_modes* %118, %struct.hostapd_hw_modes** %5, align 8
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %141, %115
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %122 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %127 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %126, i32 0, i32 1
  %128 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %128, i64 %130
  store %struct.hostapd_channel_data* %131, %struct.hostapd_channel_data** %6, align 8
  %132 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %133 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %125
  %138 = load i32, i32* %9, align 4
  %139 = load i32*, i32** %4, align 8
  store i32 %138, i32* %139, align 4
  store i32 1, i32* %11, align 4
  br label %144

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %119

144:                                              ; preds = %137, %119
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  store i32 -1, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %144
  br label %149

149:                                              ; preds = %148, %112, %109
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %199

152:                                              ; preds = %149
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %155 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %159 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %164 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %169 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %174 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = call i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__* %175)
  %177 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %157, i32 %162, i32 %167, i32 %172, i32 %176)
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %195, %152
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %181 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %178
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %187 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %186, i32 0, i32 1
  %188 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %188, i64 %190
  %192 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %184
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %178

198:                                              ; preds = %178
  br label %199

199:                                              ; preds = %198, %149
  %200 = load i32, i32* %8, align 4
  ret i32 %200
}

declare dso_local i32 @hostapd_get_oper_chwidth(%struct.TYPE_4__*) #1

declare dso_local i32 @hostapd_get_oper_centr_freq_seg0_idx(%struct.TYPE_4__*) #1

declare dso_local i32 @hostapd_get_oper_centr_freq_seg1_idx(%struct.TYPE_4__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
