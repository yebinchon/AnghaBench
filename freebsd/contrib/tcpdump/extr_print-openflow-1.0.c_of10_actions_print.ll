; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_actions_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_actions_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OF_ACTION_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"%saction type %s\00", align 1
@ofpat_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", len %u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (bogus)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", port %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@OFPP_CONTROLLER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c", max_len %u\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", vlan_vid %s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c", vlan_pcp %s\00", align 1
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c", dl_addr %s\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c", nw_addr %s\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c", nw_tos 0x%02x\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c", tp_port %u\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c", queue_id %s\00", align 1
@ofpq_str = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*, i64)* @of10_actions_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_actions_print(i32* %0, i8* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32*, i32** %9, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %284, %5
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %288

24:                                               ; preds = %21
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @OF_ACTION_HEADER_LEN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %290

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ND_TCHECK2(i32 %31, i64 2)
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @EXTRACT_16BITS(i32* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @ofpat_str, align 4
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @tok2str(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ND_TCHECK2(i32 %46, i64 2)
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @EXTRACT_16BITS(i32* %48)
  store i64 %49, i64* %15, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %15, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @ND_PRINT(i32* %54)
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @OF_ACTION_HEADER_LEN, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %29
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %29
  br label %290

64:                                               ; preds = %59
  %65 = load i64, i64* %14, align 8
  switch i64 %65, label %79 [
    i64 139, label %66
    i64 130, label %66
    i64 131, label %66
    i64 129, label %66
    i64 135, label %66
    i64 136, label %66
    i64 134, label %66
    i64 132, label %66
    i64 133, label %66
    i64 137, label %70
    i64 138, label %70
    i64 140, label %70
    i64 128, label %74
  ]

66:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64
  %67 = load i64, i64* %15, align 8
  %68 = icmp ne i64 %67, 8
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %17, align 4
  br label %80

70:                                               ; preds = %64, %64, %64
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %71, 16
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %17, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load i64, i64* %15, align 8
  %76 = srem i64 %75, 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %17, align 4
  br label %80

79:                                               ; preds = %64
  store i32 1, i32* %18, align 4
  br label %80

80:                                               ; preds = %79, %74, %70, %66
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  store i32 1, i32* %18, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %15, align 8
  %93 = sub nsw i64 %92, 4
  %94 = call i32 @ND_TCHECK2(i32 %91, i64 %93)
  %95 = load i64, i64* %15, align 8
  %96 = sub nsw i64 %95, 4
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %9, align 8
  br label %284

99:                                               ; preds = %86
  %100 = load i64, i64* %14, align 8
  switch i64 %100, label %283 [
    i64 139, label %101
    i64 130, label %131
    i64 131, label %149
    i64 137, label %167
    i64 138, label %167
    i64 135, label %187
    i64 136, label %187
    i64 134, label %200
    i64 132, label %217
    i64 133, label %217
    i64 140, label %233
    i64 128, label %265
    i64 129, label %277
  ]

101:                                              ; preds = %99
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ND_TCHECK2(i32 %103, i64 2)
  %105 = load i32*, i32** %9, align 8
  %106 = call i64 @EXTRACT_16BITS(i32* %105)
  store i64 %106, i64* %16, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32* %108, i32** %9, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @ofpp_str, align 4
  %111 = load i64, i64* %16, align 8
  %112 = call i32 @tok2str(i32 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  %115 = call i32 @ND_PRINT(i32* %114)
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ND_TCHECK2(i32 %117, i64 2)
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* @OFPP_CONTROLLER, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %101
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i64 @EXTRACT_16BITS(i32* %124)
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @ND_PRINT(i32* %126)
  br label %128

128:                                              ; preds = %122, %101
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32* %130, i32** %9, align 8
  br label %283

131:                                              ; preds = %99
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ND_TCHECK2(i32 %133, i64 2)
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i64 @EXTRACT_16BITS(i32* %136)
  %138 = call i32 @vlan_str(i64 %137)
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i32*
  %141 = call i32 @ND_PRINT(i32* %140)
  %142 = load i32*, i32** %9, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32* %143, i32** %9, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ND_TCHECK2(i32 %145, i64 2)
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32* %148, i32** %9, align 8
  br label %283

149:                                              ; preds = %99
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ND_TCHECK2(i32 %151, i64 1)
  %153 = load i32*, i32** %7, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pcp_str(i32 %155)
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i32*
  %159 = call i32 @ND_PRINT(i32* %158)
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32* %161, i32** %9, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ND_TCHECK2(i32 %163, i64 3)
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  store i32* %166, i32** %9, align 8
  br label %283

167:                                              ; preds = %99, %99
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %171 = call i32 @ND_TCHECK2(i32 %169, i64 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @etheraddr_string(i32* %173, i32* %174)
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i32*
  %178 = call i32 @ND_PRINT(i32* %177)
  %179 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 %179
  store i32* %181, i32** %9, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ND_TCHECK2(i32 %183, i64 6)
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  store i32* %186, i32** %9, align 8
  br label %283

187:                                              ; preds = %99, %99
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ND_TCHECK2(i32 %189, i64 4)
  %191 = load i32*, i32** %7, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @ipaddr_string(i32* %192, i32* %193)
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i32*
  %197 = call i32 @ND_PRINT(i32* %196)
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  store i32* %199, i32** %9, align 8
  br label %283

200:                                              ; preds = %99
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @ND_TCHECK2(i32 %202, i64 1)
  %204 = load i32*, i32** %7, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i32*
  %209 = call i32 @ND_PRINT(i32* %208)
  %210 = load i32*, i32** %9, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  store i32* %211, i32** %9, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ND_TCHECK2(i32 %213, i64 3)
  %215 = load i32*, i32** %9, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  store i32* %216, i32** %9, align 8
  br label %283

217:                                              ; preds = %99, %99
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ND_TCHECK2(i32 %219, i64 2)
  %221 = load i32*, i32** %7, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = call i64 @EXTRACT_16BITS(i32* %222)
  %224 = inttoptr i64 %223 to i32*
  %225 = call i32 @ND_PRINT(i32* %224)
  %226 = load i32*, i32** %9, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  store i32* %227, i32** %9, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ND_TCHECK2(i32 %229, i64 2)
  %231 = load i32*, i32** %9, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32* %232, i32** %9, align 8
  br label %283

233:                                              ; preds = %99
  %234 = load i32*, i32** %9, align 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ND_TCHECK2(i32 %235, i64 2)
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* @ofpp_str, align 4
  %239 = load i32*, i32** %9, align 8
  %240 = call i64 @EXTRACT_16BITS(i32* %239)
  %241 = call i32 @tok2str(i32 %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %240)
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i32*
  %244 = call i32 @ND_PRINT(i32* %243)
  %245 = load i32*, i32** %9, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 2
  store i32* %246, i32** %9, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ND_TCHECK2(i32 %248, i64 6)
  %250 = load i32*, i32** %9, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 6
  store i32* %251, i32** %9, align 8
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ND_TCHECK2(i32 %253, i64 4)
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* @ofpq_str, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = call i64 @EXTRACT_32BITS(i32* %257)
  %259 = call i32 @tok2str(i32 %256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %258)
  %260 = sext i32 %259 to i64
  %261 = inttoptr i64 %260 to i32*
  %262 = call i32 @ND_PRINT(i32* %261)
  %263 = load i32*, i32** %9, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  store i32* %264, i32** %9, align 8
  br label %283

265:                                              ; preds = %99
  %266 = load i32*, i32** %10, align 8
  %267 = load i32*, i32** %7, align 8
  %268 = load i32*, i32** %9, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = load i64, i64* %15, align 8
  %271 = sub nsw i64 %270, 4
  %272 = call i32* @of10_vendor_action_print(i32* %267, i32* %268, i32* %269, i64 %271)
  store i32* %272, i32** %9, align 8
  %273 = icmp eq i32* %266, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %265
  %275 = load i32*, i32** %10, align 8
  store i32* %275, i32** %6, align 8
  br label %310

276:                                              ; preds = %265
  br label %283

277:                                              ; preds = %99
  %278 = load i32*, i32** %9, align 8
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @ND_TCHECK2(i32 %279, i64 4)
  %281 = load i32*, i32** %9, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  store i32* %282, i32** %9, align 8
  br label %283

283:                                              ; preds = %99, %277, %276, %233, %217, %200, %187, %167, %149, %131, %128
  br label %284

284:                                              ; preds = %283, %89
  %285 = load i64, i64* %15, align 8
  %286 = load i64, i64* %11, align 8
  %287 = sub nsw i64 %286, %285
  store i64 %287, i64* %11, align 8
  br label %21

288:                                              ; preds = %21
  %289 = load i32*, i32** %9, align 8
  store i32* %289, i32** %6, align 8
  br label %310

290:                                              ; preds = %63, %28
  %291 = load i32*, i32** %7, align 8
  %292 = load i32, i32* @istr, align 4
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i32*
  %295 = call i32 @ND_PRINT(i32* %294)
  %296 = load i32*, i32** %12, align 8
  %297 = load i32, i32* %296, align 4
  %298 = load i64, i64* %13, align 8
  %299 = call i32 @ND_TCHECK2(i32 %297, i64 %298)
  %300 = load i32*, i32** %12, align 8
  %301 = load i64, i64* %13, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  store i32* %302, i32** %6, align 8
  br label %310

303:                                              ; No predecessors!
  %304 = load i32*, i32** %7, align 8
  %305 = load i32, i32* @tstr, align 4
  %306 = sext i32 %305 to i64
  %307 = inttoptr i64 %306 to i32*
  %308 = call i32 @ND_PRINT(i32* %307)
  %309 = load i32*, i32** %10, align 8
  store i32* %309, i32** %6, align 8
  br label %310

310:                                              ; preds = %303, %290, %288, %274
  %311 = load i32*, i32** %6, align 8
  ret i32* %311
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @vlan_str(i64) #1

declare dso_local i32 @pcp_str(i32) #1

declare dso_local i32 @etheraddr_string(i32*, i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32* @of10_vendor_action_print(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
