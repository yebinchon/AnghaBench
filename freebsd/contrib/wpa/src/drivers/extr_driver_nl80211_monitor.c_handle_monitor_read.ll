; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_handle_monitor_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_handle_monitor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.ieee80211_radiotap_iterator = type { i32, i32*, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nl80211: Monitor socket recv failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"nl80211: received invalid radiotap frame\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"nl80211: received invalid radiotap frame (%d)\00", align 1
@IEEE80211_RADIOTAP_F_FCS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @handle_monitor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_monitor_read(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3000 x i8], align 16
  %10 = alloca %struct.ieee80211_radiotap_iterator, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.wpa_driver_nl80211_data*
  store %struct.wpa_driver_nl80211_data* %18, %struct.wpa_driver_nl80211_data** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds [3000 x i8], [3000 x i8]* %9, i64 0, i64 0
  %21 = call i32 @recv(i32 %19, i8* %20, i32 3000, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %128

29:                                               ; preds = %3
  %30 = getelementptr inbounds [3000 x i8], [3000 x i8]* %9, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator* %10, i8* %30, i32 %31, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %128

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %85
  %39 = call i32 @ieee80211_radiotap_iterator_next(%struct.ieee80211_radiotap_iterator* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %86

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %128

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %85 [
    i32 131, label %55
    i32 129, label %66
    i32 128, label %67
    i32 133, label %74
    i32 134, label %75
    i32 130, label %76
    i32 132, label %81
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_RADIOTAP_F_FCS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %55
  br label %85

66:                                               ; preds = %52
  store i32 1, i32* %16, align 4
  br label %85

67:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  %68 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le_to_host16(i32 %70)
  %72 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_FAIL, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %15, align 4
  br label %85

74:                                               ; preds = %52
  br label %85

75:                                               ; preds = %52
  br label %85

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 5
  store i32 %80, i32* %12, align 4
  br label %85

81:                                               ; preds = %52
  %82 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %52, %81, %76, %75, %74, %67, %66, %65
  br label %38

86:                                               ; preds = %44
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %128

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %98 = getelementptr inbounds [3000 x i8], [3000 x i8]* %9, i64 0, i64 0
  %99 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %103, %105
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @handle_frame(%struct.wpa_driver_nl80211_data* %97, i8* %102, i32 %106, i32 %107, i32 %108)
  br label %128

110:                                              ; preds = %93
  %111 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  %112 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [3000 x i8], [3000 x i8]* %9, i64 0, i64 0
  %115 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i32, i32* %8, align 4
  %120 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %10, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %119, %121
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @handle_tx_callback(i32 %113, i8* %118, i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %24, %34, %48, %92, %110, %96
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator*, i8*, i32, i32*) #1

declare dso_local i32 @ieee80211_radiotap_iterator_next(%struct.ieee80211_radiotap_iterator*) #1

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @handle_frame(%struct.wpa_driver_nl80211_data*, i8*, i32, i32, i32) #1

declare dso_local i32 @handle_tx_callback(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
