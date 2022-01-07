; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_signal_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_signal_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_signal_info = type { i32, i64, i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"RSSI=%d\0ALINKSPEED=%d\0ANOISE=%d\0AFREQUENCY=%u\0A\00", align 1
@CHAN_WIDTH_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"WIDTH=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CENTER_FRQ1=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CENTER_FRQ2=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"AVG_RSSI=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"AVG_BEACON_RSSI=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i64)* @wpa_supplicant_signal_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_signal_poll(%struct.wpa_supplicant* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpa_signal_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = call i32 @wpa_drv_signal_poll(%struct.wpa_supplicant* %12, %struct.wpa_signal_info* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %213

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 1000
  %35 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %22, i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34, i32 %36, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @os_snprintf_error(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %213

50:                                               ; preds = %17
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %10, align 8
  %55 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CHAN_WIDTH_UNKNOWN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %50
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @channel_width_to_string(i64 %68)
  %70 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %60, i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @os_snprintf_error(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %213

81:                                               ; preds = %59
  %82 = load i32, i32* %9, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %81, %50
  %87 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %91, i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @os_snprintf_error(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  store i32 -1, i32* %4, align 4
  br label %213

111:                                              ; preds = %90
  %112 = load i32, i32* %9, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %10, align 8
  br label %116

116:                                              ; preds = %111, %86
  %117 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %121, i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @os_snprintf_error(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %120
  store i32 -1, i32* %4, align 4
  br label %213

141:                                              ; preds = %120
  %142 = load i32, i32* %9, align 4
  %143 = load i8*, i8** %10, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %10, align 8
  br label %146

146:                                              ; preds = %141, %116
  %147 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %146
  %151 = load i8*, i8** %10, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %151, i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i8*, i8** %11, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* %9, align 4
  %168 = call i64 @os_snprintf_error(i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %213

171:                                              ; preds = %150
  %172 = load i32, i32* %9, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %10, align 8
  br label %176

176:                                              ; preds = %171, %146
  %177 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %176
  %181 = load i8*, i8** %10, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = getelementptr inbounds %struct.wpa_signal_info, %struct.wpa_signal_info* %8, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = call i32 (i8*, i32, i8*, i64, ...) @os_snprintf(i8* %181, i32 %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %189)
  store i32 %190, i32* %9, align 4
  %191 = load i8*, i8** %11, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = load i32, i32* %9, align 4
  %198 = call i64 @os_snprintf_error(i32 %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %180
  store i32 -1, i32* %4, align 4
  br label %213

201:                                              ; preds = %180
  %202 = load i32, i32* %9, align 4
  %203 = load i8*, i8** %10, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %10, align 8
  br label %206

206:                                              ; preds = %201, %176
  %207 = load i8*, i8** %10, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %206, %200, %170, %140, %110, %80, %49, %16
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @wpa_drv_signal_poll(%struct.wpa_supplicant*, %struct.wpa_signal_info*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @channel_width_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
