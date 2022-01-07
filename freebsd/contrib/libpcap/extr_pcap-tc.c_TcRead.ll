; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 (i32, i32**)*, i64 (i32*, %struct.TYPE_27__*, %struct.TYPE_26__**)*, i32 (i64)*, i32 (i32*)* }
%struct.TYPE_27__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_21__, i32, i64, %struct.pcap_tc* }
%struct.TYPE_21__ = type { i64 }
%struct.pcap_tc = type { %struct.TYPE_26__*, i32, i32*, i32 }
%struct.pcap_pkthdr = type { i64, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i8* }

@g_TcFunctions = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@TC_SUCCESS = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"read error, TcInstanceReceivePackets failure: %s (%08x)\00", align 1
@TRUE = common dso_local global i64 0, align 8
@TC_ERROR_END_OF_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"read error, TcPacketsBufferQueryNextPacket failure: %s (%08x)\00", align 1
@DLT_EN10MB = common dso_local global i64 0, align 8
@TC_PH_FLAGS_CHECKSUM = common dso_local global i32 0, align 4
@PPI_FLD_802_3_EXT_FLAG_FCS_PRESENT = common dso_local global i64 0, align 8
@MAX_TC_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32, i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)*, i32*)* @TcRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TcRead(%struct.TYPE_25__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_tc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcap_pkthdr, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)* %2, i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 4
  %21 = load %struct.pcap_tc*, %struct.pcap_tc** %20, align 8
  store %struct.pcap_tc* %21, %struct.pcap_tc** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  store i32 -2, i32* %5, align 4
  br label %256

29:                                               ; preds = %4
  %30 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %31 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i64 (i32, i32**)*, i64 (i32, i32**)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_TcFunctions, i32 0, i32 0), align 8
  %36 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %37 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %40 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %39, i32 0, i32 2
  %41 = call i64 %35(i32 %38, i32** %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @TC_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %50 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_TcFunctions, i32 0, i32 2), align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 %50(i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @pcap_snprintf(i32 %48, i32 %49, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %53)
  store i32 -1, i32* %5, align 4
  br label %256

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %253, %129, %56
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %254

60:                                               ; preds = %57
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  store i32 -2, i32* %5, align 4
  br label %256

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %256

73:                                               ; preds = %60
  %74 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %75 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %254

79:                                               ; preds = %73
  %80 = load i64 (i32*, %struct.TYPE_27__*, %struct.TYPE_26__**)*, i64 (i32*, %struct.TYPE_27__*, %struct.TYPE_26__**)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_TcFunctions, i32 0, i32 1), align 8
  %81 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %82 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 %80(i32* %83, %struct.TYPE_27__* %14, %struct.TYPE_26__** %15)
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @TC_ERROR_END_OF_BUFFER, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_TcFunctions, i32 0, i32 3), align 8
  %90 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %91 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 %89(i32* %92)
  %94 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %95 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  br label %254

96:                                               ; preds = %79
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @TC_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %105 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_TcFunctions, i32 0, i32 2), align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 %105(i64 %106)
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @pcap_snprintf(i32 %103, i32 %104, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %107, i64 %108)
  store i32 -1, i32* %5, align 4
  br label %256

110:                                              ; preds = %96
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %110
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @bpf_filter(i64 %120, %struct.TYPE_26__* %121, i64 %123, i64 %125)
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %16, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %57

130:                                              ; preds = %116
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %16, align 8
  br label %138

138:                                              ; preds = %135, %130
  br label %142

139:                                              ; preds = %110
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %16, align 8
  br label %142

142:                                              ; preds = %139, %138
  %143 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %144 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sdiv i32 %148, 1000000000
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = srem i32 %155, 1000000000
  %157 = sdiv i32 %156, 1000
  %158 = sext i32 %157 to i64
  %159 = inttoptr i64 %158 to i8*
  %160 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @DLT_EN10MB, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %142
  %168 = load i64, i64* %16, align 8
  %169 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 1
  store i64 %168, i64* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  store i64 %171, i64* %172, align 8
  %173 = load i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)*, i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)** %8, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %176 = call i32 %173(i32* %174, %struct.pcap_pkthdr* %13, %struct.TYPE_26__* %175)
  br label %243

177:                                              ; preds = %142
  %178 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %179 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %179, align 8
  store %struct.TYPE_26__* %180, %struct.TYPE_26__** %17, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i64 1
  store %struct.TYPE_26__* %182, %struct.TYPE_26__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @TC_PH_FLAGS_RX_PORT_ID(i32 %184)
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  store i32 %190, i32* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @TC_PH_FLAGS_CHECKSUM, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %177
  %200 = load i64, i64* @PPI_FLD_802_3_EXT_FLAG_FCS_PRESENT, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  br label %208

204:                                              ; preds = %177
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  store i64 0, i64* %207, align 8
  br label %208

208:                                              ; preds = %204, %199
  %209 = load i64, i64* %16, align 8
  %210 = load i64, i64* @MAX_TC_PACKET_SIZE, align 8
  %211 = icmp sle i64 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %215 = load i64, i64* %16, align 8
  %216 = call i32 @memcpy(%struct.TYPE_26__* %213, %struct.TYPE_26__* %214, i64 %215)
  %217 = load i64, i64* %16, align 8
  %218 = add i64 4, %217
  %219 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 1
  store i64 %218, i64* %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = add i64 4, %221
  %223 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  br label %236

224:                                              ; preds = %208
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %227 = load i64, i64* @MAX_TC_PACKET_SIZE, align 8
  %228 = call i32 @memcpy(%struct.TYPE_26__* %225, %struct.TYPE_26__* %226, i64 %227)
  %229 = load i64, i64* @MAX_TC_PACKET_SIZE, align 8
  %230 = add i64 4, %229
  %231 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 1
  store i64 %230, i64* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = add i64 4, %233
  %235 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  store i64 %234, i64* %235, align 8
  br label %236

236:                                              ; preds = %224, %212
  %237 = load i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)*, i32 (i32*, %struct.pcap_pkthdr*, %struct.TYPE_26__*)** %8, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = load %struct.pcap_tc*, %struct.pcap_tc** %10, align 8
  %240 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %239, i32 0, i32 0
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %240, align 8
  %242 = call i32 %237(i32* %238, %struct.pcap_pkthdr* %13, %struct.TYPE_26__* %241)
  br label %243

243:                                              ; preds = %236, %167
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp sge i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* %7, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* %12, align 4
  store i32 %252, i32* %5, align 4
  br label %256

253:                                              ; preds = %248, %243
  br label %57

254:                                              ; preds = %88, %78, %57
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %254, %251, %100, %71, %68, %45, %26
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32, i64) #1

declare dso_local i64 @bpf_filter(i64, %struct.TYPE_26__*, i64, i64) #1

declare dso_local i32 @TC_PH_FLAGS_RX_PORT_ID(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_26__*, %struct.TYPE_26__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
