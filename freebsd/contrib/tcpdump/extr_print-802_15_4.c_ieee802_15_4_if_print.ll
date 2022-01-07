; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_15_4.c_ieee802_15_4_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_15_4.c_ieee802_15_4_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.pcap_pkthdr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"[|802.15.4]\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"IEEE 802.15.4 %s packet \00", align 1
@ftypes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"seq %02x \00", align 1
@FC_PAN_ID_COMPRESSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"none \00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"reserved destination addressing mode\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%04x:%04x \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%04x:%s \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"reserved source addressing mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_15_4_if_print(%struct.TYPE_5__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %14 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %304

22:                                               ; preds = %3
  store i32 3, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @EXTRACT_LE_16BITS(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = call i32 @EXTRACT_LE_8BITS(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 3
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load i32*, i32** @ftypes, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @FC_FRAME_TYPE(i32 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_5__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %22
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  %50 = call i32 @ND_PRINT(%struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %45, %22
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @FC_DEST_ADDRESSING_MODE(i32 %52)
  switch i32 %53, label %167 [
    i32 130, label %54
    i32 129, label %72
    i32 128, label %82
    i32 131, label %124
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @FC_PAN_ID_COMPRESSION, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %304

63:                                               ; preds = %54
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([6 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %71

71:                                               ; preds = %68, %63
  br label %167

72:                                               ; preds = %51
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([37 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %304

82:                                               ; preds = %51
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %304

89:                                               ; preds = %82
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @EXTRACT_LE_16BITS(i32* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32* %93, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %304

104:                                              ; preds = %89
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @EXTRACT_LE_16BITS(i32* %112)
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_5__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_5__* %115)
  br label %117

117:                                              ; preds = %109, %104
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32* %119, i32** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 2
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %9, align 4
  br label %167

124:                                              ; preds = %51
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %4, align 4
  br label %304

131:                                              ; preds = %124
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @EXTRACT_LE_16BITS(i32* %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32* %135, i32** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sub nsw i32 %136, 2
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %140, 8
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %304

146:                                              ; preds = %131
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @le64addr_string(%struct.TYPE_5__* %154, i32* %155)
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to %struct.TYPE_5__*
  %159 = call i32 @ND_PRINT(%struct.TYPE_5__* %158)
  br label %160

160:                                              ; preds = %151, %146
  %161 = load i32*, i32** %7, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 8
  store i32* %162, i32** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %163, 8
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 8
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %51, %160, %117, %71
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.7 to %struct.TYPE_5__*))
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @FC_SRC_ADDRESSING_MODE(i32 %176)
  switch i32 %177, label %293 [
    i32 130, label %178
    i32 129, label %187
    i32 128, label %196
    i32 131, label %244
  ]

178:                                              ; preds = %175
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([6 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %186

186:                                              ; preds = %183, %178
  br label %293

187:                                              ; preds = %175
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %194 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([32 x i8]* @.str.8 to %struct.TYPE_5__*))
  br label %195

195:                                              ; preds = %192, %187
  store i32 0, i32* %4, align 4
  br label %304

196:                                              ; preds = %175
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @FC_PAN_ID_COMPRESSION, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %206 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %4, align 4
  br label %304

208:                                              ; preds = %201
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @EXTRACT_LE_16BITS(i32* %209)
  store i32 %210, i32* %12, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  store i32* %212, i32** %7, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sub nsw i32 %213, 2
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 2
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %208, %196
  %218 = load i32, i32* %8, align 4
  %219 = icmp slt i32 %218, 2
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %4, align 4
  br label %304

224:                                              ; preds = %217
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %224
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %231 = load i32, i32* %12, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @EXTRACT_LE_16BITS(i32* %232)
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to %struct.TYPE_5__*
  %236 = call i32 @ND_PRINT(%struct.TYPE_5__* %235)
  br label %237

237:                                              ; preds = %229, %224
  %238 = load i32*, i32** %7, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  store i32* %239, i32** %7, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sub nsw i32 %240, 2
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* %9, align 4
  br label %293

244:                                              ; preds = %175
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @FC_PAN_ID_COMPRESSION, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %265, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %8, align 4
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %254 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %255 = load i32, i32* %9, align 4
  store i32 %255, i32* %4, align 4
  br label %304

256:                                              ; preds = %249
  %257 = load i32*, i32** %7, align 8
  %258 = call i32 @EXTRACT_LE_16BITS(i32* %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  store i32* %260, i32** %7, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sub nsw i32 %261, 2
  store i32 %262, i32* %8, align 4
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, 2
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %256, %244
  %266 = load i32, i32* %8, align 4
  %267 = icmp slt i32 %266, 8
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %270 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([12 x i8]* @.str to %struct.TYPE_5__*))
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %4, align 4
  br label %304

272:                                              ; preds = %265
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %279 = load i32, i32* %12, align 4
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %281 = load i32*, i32** %7, align 8
  %282 = call i32 @le64addr_string(%struct.TYPE_5__* %280, i32* %281)
  %283 = sext i32 %282 to i64
  %284 = inttoptr i64 %283 to %struct.TYPE_5__*
  %285 = call i32 @ND_PRINT(%struct.TYPE_5__* %284)
  br label %286

286:                                              ; preds = %277, %272
  %287 = load i32*, i32** %7, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 8
  store i32* %288, i32** %7, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sub nsw i32 %289, 8
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, 8
  store i32 %292, i32* %9, align 4
  br label %293

293:                                              ; preds = %175, %286, %237, %186
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %293
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @ND_DEFAULTPRINT(i32* %299, i32 %300)
  br label %302

302:                                              ; preds = %298, %293
  %303 = load i32, i32* %9, align 4
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %302, %268, %252, %220, %204, %195, %142, %127, %100, %85, %80, %59, %18
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_LE_8BITS(i32*) #1

declare dso_local i64 @FC_FRAME_TYPE(i32) #1

declare dso_local i32 @FC_DEST_ADDRESSING_MODE(i32) #1

declare dso_local i32 @le64addr_string(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @FC_SRC_ADDRESSING_MODE(i32) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
