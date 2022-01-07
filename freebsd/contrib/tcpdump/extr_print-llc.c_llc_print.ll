; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-llc.c_llc_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-llc.c_llc_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.lladdr_info = type { i32, i32 (%struct.TYPE_14__*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"[|llc]\00", align 1
@LLC_U_FMT = common dso_local global i32 0, align 4
@LLCSAP_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"IPX 802.3: \00", align 1
@LLC_IG = common dso_local global i32 0, align 4
@LLC_GSAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"LLC, dsap %s (0x%02x) %s, ssap %s (0x%02x) %s\00", align 1
@llc_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llc_ig_flag_values = common dso_local global i32 0, align 4
@llc_flag_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c", ctrl 0x%02x: \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", ctrl 0x%04x: \00", align 1
@LLCSAP_SNAP = common dso_local global i32 0, align 4
@LLC_UI = common dso_local global i32 0, align 4
@LLCSAP_8021D = common dso_local global i32 0, align 4
@LLCSAP_IP = common dso_local global i32 0, align 4
@LLCSAP_IPX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"IPX 802.2: \00", align 1
@LLCSAP_ISONS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unknown DSAP 0x%02x\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s > %s %s \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s > %s \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Unknown SSAP 0x%02x\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%s %s > %s %s \00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Unnumbered, %s, Flags [%s], length %u\00", align 1
@llc_cmd_values = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@LLC_U_POLL = common dso_local global i32 0, align 4
@LLC_XID = common dso_local global i32 0, align 4
@LLC_XID_FI = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c": %02x %02x\00", align 1
@LLC_S_FMT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [51 x i8] c"Supervisory, %s, rcv seq %u, Flags [%s], length %u\00", align 1
@llc_supervisory_values = common dso_local global i32 0, align 4
@LLC_IS_POLL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [60 x i8] c"Information, send seq %u, rcv seq %u, Flags [%s], length %u\00", align 1
@LLCSAP_NETBEUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_print(%struct.TYPE_14__* %0, i64* %1, i32 %2, i32 %3, %struct.lladdr_info* %4, %struct.lladdr_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lladdr_info*, align 8
  %13 = alloca %struct.lladdr_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.lladdr_info* %4, %struct.lladdr_info** %12, align 8
  store %struct.lladdr_info* %5, %struct.lladdr_info** %13, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([7 x i8]* @.str to %struct.TYPE_14__*))
  %26 = load i64*, i64** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ND_DEFAULTPRINT(i64* %26, i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %7, align 4
  br label %505

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([7 x i8]* @.str to %struct.TYPE_14__*))
  %36 = load i64*, i64** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ND_DEFAULTPRINT(i64* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %7, align 4
  br label %505

40:                                               ; preds = %30
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @LLC_U_FMT, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @LLC_U_FMT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 1, i32* %20, align 4
  store i32 3, i32* %19, align 4
  br label %82

58:                                               ; preds = %40
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([7 x i8]* @.str to %struct.TYPE_14__*))
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @ND_DEFAULTPRINT(i64* %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %7, align 4
  br label %505

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([7 x i8]* @.str to %struct.TYPE_14__*))
  %74 = load i64*, i64** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ND_DEFAULTPRINT(i64* %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %7, align 4
  br label %505

78:                                               ; preds = %68
  %79 = load i64*, i64** %9, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = call i32 @EXTRACT_LE_16BITS(i64* %80)
  store i32 %81, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 4, i32* %19, align 4
  br label %82

82:                                               ; preds = %78, %57
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @LLCSAP_GLOBAL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @LLCSAP_GLOBAL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([12 x i8]* @.str.1 to %struct.TYPE_14__*))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @ipx_print(%struct.TYPE_14__* %99, i64* %100, i32 %101)
  store i32 0, i32* %7, align 4
  br label %505

103:                                              ; preds = %86, %82
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @LLC_IG, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* @LLC_GSAP, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  store i32 %111, i32* %17, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %103
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = load i32, i32* @llc_values, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @tok2str(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @llc_ig_flag_values, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @LLC_IG, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @tok2str(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @llc_values, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @tok2str(i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @llc_flag_values, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @LLC_GSAP, align 4
  %134 = and i32 %132, %133
  %135 = call i32 @tok2str(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to %struct.TYPE_14__*
  %138 = call i32 @ND_PRINT(%struct.TYPE_14__* %137)
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %116
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to %struct.TYPE_14__*
  %146 = call i32 @ND_PRINT(%struct.TYPE_14__* %145)
  br label %153

147:                                              ; preds = %116
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_14__*
  %152 = call i32 @ND_PRINT(%struct.TYPE_14__* %151)
  br label %153

153:                                              ; preds = %147, %141
  br label %154

154:                                              ; preds = %153, %103
  %155 = load i32, i32* %19, align 4
  %156 = load i64*, i64** %9, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64* %158, i64** %9, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %10, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* @LLCSAP_SNAP, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %192

168:                                              ; preds = %154
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @LLCSAP_SNAP, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %192

172:                                              ; preds = %168
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* @LLC_UI, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %172
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = load i64*, i64** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %182 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %183 = call i32 @snap_print(%struct.TYPE_14__* %177, i64* %178, i32 %179, i32 %180, %struct.lladdr_info* %181, %struct.lladdr_info* %182, i32 2)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 5
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  br label %505

189:                                              ; preds = %176
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 5
  store i32 %191, i32* %7, align 4
  br label %505

192:                                              ; preds = %172, %168, %154
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @LLCSAP_8021D, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %192
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* @LLCSAP_8021D, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* @LLC_UI, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %206 = load i64*, i64** %9, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @stp_print(%struct.TYPE_14__* %205, i64* %206, i32 %207)
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %7, align 4
  br label %505

210:                                              ; preds = %200, %196, %192
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @LLCSAP_IP, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %210
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @LLCSAP_IP, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* @LLC_UI, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %224 = load i64*, i64** %9, align 8
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @ip_print(%struct.TYPE_14__* %223, i64* %224, i32 %225)
  %227 = load i32, i32* %19, align 4
  store i32 %227, i32* %7, align 4
  br label %505

228:                                              ; preds = %218, %214, %210
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @LLCSAP_IPX, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %254

232:                                              ; preds = %228
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* @LLCSAP_IPX, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %232
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* @LLC_UI, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %247 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([12 x i8]* @.str.6 to %struct.TYPE_14__*))
  br label %248

248:                                              ; preds = %245, %240
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %250 = load i64*, i64** %9, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @ipx_print(%struct.TYPE_14__* %249, i64* %250, i32 %251)
  %253 = load i32, i32* %19, align 4
  store i32 %253, i32* %7, align 4
  br label %505

254:                                              ; preds = %236, %232, %228
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* @LLCSAP_ISONS, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %272

258:                                              ; preds = %254
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* @LLCSAP_ISONS, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* @LLC_UI, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %268 = load i64*, i64** %9, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @isoclns_print(%struct.TYPE_14__* %267, i64* %268, i32 %269)
  %271 = load i32, i32* %19, align 4
  store i32 %271, i32* %7, align 4
  br label %505

272:                                              ; preds = %262, %258, %254
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %366, label %277

277:                                              ; preds = %272
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %15, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %320

281:                                              ; preds = %277
  %282 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %283 = icmp eq %struct.lladdr_info* %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %286 = icmp eq %struct.lladdr_info* %285, null
  br i1 %286, label %287, label %295

287:                                              ; preds = %284, %281
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %289 = load i32, i32* @llc_values, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i32 @tok2str(i32 %289, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %290)
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to %struct.TYPE_14__*
  %294 = call i32 @ND_PRINT(%struct.TYPE_14__* %293)
  br label %319

295:                                              ; preds = %284
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %297 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %298 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %297, i32 0, i32 1
  %299 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %298, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %301 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %302 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 %299(%struct.TYPE_14__* %300, i32 %303)
  %305 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %306 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %305, i32 0, i32 1
  %307 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %306, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %309 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %310 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 %307(%struct.TYPE_14__* %308, i32 %311)
  %313 = load i32, i32* @llc_values, align 4
  %314 = load i32, i32* %15, align 4
  %315 = call i32 @tok2str(i32 %313, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %314)
  %316 = sext i32 %315 to i64
  %317 = inttoptr i64 %316 to %struct.TYPE_14__*
  %318 = call i32 @ND_PRINT(%struct.TYPE_14__* %317)
  br label %319

319:                                              ; preds = %295, %287
  br label %365

320:                                              ; preds = %277
  %321 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %322 = icmp eq %struct.lladdr_info* %321, null
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %325 = icmp eq %struct.lladdr_info* %324, null
  br i1 %325, label %326, label %337

326:                                              ; preds = %323, %320
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %328 = load i32, i32* @llc_values, align 4
  %329 = load i32, i32* %17, align 4
  %330 = call i32 @tok2str(i32 %328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @llc_values, align 4
  %332 = load i32, i32* %15, align 4
  %333 = call i32 @tok2str(i32 %331, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %332)
  %334 = sext i32 %333 to i64
  %335 = inttoptr i64 %334 to %struct.TYPE_14__*
  %336 = call i32 @ND_PRINT(%struct.TYPE_14__* %335)
  br label %364

337:                                              ; preds = %323
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %339 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %340 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %339, i32 0, i32 1
  %341 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %340, align 8
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %343 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %344 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 %341(%struct.TYPE_14__* %342, i32 %345)
  %347 = load i32, i32* @llc_values, align 4
  %348 = load i32, i32* %17, align 4
  %349 = call i32 @tok2str(i32 %347, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %348)
  %350 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %351 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %350, i32 0, i32 1
  %352 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %351, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %354 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %355 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 %352(%struct.TYPE_14__* %353, i32 %356)
  %358 = load i32, i32* @llc_values, align 4
  %359 = load i32, i32* %15, align 4
  %360 = call i32 @tok2str(i32 %358, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %359)
  %361 = sext i32 %360 to i64
  %362 = inttoptr i64 %361 to %struct.TYPE_14__*
  %363 = call i32 @ND_PRINT(%struct.TYPE_14__* %362)
  br label %364

364:                                              ; preds = %337, %326
  br label %365

365:                                              ; preds = %364, %319
  br label %366

366:                                              ; preds = %365, %272
  %367 = load i32, i32* %20, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %450

369:                                              ; preds = %366
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %371 = load i32, i32* @llc_cmd_values, align 4
  %372 = load i32, i32* %18, align 4
  %373 = call i32 @LLC_U_CMD(i32 %372)
  %374 = call i32 @tok2str(i32 %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* @llc_flag_values, align 4
  %376 = load i32, i32* %16, align 4
  %377 = load i32, i32* @LLC_GSAP, align 4
  %378 = and i32 %376, %377
  %379 = load i32, i32* %18, align 4
  %380 = load i32, i32* @LLC_U_POLL, align 4
  %381 = and i32 %379, %380
  %382 = or i32 %378, %381
  %383 = call i32 @tok2str(i32 %375, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = inttoptr i64 %387 to %struct.TYPE_14__*
  %389 = call i32 @ND_PRINT(%struct.TYPE_14__* %388)
  %390 = load i32, i32* %18, align 4
  %391 = load i32, i32* @LLC_U_POLL, align 4
  %392 = xor i32 %391, -1
  %393 = and i32 %390, %392
  %394 = load i32, i32* @LLC_XID, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %449

396:                                              ; preds = %369
  %397 = load i32, i32* %10, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = load i32, i32* %19, align 4
  store i32 %400, i32* %7, align 4
  br label %505

401:                                              ; preds = %396
  %402 = load i32, i32* %11, align 4
  %403 = icmp slt i32 %402, 1
  br i1 %403, label %404, label %415

404:                                              ; preds = %401
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %406 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([7 x i8]* @.str to %struct.TYPE_14__*))
  %407 = load i32, i32* %11, align 4
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %404
  %410 = load i64*, i64** %9, align 8
  %411 = load i32, i32* %11, align 4
  %412 = call i32 @ND_DEFAULTPRINT(i64* %410, i32 %411)
  br label %413

413:                                              ; preds = %409, %404
  %414 = load i32, i32* %19, align 4
  store i32 %414, i32* %7, align 4
  br label %505

415:                                              ; preds = %401
  %416 = load i64*, i64** %9, align 8
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @LLC_XID_FI, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %448

420:                                              ; preds = %415
  %421 = load i32, i32* %11, align 4
  %422 = icmp slt i32 %421, 3
  br i1 %422, label %426, label %423

423:                                              ; preds = %420
  %424 = load i32, i32* %10, align 4
  %425 = icmp slt i32 %424, 3
  br i1 %425, label %426, label %436

426:                                              ; preds = %423, %420
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %428 = call i32 @ND_PRINT(%struct.TYPE_14__* bitcast ([7 x i8]* @.str to %struct.TYPE_14__*))
  %429 = load i32, i32* %11, align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %426
  %432 = load i64*, i64** %9, align 8
  %433 = load i32, i32* %11, align 4
  %434 = call i32 @ND_DEFAULTPRINT(i64* %432, i32 %433)
  br label %435

435:                                              ; preds = %431, %426
  br label %446

436:                                              ; preds = %423
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %438 = load i64*, i64** %9, align 8
  %439 = getelementptr inbounds i64, i64* %438, i64 1
  %440 = load i64, i64* %439, align 8
  %441 = load i64*, i64** %9, align 8
  %442 = getelementptr inbounds i64, i64* %441, i64 2
  %443 = load i64, i64* %442, align 8
  %444 = inttoptr i64 %443 to %struct.TYPE_14__*
  %445 = call i32 @ND_PRINT(%struct.TYPE_14__* %444)
  br label %446

446:                                              ; preds = %436, %435
  %447 = load i32, i32* %19, align 4
  store i32 %447, i32* %7, align 4
  br label %505

448:                                              ; preds = %415
  br label %449

449:                                              ; preds = %448, %369
  br label %502

450:                                              ; preds = %366
  %451 = load i32, i32* %18, align 4
  %452 = load i32, i32* @LLC_S_FMT, align 4
  %453 = and i32 %451, %452
  %454 = load i32, i32* @LLC_S_FMT, align 4
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %480

456:                                              ; preds = %450
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %458 = load i32, i32* @llc_supervisory_values, align 4
  %459 = load i32, i32* %18, align 4
  %460 = call i32 @LLC_S_CMD(i32 %459)
  %461 = call i32 @tok2str(i32 %458, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %460)
  %462 = load i32, i32* %18, align 4
  %463 = call i32 @LLC_IS_NR(i32 %462)
  %464 = load i32, i32* @llc_flag_values, align 4
  %465 = load i32, i32* %16, align 4
  %466 = load i32, i32* @LLC_GSAP, align 4
  %467 = and i32 %465, %466
  %468 = load i32, i32* %18, align 4
  %469 = load i32, i32* @LLC_IS_POLL, align 4
  %470 = and i32 %468, %469
  %471 = or i32 %467, %470
  %472 = call i32 @tok2str(i32 %464, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %471)
  %473 = load i32, i32* %10, align 4
  %474 = load i32, i32* %19, align 4
  %475 = add nsw i32 %473, %474
  %476 = sext i32 %475 to i64
  %477 = inttoptr i64 %476 to %struct.TYPE_14__*
  %478 = call i32 @ND_PRINT(%struct.TYPE_14__* %477)
  %479 = load i32, i32* %19, align 4
  store i32 %479, i32* %7, align 4
  br label %505

480:                                              ; preds = %450
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %482 = load i32, i32* %18, align 4
  %483 = call i32 @LLC_I_NS(i32 %482)
  %484 = load i32, i32* %18, align 4
  %485 = call i32 @LLC_IS_NR(i32 %484)
  %486 = load i32, i32* @llc_flag_values, align 4
  %487 = load i32, i32* %16, align 4
  %488 = load i32, i32* @LLC_GSAP, align 4
  %489 = and i32 %487, %488
  %490 = load i32, i32* %18, align 4
  %491 = load i32, i32* @LLC_IS_POLL, align 4
  %492 = and i32 %490, %491
  %493 = or i32 %489, %492
  %494 = call i32 @tok2str(i32 %486, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %493)
  %495 = load i32, i32* %10, align 4
  %496 = load i32, i32* %19, align 4
  %497 = add nsw i32 %495, %496
  %498 = sext i32 %497 to i64
  %499 = inttoptr i64 %498 to %struct.TYPE_14__*
  %500 = call i32 @ND_PRINT(%struct.TYPE_14__* %499)
  br label %501

501:                                              ; preds = %480
  br label %502

502:                                              ; preds = %501, %449
  %503 = load i32, i32* %19, align 4
  %504 = sub nsw i32 0, %503
  store i32 %504, i32* %7, align 4
  br label %505

505:                                              ; preds = %502, %456, %446, %413, %399, %266, %248, %222, %204, %189, %185, %98, %71, %61, %33, %23
  %506 = load i32, i32* %7, align 4
  ret i32 %506
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_14__*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i64*, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i64*) #1

declare dso_local i32 @ipx_print(%struct.TYPE_14__*, i64*, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @snap_print(%struct.TYPE_14__*, i64*, i32, i32, %struct.lladdr_info*, %struct.lladdr_info*, i32) #1

declare dso_local i32 @stp_print(%struct.TYPE_14__*, i64*, i32) #1

declare dso_local i32 @ip_print(%struct.TYPE_14__*, i64*, i32) #1

declare dso_local i32 @isoclns_print(%struct.TYPE_14__*, i64*, i32) #1

declare dso_local i32 @LLC_U_CMD(i32) #1

declare dso_local i32 @LLC_S_CMD(i32) #1

declare dso_local i32 @LLC_IS_NR(i32) #1

declare dso_local i32 @LLC_I_NS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
