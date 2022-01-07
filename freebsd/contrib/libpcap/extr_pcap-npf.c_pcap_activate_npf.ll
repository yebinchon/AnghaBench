; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_activate_npf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_activate_npf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, {}*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, %struct.TYPE_15__, i32*, i8*, i8**, %struct.pcap_win* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i64, i64, i64 }
%struct.pcap_win = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error opening adapter: %s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot determine the network type: %s\00", align 1
@DLT_EN10MB = common dso_local global i8* null, align 8
@DLT_DOCSIS = common dso_local global i8* null, align 8
@DLT_FDDI = common dso_local global i8* null, align 8
@DLT_IEEE802 = common dso_local global i8* null, align 8
@DLT_ARCNET = common dso_local global i8* null, align 8
@DLT_ATM_RFC1483 = common dso_local global i8* null, align 8
@DLT_CHDLC = common dso_local global i8* null, align 8
@DLT_PPP_SERIAL = common dso_local global i8* null, align 8
@DLT_NULL = common dso_local global i8* null, align 8
@DLT_IEEE802_11 = common dso_local global i8* null, align 8
@DLT_IEEE802_11_RADIO = common dso_local global i8* null, align 8
@DLT_PPI = common dso_local global i8* null, align 8
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@NDIS_PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to set hardware filter to promiscuous mode\00", align 1
@NDIS_PACKET_TYPE_ALL_LOCAL = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_MULTICAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"failed to set hardware filter to non-promiscuous mode\00", align 1
@WIN32_DEFAULT_USER_BUFFER_SIZE = common dso_local global i32 0, align 4
@INFO_FLAG_DAG_CARD = common dso_local global i32 0, align 4
@WIN32_DEFAULT_KERNEL_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"driver error: not enough memory to allocate the kernel buffer\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error calling PacketSetMinToCopy: %s\00", align 1
@NPF_DISABLE_LOOPBACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"Unable to disable the capture of loopback packets.\00", align 1
@pcap_read_npf = common dso_local global i32 0, align 4
@pcap_setfilter_npf = common dso_local global i32 0, align 4
@pcap_inject_npf = common dso_local global i32 0, align 4
@pcap_getnonblock_npf = common dso_local global i32 0, align 4
@pcap_setnonblock_npf = common dso_local global i32 0, align 4
@pcap_stats_npf = common dso_local global i32 0, align 4
@pcap_stats_ex_npf = common dso_local global i32 0, align 4
@pcap_setbuff_npf = common dso_local global i32 0, align 4
@pcap_setmode_npf = common dso_local global i32 0, align 4
@pcap_setmintocopy_npf = common dso_local global i32 0, align 4
@pcap_getevent_npf = common dso_local global i32 0, align 4
@pcap_oid_get_request_npf = common dso_local global i32 0, align 4
@pcap_oid_set_request_npf = common dso_local global i32 0, align 4
@pcap_sendqueue_transmit_npf = common dso_local global i32 0, align 4
@pcap_setuserbuffer_npf = common dso_local global i32 0, align 4
@pcap_live_dump_npf = common dso_local global i32 0, align 4
@pcap_live_dump_ended_npf = common dso_local global i32 0, align 4
@pcap_get_airpcap_handle_npf = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@pcap_read_win32_dag = common dso_local global i32 0, align 4
@pcap_setfilter_win32_dag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @pcap_activate_npf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_activate_npf(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.pcap_win*, align 8
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 30
  %12 = load %struct.pcap_win*, %struct.pcap_win** %11, align 8
  store %struct.pcap_win* %12, %struct.pcap_win** %4, align 8
  %13 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 26
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 26
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PacketGetMonitorMode(i32 %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %32 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %53

33:                                               ; preds = %23
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 26
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PacketSetMonitorMode(i32 %37, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %42 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @PCAP_ERROR_RFMON_NOTSUP, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %455

47:                                               ; preds = %40
  %48 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %455

49:                                               ; preds = %33
  %50 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %51 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %1
  %55 = call i32 (...) @pcap_wsockinit()
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 26
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_18__* @PacketOpenAdapter(i32 %59)
  %61 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %62 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %61, i32 0, i32 1
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %62, align 8
  %63 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %64 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %63, i32 0, i32 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = icmp eq %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %54
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 @pcap_win32_err_to_str(i32 %68, i8* %17)
  %70 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %71 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 26
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PacketSetMonitorMode(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 25
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  %88 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %455

89:                                               ; preds = %54
  %90 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %91 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = call i64 @PacketGetNetType(%struct.TYPE_18__* %92, %struct.TYPE_17__* %5)
  %94 = load i64, i64* @FALSE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 @pcap_win32_err_to_str(i32 %97, i8* %17)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 25
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %105 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %103, i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %451

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %183 [
    i32 128, label %109
    i32 140, label %113
    i32 133, label %139
    i32 139, label %143
    i32 137, label %147
    i32 138, label %151
    i32 136, label %155
    i32 134, label %159
    i32 131, label %163
    i32 132, label %167
    i32 135, label %171
    i32 129, label %175
    i32 130, label %179
  ]

109:                                              ; preds = %106
  %110 = load i8*, i8** @DLT_EN10MB, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 28
  store i8* %110, i8** %112, align 8
  br label %187

113:                                              ; preds = %106
  %114 = load i8*, i8** @DLT_EN10MB, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 28
  store i8* %114, i8** %116, align 8
  %117 = call i32* @malloc(i32 16)
  %118 = bitcast i32* %117 to i8**
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 29
  store i8** %118, i8*** %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 29
  %123 = load i8**, i8*** %122, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %113
  %126 = load i8*, i8** @DLT_EN10MB, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 29
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  store i8* %126, i8** %130, align 8
  %131 = load i8*, i8** @DLT_DOCSIS, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 29
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  store i8* %131, i8** %135, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i32 2, i32* %137, align 8
  br label %138

138:                                              ; preds = %125, %113
  br label %187

139:                                              ; preds = %106
  %140 = load i8*, i8** @DLT_FDDI, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 28
  store i8* %140, i8** %142, align 8
  br label %187

143:                                              ; preds = %106
  %144 = load i8*, i8** @DLT_IEEE802, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 28
  store i8* %144, i8** %146, align 8
  br label %187

147:                                              ; preds = %106
  %148 = load i8*, i8** @DLT_ARCNET, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 28
  store i8* %148, i8** %150, align 8
  br label %187

151:                                              ; preds = %106
  %152 = load i8*, i8** @DLT_ARCNET, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 28
  store i8* %152, i8** %154, align 8
  br label %187

155:                                              ; preds = %106
  %156 = load i8*, i8** @DLT_ATM_RFC1483, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 28
  store i8* %156, i8** %158, align 8
  br label %187

159:                                              ; preds = %106
  %160 = load i8*, i8** @DLT_CHDLC, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 28
  store i8* %160, i8** %162, align 8
  br label %187

163:                                              ; preds = %106
  %164 = load i8*, i8** @DLT_PPP_SERIAL, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 28
  store i8* %164, i8** %166, align 8
  br label %187

167:                                              ; preds = %106
  %168 = load i8*, i8** @DLT_NULL, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 28
  store i8* %168, i8** %170, align 8
  br label %187

171:                                              ; preds = %106
  %172 = load i8*, i8** @DLT_IEEE802_11, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 28
  store i8* %172, i8** %174, align 8
  br label %187

175:                                              ; preds = %106
  %176 = load i8*, i8** @DLT_IEEE802_11_RADIO, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 28
  store i8* %176, i8** %178, align 8
  br label %187

179:                                              ; preds = %106
  %180 = load i8*, i8** @DLT_PPI, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 28
  store i8* %180, i8** %182, align 8
  br label %187

183:                                              ; preds = %106
  %184 = load i8*, i8** @DLT_EN10MB, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 28
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %138, %109
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp sle i64 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192, %187
  %199 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %198, %192
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 26
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %202
  %209 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %210 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %209, i32 0, i32 1
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = load i32, i32* @NDIS_PACKET_TYPE_PROMISCUOUS, align 4
  %213 = call i64 @PacketSetHwFilter(%struct.TYPE_18__* %211, i32 %212)
  %214 = load i64, i64* @FALSE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %208
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 25
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %223 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %221, i32 %222, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %451

224:                                              ; preds = %208
  br label %248

225:                                              ; preds = %202
  %226 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %227 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %226, i32 0, i32 1
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %227, align 8
  %229 = load i32, i32* @NDIS_PACKET_TYPE_ALL_LOCAL, align 4
  %230 = load i32, i32* @NDIS_PACKET_TYPE_DIRECTED, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @NDIS_PACKET_TYPE_BROADCAST, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @NDIS_PACKET_TYPE_MULTICAST, align 4
  %235 = or i32 %233, %234
  %236 = call i64 @PacketSetHwFilter(%struct.TYPE_18__* %228, i32 %235)
  %237 = load i64, i64* @FALSE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %225
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 25
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %246 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %244, i32 %245, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %451

247:                                              ; preds = %225
  br label %248

248:                                              ; preds = %247, %224
  %249 = load i32, i32* @WIN32_DEFAULT_USER_BUFFER_SIZE, align 4
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 8
  %252 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %253 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %252, i32 0, i32 1
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @INFO_FLAG_DAG_CARD, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %351, label %260

260:                                              ; preds = %248
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 26
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load i64, i64* @WIN32_DEFAULT_KERNEL_BUFFER_SIZE, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 26
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  store i64 %267, i64* %270, align 8
  br label %271

271:                                              ; preds = %266, %260
  %272 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %273 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %272, i32 0, i32 1
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %273, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 26
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @PacketSetBuff(%struct.TYPE_18__* %274, i64 %278)
  %280 = load i64, i64* @FALSE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %290

282:                                              ; preds = %271
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 25
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %289 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %287, i32 %288, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %451

290:                                              ; preds = %271
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32* @malloc(i32 %293)
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 27
  store i32* %294, i32** %296, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 27
  %299 = load i32*, i32** %298, align 8
  %300 = icmp eq i32* %299, null
  br i1 %300, label %301, label %308

301:                                              ; preds = %290
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 25
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %306 = load i32, i32* @errno, align 4
  %307 = call i32 @pcap_fmt_errmsg_for_errno(i32 %304, i32 %305, i32 %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %451

308:                                              ; preds = %290
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 26
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %308
  %315 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %316 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %315, i32 0, i32 1
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %316, align 8
  %318 = call i64 @PacketSetMinToCopy(%struct.TYPE_18__* %317, i32 0)
  %319 = load i64, i64* @FALSE, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %314
  %322 = call i32 (...) @GetLastError()
  %323 = call i32 @pcap_win32_err_to_str(i32 %322, i8* %17)
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 25
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = inttoptr i64 %327 to i8*
  %329 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %330 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %328, i32 %329, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  br label %451

331:                                              ; preds = %314
  br label %350

332:                                              ; preds = %308
  %333 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %334 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %333, i32 0, i32 1
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %334, align 8
  %336 = call i64 @PacketSetMinToCopy(%struct.TYPE_18__* %335, i32 16000)
  %337 = load i64, i64* @FALSE, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %349

339:                                              ; preds = %332
  %340 = call i32 (...) @GetLastError()
  %341 = call i32 @pcap_win32_err_to_str(i32 %340, i8* %17)
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 25
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = inttoptr i64 %345 to i8*
  %347 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %348 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %346, i32 %347, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  br label %451

349:                                              ; preds = %332
  br label %350

350:                                              ; preds = %349, %331
  br label %352

351:                                              ; preds = %248
  br label %451

352:                                              ; preds = %350
  %353 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %354 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %353, i32 0, i32 1
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %354, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 26
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @PacketSetReadTimeout(%struct.TYPE_18__* %355, i32 %359)
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 26
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %382

366:                                              ; preds = %352
  %367 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %368 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %367, i32 0, i32 1
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %368, align 8
  %370 = load i32, i32* @NPF_DISABLE_LOOPBACK, align 4
  %371 = call i32 @PacketSetLoopbackBehavior(%struct.TYPE_18__* %369, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %381, label %373

373:                                              ; preds = %366
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 25
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = inttoptr i64 %377 to i8*
  %379 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %380 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %378, i32 %379, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %451

381:                                              ; preds = %366
  br label %382

382:                                              ; preds = %381, %352
  %383 = load i32, i32* @pcap_read_npf, align 4
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 24
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* @pcap_setfilter_npf, align 4
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 23
  store i32 %386, i32* %388, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 22
  store i32* null, i32** %390, align 8
  %391 = load i32, i32* @pcap_inject_npf, align 4
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 21
  store i32 %391, i32* %393, align 8
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 20
  store i32* null, i32** %395, align 8
  %396 = load i32, i32* @pcap_getnonblock_npf, align 4
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 19
  store i32 %396, i32* %398, align 8
  %399 = load i32, i32* @pcap_setnonblock_npf, align 4
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 18
  store i32 %399, i32* %401, align 4
  %402 = load i32, i32* @pcap_stats_npf, align 4
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 17
  store i32 %402, i32* %404, align 8
  %405 = load i32, i32* @pcap_stats_ex_npf, align 4
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 16
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* @pcap_setbuff_npf, align 4
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 15
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* @pcap_setmode_npf, align 4
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 14
  store i32 %411, i32* %413, align 4
  %414 = load i32, i32* @pcap_setmintocopy_npf, align 4
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 13
  store i32 %414, i32* %416, align 8
  %417 = load i32, i32* @pcap_getevent_npf, align 4
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 12
  store i32 %417, i32* %419, align 4
  %420 = load i32, i32* @pcap_oid_get_request_npf, align 4
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 11
  store i32 %420, i32* %422, align 8
  %423 = load i32, i32* @pcap_oid_set_request_npf, align 4
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 10
  store i32 %423, i32* %425, align 4
  %426 = load i32, i32* @pcap_sendqueue_transmit_npf, align 4
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 9
  store i32 %426, i32* %428, align 8
  %429 = load i32, i32* @pcap_setuserbuffer_npf, align 4
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 8
  store i32 %429, i32* %431, align 4
  %432 = load i32, i32* @pcap_live_dump_npf, align 4
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 7
  store i32 %432, i32* %434, align 8
  %435 = load i32, i32* @pcap_live_dump_ended_npf, align 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 6
  store i32 %435, i32* %437, align 4
  %438 = load i32, i32* @pcap_get_airpcap_handle_npf, align 4
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 5
  store i32 %438, i32* %440, align 8
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 4
  %443 = bitcast {}** %442 to i32 (%struct.TYPE_16__*)**
  store i32 (%struct.TYPE_16__*)* @pcap_cleanup_npf, i32 (%struct.TYPE_16__*)** %443, align 8
  %444 = load %struct.pcap_win*, %struct.pcap_win** %4, align 8
  %445 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %444, i32 0, i32 1
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 3
  store i32 %448, i32* %450, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %455

451:                                              ; preds = %373, %351, %339, %321, %301, %282, %239, %216, %96
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %453 = call i32 @pcap_cleanup_npf(%struct.TYPE_16__* %452)
  %454 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %454, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %455

455:                                              ; preds = %451, %382, %80, %47, %45
  %456 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %456)
  %457 = load i32, i32* %2, align 4
  ret i32 %457
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketGetMonitorMode(i32) #2

declare dso_local i32 @PacketSetMonitorMode(i32, i32) #2

declare dso_local i32 @pcap_wsockinit(...) #2

declare dso_local %struct.TYPE_18__* @PacketOpenAdapter(i32) #2

declare dso_local i32 @pcap_win32_err_to_str(i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @PacketGetNetType(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i64 @PacketSetHwFilter(%struct.TYPE_18__*, i32) #2

declare dso_local i64 @PacketSetBuff(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #2

declare dso_local i64 @PacketSetMinToCopy(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @PacketSetReadTimeout(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @PacketSetLoopbackBehavior(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @pcap_cleanup_npf(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
