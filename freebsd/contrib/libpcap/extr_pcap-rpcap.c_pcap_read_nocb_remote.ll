; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_read_nocb_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_read_nocb_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, %struct.TYPE_6__, %struct.pcap_rpcap* }
%struct.TYPE_6__ = type { i32 }
%struct.pcap_rpcap = type { i32, i32, i32, i32, i64 }
%struct.pcap_pkthdr = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rpcap_header = type { i32, i64 }
%struct.rpcap_pkthdr = type { i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"select(): \00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@PCAP_OPENFLAG_DATATX_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"UDP packet message is shorter than an rpcap header\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"UDP packet message is shorter than its rpcap header claims\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Server sent us a message larger than the largest expected packet message\00", align 1
@RPCAP_MSG_PACKET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [73 x i8] c"Packet's captured data goes past the end of the received packet message.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.pcap_pkthdr*, i32**)* @pcap_read_nocb_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_nocb_remote(%struct.TYPE_8__* %0, %struct.pcap_pkthdr* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.pcap_rpcap*, align 8
  %9 = alloca %struct.rpcap_header*, align 8
  %10 = alloca %struct.rpcap_pkthdr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timeval, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32** %2, i32*** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %21 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %20, align 8
  store %struct.pcap_rpcap* %21, %struct.pcap_rpcap** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 1000
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = sub nsw i32 %31, %34
  %36 = mul nsw i32 %35, 1000
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = call i32 @FD_ZERO(i32* %16)
  %39 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %40 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @FD_SET(i64 %41, i32* %16)
  %43 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %44 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 %46, 1
  %48 = call i32 @select(i32 %47, i32* %16, i32* null, i32* null, %struct.timeval* %15)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %62

51:                                               ; preds = %3
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EINTR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %303

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %61 = call i32 @sock_geterror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  store i32 -1, i32* %4, align 4
  br label %303

62:                                               ; preds = %3
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %303

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.rpcap_header*
  store %struct.rpcap_header* %70, %struct.rpcap_header** %9, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 16
  %76 = bitcast i8* %75 to %struct.rpcap_pkthdr*
  store %struct.rpcap_pkthdr* %76, %struct.rpcap_pkthdr** %10, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  %82 = getelementptr inbounds i32, i32* %81, i64 20
  store i32* %82, i32** %11, align 8
  %83 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %84 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PCAP_OPENFLAG_DATATX_UDP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %139

89:                                               ; preds = %66
  %90 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %91 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %103 = call i32 @sock_recv_dgram(i64 %92, i64 %95, i32 %98, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %303

107:                                              ; preds = %89
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, -3
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %303

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %113, 16
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %120 = call i32 @pcap_snprintf(i32 %118, i32 %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %303

121:                                              ; preds = %111
  %122 = load %struct.rpcap_header*, %struct.rpcap_header** %9, align 8
  %123 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ntohl(i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 16, %129
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %121
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %137 = call i32 @pcap_snprintf(i32 %135, i32 %136, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %303

138:                                              ; preds = %121
  br label %202

139:                                              ; preds = %66
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %142, 16
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %146 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = call i32 @rpcap_read_packet_msg(i64 %147, %struct.TYPE_8__* %148, i32 16)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 -1, i32* %4, align 4
  br label %303

153:                                              ; preds = %144
  %154 = load i32, i32* %17, align 4
  %155 = icmp eq i32 %154, -3
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %303

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157, %139
  %159 = load %struct.rpcap_header*, %struct.rpcap_header** %9, align 8
  %160 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ntohl(i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = sub i64 %168, 16
  %170 = icmp ugt i64 %164, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %158
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %176 = call i32 @pcap_snprintf(i32 %174, i32 %175, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %303

177:                                              ; preds = %158
  %178 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %179 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 16, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @rpcap_read_packet_msg(i64 %180, %struct.TYPE_8__* %181, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  store i32 -1, i32* %4, align 4
  br label %303

190:                                              ; preds = %177
  %191 = load i32, i32* %17, align 4
  %192 = icmp eq i32 %191, -3
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i32 0, i32* %4, align 4
  br label %303

194:                                              ; preds = %190
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %194, %138
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.rpcap_header*, %struct.rpcap_header** %9, align 8
  %205 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %207 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %210 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.rpcap_header*, %struct.rpcap_header** %9, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @rpcap_check_msg_ver(i64 %208, i32 %211, %struct.rpcap_header* %212, i32 %215)
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %219

218:                                              ; preds = %202
  store i32 0, i32* %4, align 4
  br label %303

219:                                              ; preds = %202
  %220 = load %struct.rpcap_header*, %struct.rpcap_header** %9, align 8
  %221 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @RPCAP_MSG_PACKET, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %303

226:                                              ; preds = %219
  %227 = load %struct.rpcap_pkthdr*, %struct.rpcap_pkthdr** %10, align 8
  %228 = getelementptr inbounds %struct.rpcap_pkthdr, %struct.rpcap_pkthdr* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ntohl(i32 %229)
  %231 = load i32, i32* %12, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %226
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %238 = call i32 @pcap_snprintf(i32 %236, i32 %237, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %303

239:                                              ; preds = %226
  %240 = load %struct.rpcap_pkthdr*, %struct.rpcap_pkthdr** %10, align 8
  %241 = getelementptr inbounds %struct.rpcap_pkthdr, %struct.rpcap_pkthdr* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ntohl(i32 %242)
  %244 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %245 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load %struct.rpcap_pkthdr*, %struct.rpcap_pkthdr** %10, align 8
  %247 = getelementptr inbounds %struct.rpcap_pkthdr, %struct.rpcap_pkthdr* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ntohl(i32 %248)
  %250 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %251 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.rpcap_pkthdr*, %struct.rpcap_pkthdr** %10, align 8
  %253 = getelementptr inbounds %struct.rpcap_pkthdr, %struct.rpcap_pkthdr* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ntohl(i32 %254)
  %256 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %257 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  store i32 %255, i32* %258, align 4
  %259 = load %struct.rpcap_pkthdr*, %struct.rpcap_pkthdr** %10, align 8
  %260 = getelementptr inbounds %struct.rpcap_pkthdr, %struct.rpcap_pkthdr* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @ntohl(i32 %261)
  %263 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %264 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 4
  %266 = load i32*, i32** %11, align 8
  %267 = load i32**, i32*** %7, align 8
  store i32* %266, i32** %267, align 8
  %268 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %269 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %269, align 4
  %272 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %273 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @PCAP_OPENFLAG_DATATX_UDP, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %302

278:                                              ; preds = %239
  %279 = load %struct.rpcap_pkthdr*, %struct.rpcap_pkthdr** %10, align 8
  %280 = getelementptr inbounds %struct.rpcap_pkthdr, %struct.rpcap_pkthdr* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @ntohl(i32 %281)
  store i32 %282, i32* %18, align 4
  %283 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %284 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %18, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %301

288:                                              ; preds = %278
  %289 = load i32, i32* %18, align 4
  %290 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %291 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = sub i32 %289, %292
  %294 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %295 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = add i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* %18, align 4
  %299 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %300 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %288, %278
  br label %302

302:                                              ; preds = %301, %239
  store i32 1, i32* %4, align 4
  br label %303

303:                                              ; preds = %302, %233, %225, %218, %193, %189, %171, %156, %152, %132, %115, %110, %106, %65, %56, %55
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @sock_geterror(i8*, i32, i32) #1

declare dso_local i32 @sock_recv_dgram(i64, i64, i32, i32, i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @rpcap_read_packet_msg(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @rpcap_check_msg_ver(i64, i32, %struct.rpcap_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
