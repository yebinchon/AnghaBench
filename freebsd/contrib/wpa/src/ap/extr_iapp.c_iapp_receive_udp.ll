; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_receive_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_receive_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iapp_data = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iapp_hdr = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"iapp_receive_udp - recvfrom: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IAPP = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Received %d byte IAPP frame from %s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" (too short)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"RX: version=%d command=%d id=%d len=%d\0A\00", align 1
@IAPP_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Dropping IAPP frame with unknown version %d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Underflow IAPP frame (hlen=%d len=%d)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Ignoring %d extra bytes from IAPP frame\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unknown IAPP command %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @iapp_receive_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iapp_receive_udp(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iapp_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.sockaddr_in, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iapp_hdr*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.iapp_data*
  store %struct.iapp_data* %15, %struct.iapp_data** %7, align 8
  store i32 8, i32* %12, align 4
  %16 = load %struct.iapp_data*, %struct.iapp_data** %7, align 8
  %17 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %20 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %21 = call i32 @recvfrom(i32 %18, i8* %19, i32 128, i32 0, %struct.sockaddr* %20, i32* %12)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %132

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iapp_data*, %struct.iapp_data** %7, align 8
  %34 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %132

39:                                               ; preds = %29
  %40 = load %struct.iapp_data*, %struct.iapp_data** %7, align 8
  %41 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HOSTAPD_MODULE_IAPP, align 4
  %44 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @inet_ntoa(i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 16
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i32, i32*, i32, i32, i8*, i32, i32, ...) @hostapd_logger(i32 %42, i32* null, i32 %43, i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %49, i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  br label %132

58:                                               ; preds = %39
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %60 = bitcast i8* %59 to %struct.iapp_hdr*
  store %struct.iapp_hdr* %60, %struct.iapp_hdr** %13, align 8
  %61 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %62 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be_to_host16(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.iapp_data*, %struct.iapp_data** %7, align 8
  %66 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HOSTAPD_MODULE_IAPP, align 4
  %69 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %70 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %71 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %74 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %77 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be_to_host16(i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32, i32*, i32, i32, i8*, i32, i32, ...) @hostapd_logger(i32 %67, i32* null, i32 %68, i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %75, i32 %79, i32 %80)
  %82 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %83 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IAPP_VERSION, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %58
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %90 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %132

93:                                               ; preds = %58
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* @MSG_INFO, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %100)
  br label %132

102:                                              ; preds = %93
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* @MSG_INFO, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %106, %102
  %114 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %115 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %126 [
    i32 129, label %117
    i32 128, label %125
  ]

117:                                              ; preds = %113
  %118 = load %struct.iapp_data*, %struct.iapp_data** %7, align 8
  %119 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 %121, 16
  %123 = trunc i64 %122 to i32
  %124 = call i32 @iapp_process_add_notify(%struct.iapp_data* %118, %struct.sockaddr_in* %11, %struct.iapp_hdr* %119, i32 %123)
  br label %132

125:                                              ; preds = %113
  br label %132

126:                                              ; preds = %113
  %127 = load i32, i32* @MSG_INFO, align 4
  %128 = load %struct.iapp_hdr*, %struct.iapp_hdr** %13, align 8
  %129 = getelementptr inbounds %struct.iapp_hdr, %struct.iapp_hdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %24, %38, %57, %87, %97, %126, %125, %117
  ret void
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @inet_ntoa(i64) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @iapp_process_add_notify(%struct.iapp_data*, %struct.sockaddr_in*, %struct.iapp_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
