; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_privsep_data = type { i32 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"recvfrom(priv_socket): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"privsep_driver: received %u bytes\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Too short event message (len=%d)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"privsep: Event %d received (len=%lu)\00", align 1
@EVENT_SCAN_RESULTS = common dso_local global i32 0, align 4
@EVENT_SCAN_STARTED = common dso_local global i32 0, align 4
@EVENT_ASSOC = common dso_local global i32 0, align 4
@EVENT_DISASSOC = common dso_local global i32 0, align 4
@EVENT_ASSOCINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @wpa_driver_privsep_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_privsep_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_driver_privsep_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_un, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.wpa_driver_privsep_data*
  store %struct.wpa_driver_privsep_data* %18, %struct.wpa_driver_privsep_data** %7, align 8
  store i32 4, i32* %15, align 4
  store i64 2000, i64* %16, align 8
  %19 = call i32* @os_malloc(i64 2000)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %140

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast %struct.sockaddr_un* %14 to %struct.sockaddr*
  %27 = call i32 @recvfrom(i32 %24, i32* %25, i64 2000, i32 0, %struct.sockaddr* %26, i32* %15)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @os_free(i32* %35)
  br label %140

37:                                               ; preds = %23
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %140

47:                                               ; preds = %37
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @os_memcpy(i32* %12, i32* %48, i32 4)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, 4
  store i64 %54, i64* %10, align 8
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %56, i64 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  switch i32 %60, label %137 [
    i32 129, label %61
    i32 128, label %67
    i32 138, label %73
    i32 135, label %81
    i32 137, label %87
    i32 132, label %95
    i32 133, label %102
    i32 131, label %109
    i32 134, label %116
    i32 130, label %123
    i32 136, label %130
  ]

61:                                               ; preds = %47
  %62 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %63 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EVENT_SCAN_RESULTS, align 4
  %66 = call i32 @wpa_supplicant_event(i32 %64, i32 %65, i32* null)
  br label %137

67:                                               ; preds = %47
  %68 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %69 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EVENT_SCAN_STARTED, align 4
  %72 = call i32 @wpa_supplicant_event(i32 %70, i32 %71, i32* null)
  br label %137

73:                                               ; preds = %47
  %74 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %75 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EVENT_ASSOC, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @wpa_driver_privsep_event_assoc(i32 %76, i32 %77, i32* %78, i64 %79)
  br label %137

81:                                               ; preds = %47
  %82 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %83 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EVENT_DISASSOC, align 4
  %86 = call i32 @wpa_supplicant_event(i32 %84, i32 %85, i32* null)
  br label %137

87:                                               ; preds = %47
  %88 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EVENT_ASSOCINFO, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @wpa_driver_privsep_event_assoc(i32 %90, i32 %91, i32* %92, i64 %93)
  br label %137

95:                                               ; preds = %47
  %96 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %97 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @wpa_driver_privsep_event_michael_mic_failure(i32 %98, i32* %99, i64 %100)
  br label %137

102:                                              ; preds = %47
  %103 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %104 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @wpa_driver_privsep_event_interface_status(i32 %105, i32* %106, i64 %107)
  br label %137

109:                                              ; preds = %47
  %110 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %111 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @wpa_driver_privsep_event_pmkid_candidate(i32 %112, i32* %113, i64 %114)
  br label %137

116:                                              ; preds = %47
  %117 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %118 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @wpa_driver_privsep_event_ft_response(i32 %119, i32* %120, i64 %121)
  br label %137

123:                                              ; preds = %47
  %124 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %125 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @wpa_driver_privsep_event_rx_eapol(i32 %126, i32* %127, i64 %128)
  br label %137

130:                                              ; preds = %47
  %131 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %7, align 8
  %132 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @wpa_driver_privsep_event_auth(i32 %133, i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %47, %130, %123, %116, %109, %102, %95, %87, %81, %73, %67, %61
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @os_free(i32* %138)
  br label %140

140:                                              ; preds = %137, %43, %30, %22
  ret void
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @recvfrom(i32, i32*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, i32*) #1

declare dso_local i32 @wpa_driver_privsep_event_assoc(i32, i32, i32*, i64) #1

declare dso_local i32 @wpa_driver_privsep_event_michael_mic_failure(i32, i32*, i64) #1

declare dso_local i32 @wpa_driver_privsep_event_interface_status(i32, i32*, i64) #1

declare dso_local i32 @wpa_driver_privsep_event_pmkid_candidate(i32, i32*, i64) #1

declare dso_local i32 @wpa_driver_privsep_event_ft_response(i32, i32*, i64) #1

declare dso_local i32 @wpa_driver_privsep_event_rx_eapol(i32, i32*, i64) #1

declare dso_local i32 @wpa_driver_privsep_event_auth(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
