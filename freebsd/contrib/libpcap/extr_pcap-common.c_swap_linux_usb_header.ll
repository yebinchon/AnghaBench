; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_swap_linux_usb_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_swap_linux_usb_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__, i8*, i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@URB_ISOCHRONOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcap_pkthdr*, i32*, i32)* @swap_linux_usb_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_linux_usb_header(%struct.pcap_pkthdr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pcap_pkthdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  store %struct.pcap_pkthdr* %0, %struct.pcap_pkthdr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add nsw i64 %13, 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %16 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %318

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 12
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @SWAPLL(i8* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 12
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, 4
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 2
  store i64 %31, i64* %8, align 8
  %32 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %33 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %318

38:                                               ; preds = %21
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SWAPSHORT(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %50 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %318

55:                                               ; preds = %38
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @SWAPLL(i8* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 4
  store i64 %63, i64* %8, align 8
  %64 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %65 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %318

70:                                               ; preds = %55
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @SWAPLONG(i64 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %8, align 8
  %80 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %81 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %318

86:                                               ; preds = %70
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @SWAPLONG(i64 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add nsw i64 %94, 4
  store i64 %95, i64* %8, align 8
  %96 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %97 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %318

102:                                              ; preds = %86
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @SWAPLONG(i64 %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %110, 4
  store i64 %111, i64* %8, align 8
  %112 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %113 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %318

118:                                              ; preds = %102
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @SWAPLONG(i64 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @URB_ISOCHRONOUS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %172

131:                                              ; preds = %118
  %132 = load i64, i64* %8, align 8
  %133 = add nsw i64 %132, 4
  store i64 %133, i64* %8, align 8
  %134 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %135 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %318

140:                                              ; preds = %131
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @SWAPLONG(i64 %145)
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 9
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i64 %147, i64* %151, align 8
  %152 = load i64, i64* %8, align 8
  %153 = add nsw i64 %152, 4
  store i64 %153, i64* %8, align 8
  %154 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %155 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %140
  br label %318

160:                                              ; preds = %140
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @SWAPLONG(i64 %165)
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  store i64 %167, i64* %171, align 8
  br label %175

172:                                              ; preds = %118
  %173 = load i64, i64* %8, align 8
  %174 = add nsw i64 %173, 8
  store i64 %174, i64* %8, align 8
  br label %175

175:                                              ; preds = %172, %160
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %318

178:                                              ; preds = %175
  %179 = load i64, i64* %8, align 8
  %180 = add nsw i64 %179, 4
  store i64 %180, i64* %8, align 8
  %181 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %182 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %318

187:                                              ; preds = %178
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @SWAPLONG(i64 %190)
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 5
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* %8, align 8
  %196 = add nsw i64 %195, 4
  store i64 %196, i64* %8, align 8
  %197 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %198 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %8, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  br label %318

203:                                              ; preds = %187
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @SWAPLONG(i64 %206)
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 6
  store i64 %208, i64* %210, align 8
  %211 = load i64, i64* %8, align 8
  %212 = add nsw i64 %211, 4
  store i64 %212, i64* %8, align 8
  %213 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %214 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %8, align 8
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %203
  br label %318

219:                                              ; preds = %203
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @SWAPLONG(i64 %222)
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 7
  store i64 %224, i64* %226, align 8
  %227 = load i64, i64* %8, align 8
  %228 = add nsw i64 %227, 4
  store i64 %228, i64* %8, align 8
  %229 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %230 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %8, align 8
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %219
  br label %318

235:                                              ; preds = %219
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = call i8* @SWAPLONG(i64 %238)
  %240 = ptrtoint i8* %239 to i64
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 8
  store i64 %240, i64* %242, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @URB_ISOCHRONOUS, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %317

248:                                              ; preds = %235
  %249 = load i32*, i32** %5, align 8
  %250 = load i64, i64* %8, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = bitcast i32* %251 to i8*
  %253 = bitcast i8* %252 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %253, %struct.TYPE_7__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %254

254:                                              ; preds = %313, %248
  %255 = load i64, i64* %10, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %260, label %316

260:                                              ; preds = %254
  %261 = load i64, i64* %8, align 8
  %262 = add nsw i64 %261, 4
  store i64 %262, i64* %8, align 8
  %263 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %264 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %8, align 8
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  br label %318

269:                                              ; preds = %260
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i8* @SWAPLONG(i64 %272)
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = load i64, i64* %8, align 8
  %278 = add nsw i64 %277, 4
  store i64 %278, i64* %8, align 8
  %279 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %280 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* %8, align 8
  %283 = icmp slt i64 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %269
  br label %318

285:                                              ; preds = %269
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = call i8* @SWAPLONG(i64 %288)
  %290 = ptrtoint i8* %289 to i64
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  store i64 %290, i64* %292, align 8
  %293 = load i64, i64* %8, align 8
  %294 = add nsw i64 %293, 4
  store i64 %294, i64* %8, align 8
  %295 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %4, align 8
  %296 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* %8, align 8
  %299 = icmp slt i64 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %285
  br label %318

301:                                              ; preds = %285
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = call i8* @SWAPLONG(i64 %304)
  %306 = ptrtoint i8* %305 to i64
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  store i64 %306, i64* %308, align 8
  %309 = load i64, i64* %8, align 8
  %310 = add nsw i64 %309, 4
  store i64 %310, i64* %8, align 8
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 1
  store %struct.TYPE_7__* %312, %struct.TYPE_7__** %9, align 8
  br label %313

313:                                              ; preds = %301
  %314 = load i64, i64* %10, align 8
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* %10, align 8
  br label %254

316:                                              ; preds = %254
  br label %317

317:                                              ; preds = %316, %235
  br label %318

318:                                              ; preds = %20, %37, %54, %69, %85, %101, %117, %139, %159, %186, %202, %218, %234, %268, %284, %300, %317, %175
  ret void
}

declare dso_local i8* @SWAPLL(i8*) #1

declare dso_local i32 @SWAPSHORT(i32) #1

declare dso_local i8* @SWAPLONG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
