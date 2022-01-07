; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcActivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcActivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (i32, i32*)*, i64 (i32, i32, i32)*, i32 (i64)* }
%struct.TYPE_14__ = type { i64, i32, i32, {}*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_13__, i32, i8**, i8*, %struct.pcap_tc* }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.pcap_tc = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i8* }

@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@MAX_TC_PACKET_SIZE = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@DLT_EN10MB = common dso_local global i8* null, align 8
@PPI_FIELD_TYPE_AGGREGATION_EXTENSION = common dso_local global i32 0, align 4
@PPI_FIELD_TYPE_802_3_EXTENSION = common dso_local global i32 0, align 4
@g_TcFunctions = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@TC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Error opening TurboCap adapter: %s\00", align 1
@DLT_PPI = common dso_local global i8* null, align 8
@TC_INST_FT_RX_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Error enabling reception on a TurboCap instance: %s\00", align 1
@TC_INST_FT_TX_STATUS = common dso_local global i32 0, align 4
@TcInject = common dso_local global i32 0, align 4
@TC_INST_FT_READ_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Error setting the read timeout a TurboCap instance: %s\00", align 1
@TcRead = common dso_local global i32 0, align 4
@TcSetFilter = common dso_local global i32 0, align 4
@TcSetDatalink = common dso_local global i32 0, align 4
@TcGetNonBlock = common dso_local global i32 0, align 4
@TcSetNonBlock = common dso_local global i32 0, align 4
@TcStats = common dso_local global i32 0, align 4
@TcGetAirPcapHandle = common dso_local global i32 0, align 4
@TcGetReceiveWaitHandle = common dso_local global i32 0, align 4
@TcLiveDump = common dso_local global i32 0, align 4
@TcLiveDumpEnded = common dso_local global i32 0, align 4
@TcOidGetRequest = common dso_local global i32 0, align 4
@TcOidSetRequest = common dso_local global i32 0, align 4
@TcSendqueueTransmit = common dso_local global i32 0, align 4
@TcSetBuff = common dso_local global i32 0, align 4
@TcSetMinToCopy = common dso_local global i32 0, align 4
@TcSetMode = common dso_local global i32 0, align 4
@TcSetUserBuffer = common dso_local global i32 0, align 4
@TcStatsEx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @TcActivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TcActivate(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.pcap_tc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 28
  %10 = load %struct.pcap_tc*, %struct.pcap_tc** %9, align 8
  store %struct.pcap_tc* %10, %struct.pcap_tc** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 24
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PCAP_ERROR_RFMON_NOTSUP, align 4
  store i32 %17, i32* %2, align 4
  br label %228

18:                                               ; preds = %1
  %19 = load i32, i32* @MAX_TC_PACKET_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32* @malloc(i32 %22)
  %24 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %25 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %27 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 23
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %36, i32* %2, align 4
  br label %228

37:                                               ; preds = %18
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %37
  %49 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %54 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %7, align 8
  %57 = load i8*, i8** @DLT_EN10MB, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 4, i32* %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 4, i32* %72, align 8
  %73 = load i32, i32* @PPI_FIELD_TYPE_AGGREGATION_EXTENSION, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 4, i32* %79, align 8
  %80 = load i32, i32* @PPI_FIELD_TYPE_802_3_EXTENSION, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 0), align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 24
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %90 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %89, i32 0, i32 0
  %91 = call i64 %84(i32 %88, i32* %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @TC_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %52
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 23
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %100 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 2), align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 %100(i64 %101)
  %103 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %98, i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %104, i32* %2, align 4
  br label %228

105:                                              ; preds = %52
  %106 = load i8*, i8** @DLT_EN10MB, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 27
  store i8* %106, i8** %108, align 8
  %109 = call i32* @malloc(i32 16)
  %110 = bitcast i32* %109 to i8**
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 26
  store i8** %110, i8*** %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 26
  %115 = load i8**, i8*** %114, align 8
  %116 = icmp ne i8** %115, null
  br i1 %116, label %117, label %130

117:                                              ; preds = %105
  %118 = load i8*, i8** @DLT_EN10MB, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 26
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  store i8* %118, i8** %122, align 8
  %123 = load i8*, i8** @DLT_PPI, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 26
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  store i8* %123, i8** %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  store i32 2, i32* %129, align 8
  br label %130

130:                                              ; preds = %117, %105
  %131 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 1), align 8
  %132 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %133 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TC_INST_FT_RX_STATUS, align 4
  %136 = call i64 %131(i32 %134, i32 %135, i32 1)
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @TC_SUCCESS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %130
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 23
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %145 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 2), align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i32 %145(i64 %146)
  %148 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %143, i32 %144, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %224

149:                                              ; preds = %130
  %150 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 1), align 8
  %151 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %152 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TC_INST_FT_TX_STATUS, align 4
  %155 = call i64 %150(i32 %153, i32 %154, i32 1)
  store i64 %155, i64* %5, align 8
  %156 = load i32, i32* @TcInject, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 25
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 24
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  store i32 -1, i32* %6, align 4
  br label %178

165:                                              ; preds = %149
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 24
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  store i32 10, i32* %6, align 4
  br label %177

172:                                              ; preds = %165
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 24
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %172, %171
  br label %178

178:                                              ; preds = %177, %164
  %179 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 1), align 8
  %180 = load %struct.pcap_tc*, %struct.pcap_tc** %4, align 8
  %181 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @TC_INST_FT_READ_TIMEOUT, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i64 %179(i32 %182, i32 %183, i32 %184)
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @TC_SUCCESS, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %178
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 23
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %194 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_TcFunctions, i32 0, i32 2), align 8
  %195 = load i64, i64* %5, align 8
  %196 = call i32 %194(i64 %195)
  %197 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %192, i32 %193, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  br label %224

198:                                              ; preds = %178
  %199 = load i32, i32* @TcRead, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 22
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @TcSetFilter, align 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 21
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 20
  store i32* null, i32** %206, align 8
  %207 = load i32, i32* @TcSetDatalink, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 19
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @TcGetNonBlock, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 18
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* @TcSetNonBlock, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 17
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @TcStats, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 16
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  store i32 -1, i32* %220, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 3
  %223 = bitcast {}** %222 to i32 (%struct.TYPE_14__*)**
  store i32 (%struct.TYPE_14__*)* @TcCleanup, i32 (%struct.TYPE_14__*)** %223, align 8
  store i32 0, i32* %2, align 4
  br label %228

224:                                              ; preds = %189, %140
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = call i32 @TcCleanup(%struct.TYPE_14__* %225)
  %227 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %224, %198, %95, %30, %16
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @TcCleanup(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
