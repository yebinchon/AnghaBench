; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-monitor-linux.c_bt_monitor_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-monitor-linux.c_bt_monitor_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_hci = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@BT_CONTROL_SIZE = common dso_local global i64 0, align 8
@DLT_BLUETOOTH_LINUX_MONITOR = common dso_local global i32 0, align 4
@bt_monitor_read = common dso_local global i32 0, align 4
@bt_monitor_inject = common dso_local global i32 0, align 4
@install_bpf_program = common dso_local global i32 0, align 4
@bt_monitor_setdirection = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@pcap_setnonblock_fd = common dso_local global i32 0, align 4
@bt_monitor_stats = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@BTPROTO_HCI = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't create raw socket\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't allocate dump buffer\00", align 1
@HCI_DEV_NONE = common dso_local global i32 0, align 4
@HCI_CHANNEL_MONITOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't attach to interface\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TIMESTAMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Can't enable time stamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @bt_monitor_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_monitor_activate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.sockaddr_hci, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 15
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @PCAP_ERROR_RFMON_NOTSUP, align 4
  store i32 %14, i32* %2, align 4
  br label %146

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %15
  %27 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i64, i64* @BT_CONTROL_SIZE, align 8
  %32 = add i64 %31, 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @DLT_BLUETOOTH_LINUX_MONITOR, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 14
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @bt_monitor_read, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @bt_monitor_inject, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @install_bpf_program, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @bt_monitor_setdirection, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 9
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @pcap_getnonblock_fd, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @pcap_setnonblock_fd, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @bt_monitor_stats, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @AF_BLUETOOTH, align 4
  %66 = load i32, i32* @SOCK_RAW, align 4
  %67 = load i32, i32* @BTPROTO_HCI, align 4
  %68 = call i64 @socket(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %30
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @pcap_fmt_errmsg_for_errno(i32 %78, i32 %79, i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %82, i32* %2, align 4
  br label %146

83:                                               ; preds = %30
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @malloc(i64 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @pcap_fmt_errmsg_for_errno(i32 %97, i32 %98, i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %142

101:                                              ; preds = %83
  %102 = load i32, i32* @AF_BLUETOOTH, align 4
  %103 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %4, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @HCI_DEV_NONE, align 4
  %105 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %4, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @HCI_CHANNEL_MONITOR, align 4
  %107 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %4, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = bitcast %struct.sockaddr_hci* %4 to %struct.sockaddr*
  %112 = call i64 @bind(i64 %110, %struct.sockaddr* %111, i32 12)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 @pcap_fmt_errmsg_for_errno(i32 %117, i32 %118, i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %142

121:                                              ; preds = %101
  store i32 1, i32* %6, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @SOL_SOCKET, align 4
  %126 = load i32, i32* @SO_TIMESTAMP, align 4
  %127 = call i64 @setsockopt(i64 %124, i32 %125, i32 %126, i32* %6, i32 4)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %134 = load i32, i32* @errno, align 4
  %135 = call i32 @pcap_fmt_errmsg_for_errno(i32 %132, i32 %133, i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %142

136:                                              ; preds = %121
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  store i32 0, i32* %2, align 4
  br label %146

142:                                              ; preds = %129, %114, %94
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = call i32 @pcap_cleanup_live_common(%struct.TYPE_6__* %143)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %136, %75, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i32 @malloc(i64) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
