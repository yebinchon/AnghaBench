; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_netfilter_read_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_netfilter_read_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_5__, i32, i64, i64, i32, i32, %struct.pcap_netfilter* }
%struct.TYPE_5__ = type { i32* }
%struct.pcap_netfilter = type { i32, i32 }
%struct.pcap_pkthdr = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nfgenmsg = type { i32 }
%struct.nfattr = type opaque
%struct.nfqnl_msg_packet_hdr = type { i32 }

@PCAP_ERROR_BREAK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can't receive packet\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@OTHER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Message truncated: (got: %d) (nlmsg_len: %u)\00", align 1
@NFNL_SUBSYS_ULOG = common dso_local global i64 0, align 8
@NFULNL_MSG_PACKET = common dso_local global i64 0, align 8
@NFLOG = common dso_local global i64 0, align 8
@NFNL_SUBSYS_QUEUE = common dso_local global i64 0, align 8
@NFQNL_MSG_PACKET = common dso_local global i64 0, align 8
@NFQUEUE = common dso_local global i64 0, align 8
@DLT_NFLOG = common dso_local global i64 0, align 8
@HDR_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Malformed message: (nlmsg_len: %u)\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32 (i8*, %struct.pcap_pkthdr*, i8*)*, i8*)* @netfilter_read_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfilter_read_linux(%struct.TYPE_6__* %0, i32 %1, i32 (i8*, %struct.pcap_pkthdr*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, %struct.pcap_pkthdr*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pcap_netfilter*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.pcap_pkthdr, align 4
  %20 = alloca %struct.nfgenmsg*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.nfattr*, align 8
  %23 = alloca %struct.nfattr*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.nfqnl_msg_packet_hdr*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, %struct.pcap_pkthdr*, i8*)* %2, i32 (i8*, %struct.pcap_pkthdr*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 9
  %28 = load %struct.pcap_netfilter*, %struct.pcap_netfilter** %27, align 8
  store %struct.pcap_netfilter* %28, %struct.pcap_netfilter** %10, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %36, i32* %5, align 4
  br label %424

37:                                               ; preds = %4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %104

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %86, %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @recv(i32 %47, i64 %50, i32 %53, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %62, i32* %5, align 4
  br label %424

63:                                               ; preds = %44
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @ENOBUFS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.pcap_netfilter*, %struct.pcap_netfilter** %10, align 8
  %69 = getelementptr inbounds %struct.pcap_netfilter, %struct.pcap_netfilter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @EINTR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @ENOBUFS, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ true, %76 ], [ %83, %80 ]
  br label %86

86:                                               ; preds = %84, %73
  %87 = phi i1 [ false, %73 ], [ %85, %84 ]
  br i1 %87, label %44, label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %96 = load i64, i64* @errno, align 8
  %97 = call i32 @pcap_fmt_errmsg_for_errno(i32 %94, i32 %95, i64 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %98, i32* %5, align 4
  br label %424

99:                                               ; preds = %88
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %11, align 8
  br label %108

104:                                              ; preds = %37
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %11, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8* %112, i8** %12, align 8
  br label %113

113:                                              ; preds = %419, %108
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = icmp ult i8* %114, %115
  br i1 %116, label %117, label %420

117:                                              ; preds = %113
  %118 = load i8*, i8** %11, align 8
  %119 = bitcast i8* %118 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %119, %struct.nlmsghdr** %15, align 8
  %120 = load i64, i64* @OTHER, align 8
  store i64 %120, i64* %17, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %117
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %125
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %142, i32* %5, align 4
  br label %424

143:                                              ; preds = %125
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %5, align 4
  br label %424

145:                                              ; preds = %117
  %146 = load i8*, i8** %12, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = call i32 @NLMSG_SPACE(i32 0)
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %420

155:                                              ; preds = %145
  %156 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %157 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %159, 8
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %164 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %161, %155
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %174 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i32, i8*, i32, ...) @pcap_snprintf(i32 %170, i32 %171, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %175)
  store i32 -1, i32* %5, align 4
  br label %424

177:                                              ; preds = %161
  %178 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %179 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @NFNL_SUBSYS_ID(i32 %180)
  %182 = load i64, i64* @NFNL_SUBSYS_ULOG, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %177
  %185 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %186 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @NFNL_MSG_TYPE(i32 %187)
  %189 = load i64, i64* @NFULNL_MSG_PACKET, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i64, i64* @NFLOG, align 8
  store i64 %192, i64* %17, align 8
  br label %210

193:                                              ; preds = %184, %177
  %194 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %195 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @NFNL_SUBSYS_ID(i32 %196)
  %198 = load i64, i64* @NFNL_SUBSYS_QUEUE, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %193
  %201 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %202 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @NFNL_MSG_TYPE(i32 %203)
  %205 = load i64, i64* @NFQNL_MSG_PACKET, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load i64, i64* @NFQUEUE, align 8
  store i64 %208, i64* %17, align 8
  br label %209

209:                                              ; preds = %207, %200, %193
  br label %210

210:                                              ; preds = %209, %191
  %211 = load i64, i64* %17, align 8
  %212 = load i64, i64* @OTHER, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %366

214:                                              ; preds = %210
  store i8* null, i8** %18, align 8
  store %struct.nfgenmsg* null, %struct.nfgenmsg** %20, align 8
  store i32 0, i32* %21, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @DLT_NFLOG, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %303

220:                                              ; preds = %214
  store %struct.nfattr* null, %struct.nfattr** %22, align 8
  %221 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %222 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @HDR_LENGTH, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %231 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %232 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32, i32, i8*, i32, ...) @pcap_snprintf(i32 %229, i32 %230, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %233)
  store i32 -1, i32* %5, align 4
  br label %424

235:                                              ; preds = %220
  %236 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %237 = call i8* @NLMSG_DATA(%struct.nlmsghdr* %236)
  %238 = bitcast i8* %237 to %struct.nfgenmsg*
  store %struct.nfgenmsg* %238, %struct.nfgenmsg** %20, align 8
  %239 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %240 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @HDR_LENGTH, align 4
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %244, label %292

244:                                              ; preds = %235
  %245 = load %struct.nfgenmsg*, %struct.nfgenmsg** %20, align 8
  %246 = call %struct.nfattr* @NFM_NFA(%struct.nfgenmsg* %245)
  store %struct.nfattr* %246, %struct.nfattr** %23, align 8
  %247 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %248 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @HDR_LENGTH, align 4
  %251 = call i32 @NLMSG_ALIGN(i32 %250)
  %252 = sub nsw i32 %249, %251
  store i32 %252, i32* %24, align 4
  br label %253

253:                                              ; preds = %287, %244
  %254 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  %255 = load i32, i32* %24, align 4
  %256 = call i64 @NFA_OK(%struct.nfattr* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %291

258:                                              ; preds = %253
  %259 = load i64, i64* %17, align 8
  %260 = load i64, i64* @NFQUEUE, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %276

262:                                              ; preds = %258
  %263 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  %264 = call i32 @NFA_TYPE(%struct.nfattr* %263)
  switch i32 %264, label %275 [
    i32 130, label %265
    i32 129, label %273
  ]

265:                                              ; preds = %262
  %266 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  %267 = call i8* @NFA_DATA(%struct.nfattr* %266)
  %268 = bitcast i8* %267 to %struct.nfqnl_msg_packet_hdr*
  store %struct.nfqnl_msg_packet_hdr* %268, %struct.nfqnl_msg_packet_hdr** %25, align 8
  %269 = load %struct.nfqnl_msg_packet_hdr*, %struct.nfqnl_msg_packet_hdr** %25, align 8
  %270 = getelementptr inbounds %struct.nfqnl_msg_packet_hdr, %struct.nfqnl_msg_packet_hdr* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ntohl(i32 %271)
  store i32 %272, i32* %21, align 4
  br label %275

273:                                              ; preds = %262
  %274 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  store %struct.nfattr* %274, %struct.nfattr** %22, align 8
  br label %275

275:                                              ; preds = %262, %273, %265
  br label %287

276:                                              ; preds = %258
  %277 = load i64, i64* %17, align 8
  %278 = load i64, i64* @NFLOG, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  %282 = call i32 @NFA_TYPE(%struct.nfattr* %281)
  switch i32 %282, label %285 [
    i32 128, label %283
  ]

283:                                              ; preds = %280
  %284 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  store %struct.nfattr* %284, %struct.nfattr** %22, align 8
  br label %285

285:                                              ; preds = %280, %283
  br label %286

286:                                              ; preds = %285, %276
  br label %287

287:                                              ; preds = %286, %275
  %288 = load %struct.nfattr*, %struct.nfattr** %23, align 8
  %289 = load i32, i32* %24, align 4
  %290 = call %struct.nfattr* @NFA_NEXT(%struct.nfattr* %288, i32 %289)
  store %struct.nfattr* %290, %struct.nfattr** %23, align 8
  br label %253

291:                                              ; preds = %253
  br label %292

292:                                              ; preds = %291, %235
  %293 = load %struct.nfattr*, %struct.nfattr** %22, align 8
  %294 = icmp ne %struct.nfattr* %293, null
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = load %struct.nfattr*, %struct.nfattr** %22, align 8
  %297 = call i8* @NFA_DATA(%struct.nfattr* %296)
  store i8* %297, i8** %18, align 8
  %298 = load %struct.nfattr*, %struct.nfattr** %22, align 8
  %299 = call i32 @NFA_PAYLOAD(%struct.nfattr* %298)
  %300 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 0
  store i32 %299, i32* %300, align 4
  %301 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 1
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %295, %292
  br label %313

303:                                              ; preds = %214
  %304 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %305 = call i8* @NLMSG_DATA(%struct.nlmsghdr* %304)
  store i8* %305, i8** %18, align 8
  %306 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %307 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @NLMSG_ALIGN(i32 8)
  %310 = sub nsw i32 %308, %309
  %311 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 1
  store i32 %310, i32* %311, align 4
  %312 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 0
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %303, %302
  %314 = load i8*, i8** %18, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %348

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 2
  %318 = call i32 @gettimeofday(i32* %317, i32* null)
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = icmp eq i32* %322, null
  br i1 %323, label %336, label %324

324:                                              ; preds = %316
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i8*, i8** %18, align 8
  %330 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i64 @bpf_filter(i32* %328, i8* %329, i32 %331, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %324, %316
  %337 = load %struct.pcap_netfilter*, %struct.pcap_netfilter** %10, align 8
  %338 = getelementptr inbounds %struct.pcap_netfilter, %struct.pcap_netfilter* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 4
  %341 = load i32 (i8*, %struct.pcap_pkthdr*, i8*)*, i32 (i8*, %struct.pcap_pkthdr*, i8*)** %8, align 8
  %342 = load i8*, i8** %9, align 8
  %343 = load i8*, i8** %18, align 8
  %344 = call i32 %341(i8* %342, %struct.pcap_pkthdr* %19, i8* %343)
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %347

347:                                              ; preds = %336, %324
  br label %348

348:                                              ; preds = %347, %313
  %349 = load i64, i64* %17, align 8
  %350 = load i64, i64* @NFQUEUE, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %365

352:                                              ; preds = %348
  %353 = load %struct.nfgenmsg*, %struct.nfgenmsg** %20, align 8
  %354 = icmp ne %struct.nfgenmsg* %353, null
  br i1 %354, label %355, label %364

355:                                              ; preds = %352
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %357 = load %struct.nfgenmsg*, %struct.nfgenmsg** %20, align 8
  %358 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @ntohs(i32 %359)
  %361 = load i32, i32* %21, align 4
  %362 = load i32, i32* @NF_ACCEPT, align 4
  %363 = call i32 @nfqueue_send_verdict(%struct.TYPE_6__* %356, i32 %360, i32 %361, i32 %362)
  br label %364

364:                                              ; preds = %355, %352
  br label %365

365:                                              ; preds = %364, %348
  br label %366

366:                                              ; preds = %365, %210
  %367 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %368 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @NLMSG_ALIGN(i32 %369)
  store i32 %370, i32* %16, align 4
  %371 = load i32, i32* %16, align 4
  %372 = sext i32 %371 to i64
  %373 = load i8*, i8** %12, align 8
  %374 = load i8*, i8** %11, align 8
  %375 = ptrtoint i8* %373 to i64
  %376 = ptrtoint i8* %374 to i64
  %377 = sub i64 %375, %376
  %378 = icmp sgt i64 %372, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %366
  %380 = load i8*, i8** %12, align 8
  %381 = load i8*, i8** %11, align 8
  %382 = ptrtoint i8* %380 to i64
  %383 = ptrtoint i8* %381 to i64
  %384 = sub i64 %382, %383
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %16, align 4
  br label %386

386:                                              ; preds = %379, %366
  %387 = load i32, i32* %16, align 4
  %388 = load i8*, i8** %11, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  store i8* %390, i8** %11, align 8
  %391 = load i32, i32* %13, align 4
  %392 = load i32, i32* %7, align 4
  %393 = icmp sge i32 %391, %392
  br i1 %393, label %394, label %419

394:                                              ; preds = %386
  %395 = load i32, i32* %7, align 4
  %396 = call i32 @PACKET_COUNT_IS_UNLIMITED(i32 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %419, label %398

398:                                              ; preds = %394
  %399 = load i8*, i8** %11, align 8
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  store i8* %399, i8** %401, align 8
  %402 = load i8*, i8** %12, align 8
  %403 = load i8*, i8** %11, align 8
  %404 = ptrtoint i8* %402 to i64
  %405 = ptrtoint i8* %403 to i64
  %406 = sub i64 %404, %405
  %407 = trunc i64 %406 to i32
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  store i32 %407, i32* %409, align 8
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %398
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  store i32 0, i32* %416, align 8
  br label %417

417:                                              ; preds = %414, %398
  %418 = load i32, i32* %13, align 4
  store i32 %418, i32* %5, align 4
  br label %424

419:                                              ; preds = %394, %386
  br label %113

420:                                              ; preds = %154, %113
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 0
  store i32 0, i32* %422, align 8
  %423 = load i32, i32* %13, align 4
  store i32 %423, i32* %5, align 4
  br label %424

424:                                              ; preds = %420, %417, %226, %167, %143, %139, %91, %59, %33
  %425 = load i32, i32* %5, align 4
  ret i32 %425
}

declare dso_local i32 @recv(i32, i64, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

declare dso_local i32 @NLMSG_SPACE(i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i64 @NFNL_SUBSYS_ID(i32) #1

declare dso_local i64 @NFNL_MSG_TYPE(i32) #1

declare dso_local i8* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.nfattr* @NFM_NFA(%struct.nfgenmsg*) #1

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @NFA_OK(%struct.nfattr*, i32) #1

declare dso_local i32 @NFA_TYPE(%struct.nfattr*) #1

declare dso_local i8* @NFA_DATA(%struct.nfattr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.nfattr* @NFA_NEXT(%struct.nfattr*, i32) #1

declare dso_local i32 @NFA_PAYLOAD(%struct.nfattr*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i64 @bpf_filter(i32*, i8*, i32, i32) #1

declare dso_local i32 @nfqueue_send_verdict(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @PACKET_COUNT_IS_UNLIMITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
