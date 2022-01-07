; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_dump_chan_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_dump_chan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" %d%s%s%s\00", align 1
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"[DISABLED]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"[NO_IR]\00", align 1
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"[RADAR]\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"nl80211: Mode IEEE %s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_hw_modes*, i32)* @nl80211_dump_chan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_dump_chan_list(%struct.hostapd_hw_modes* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_hw_modes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca [200 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %3, align 8
  %14 = icmp ne %struct.hostapd_hw_modes* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %107

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %104, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %107

21:                                               ; preds = %17
  %22 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %22, i64 %24
  store %struct.hostapd_hw_modes* %25, %struct.hostapd_hw_modes** %6, align 8
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 200
  store i8* %28, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %92, %21
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %32 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %29
  %36 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %37 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %36, i32 0, i32 2
  %38 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %38, i64 %40
  store %struct.hostapd_channel_data* %41, %struct.hostapd_channel_data** %12, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %50 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %53 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %61 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %69 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @os_snprintf(i8* %42, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %59, i8* %67, i8* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @os_snprintf_error(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %35
  br label %95

87:                                               ; preds = %35
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %29

95:                                               ; preds = %86, %29
  %96 = load i8*, i8** %8, align 8
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %99 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @modestr(i32 %100)
  %102 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %103 = call i32 @wpa_printf(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %101, i8* %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %17

107:                                              ; preds = %15, %17
  ret void
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @modestr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
