; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"AD\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Mode[%s] Channels:\0A\00", align 1
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c" %d = %d MHz%s%s\0A\00", align 1
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" (NO_IR)\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" (DFS)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i64)* @ctrl_iface_get_capability_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_freq(%struct.wpa_supplicant* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostapd_channel_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %201, %3
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %204

26:                                               ; preds = %19
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %40 [
    i32 129, label %36
    i32 128, label %37
    i32 131, label %38
    i32 130, label %39
  ]

36:                                               ; preds = %26
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %41

37:                                               ; preds = %26
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %41

38:                                               ; preds = %26
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %41

39:                                               ; preds = %26
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %41

40:                                               ; preds = %26
  br label %201

41:                                               ; preds = %39, %38, %37, %36
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %42, i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @os_snprintf_error(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %41
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %211

67:                                               ; preds = %41
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %12, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %79, align 8
  store %struct.hostapd_channel_data* %80, %struct.hostapd_channel_data** %8, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %168, %67
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %82, %91
  br i1 %92, label %93, label %171

93:                                               ; preds = %81
  %94 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %94, i64 %96
  %98 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %168

104:                                              ; preds = %93
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %112, i64 %114
  %116 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %118, i64 %120
  %122 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %124, i64 %126
  %128 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %135 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %135, i64 %137
  %139 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %146 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %105, i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %123, i8* %134, i8* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* %9, align 4
  %154 = call i64 @os_snprintf_error(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %104
  %157 = load i8*, i8** %12, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %211

163:                                              ; preds = %104
  %164 = load i32, i32* %9, align 4
  %165 = load i8*, i8** %12, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %12, align 8
  br label %168

168:                                              ; preds = %163, %103
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %81

171:                                              ; preds = %81
  %172 = load i8*, i8** %12, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %172, i32 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 %179, i32* %9, align 4
  %180 = load i8*, i8** %13, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* %9, align 4
  %187 = call i64 @os_snprintf_error(i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %171
  %190 = load i8*, i8** %12, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = ptrtoint i8* %190 to i64
  %193 = ptrtoint i8* %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %4, align 4
  br label %211

196:                                              ; preds = %171
  %197 = load i32, i32* %9, align 4
  %198 = load i8*, i8** %12, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %12, align 8
  br label %201

201:                                              ; preds = %196, %40
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %19

204:                                              ; preds = %19
  %205 = load i8*, i8** %12, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %204, %189, %156, %60
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
