; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"AD\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Mode[%s] Channels:\00", align 1
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i64)* @ctrl_iface_get_capability_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_channels(%struct.wpa_supplicant* %0, i8* %1, i64 %2) #0 {
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

19:                                               ; preds = %173, %3
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %176

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
  br label %173

41:                                               ; preds = %39, %38, %37, %36
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %42, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %49)
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
  br label %183

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

81:                                               ; preds = %140, %67
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
  br i1 %92, label %93, label %143

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
  br label %140

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
  %116 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %105, i32 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %9, align 4
  %126 = call i64 @os_snprintf_error(i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %104
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %4, align 4
  br label %183

135:                                              ; preds = %104
  %136 = load i32, i32* %9, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %135, %103
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %81

143:                                              ; preds = %81
  %144 = load i8*, i8** %12, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %144, i32 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 %151, i32* %9, align 4
  %152 = load i8*, i8** %13, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @os_snprintf_error(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %143
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %4, align 4
  br label %183

168:                                              ; preds = %143
  %169 = load i32, i32* %9, align 4
  %170 = load i8*, i8** %12, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %12, align 8
  br label %173

173:                                              ; preds = %168, %40
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %19

176:                                              ; preds = %19
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %176, %161, %128, %60
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
