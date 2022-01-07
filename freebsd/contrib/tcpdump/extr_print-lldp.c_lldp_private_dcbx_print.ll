; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_private_dcbx_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_private_dcbx_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0A\09  %s Subtype (%u)\00", align 1
@lldp_dcbx_subtype_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@LLDP_DCBX_SUBTYPE_1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"\0A\09    Control - Protocol Control (type 0x%x, length %d)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0A\09      Oper_Version: %d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A\09      Max_Version: %d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0A\09      Sequence Number: %d\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0A\09      Acknowledgement Number: %d\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"\0A\09    Feature - Priority Group (type 0x%x, length %d)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\0A\09      Info block(0x%02X): \00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Enable bit: %d, Willing bit: %d, Error Bit: %d\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\0A\09      SubType: %d\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\0A\09      Priority Allocation\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"\0A\09          PgId_%d: %d\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\0A\09      Priority Group Allocation\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\0A\09          Pg percentage[%d]: %d\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\0A\09      NumTCsSupported: %d\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\0A\09    Feature - Priority Flow Control\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c" (type 0x%x, length %d)\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\0A\09      PFC Config (0x%02X)\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"\0A\09          Priority Bit %d: %s\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"\0A\09      NumTCPFCSupported: %d\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"\0A\09    Feature - Application (type 0x%x, length %d)\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"\0A\09      Application Value\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"\0A\09          Application Protocol ID: 0x%04x\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"\0A\09          SF (0x%x) Application Protocol ID is %s\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Socket Number\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"L2 EtherType\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"\0A\09          OUI: 0x%06x\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"\0A\09          User Priority Map: 0x%02x\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @lldp_private_dcbx_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lldp_private_dcbx_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %468

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @lldp_dcbx_subtype_values, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @tok2str(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  %36 = call i32 @ND_PRINT(%struct.TYPE_5__* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LLDP_DCBX_SUBTYPE_1, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %4, align 4
  br label %468

42:                                               ; preds = %25
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %18, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %457, %42
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %49, 4
  br i1 %50, label %51, label %465

51:                                               ; preds = %47
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ND_TCHECK2(i32 %53, i32 4)
  %55 = load i32*, i32** %18, align 8
  %56 = call i32 @EXTRACT_16BITS(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @LLDP_EXTRACT_TYPE(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @LLDP_EXTRACT_LEN(i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** %18, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32* %67, i32** %18, align 8
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %51
  br label %465

74:                                               ; preds = %70
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @ND_TCHECK2(i32 %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %466

83:                                               ; preds = %74
  %84 = load i32, i32* %16, align 4
  switch i32 %84, label %437 [
    i32 130, label %85
    i32 128, label %122
    i32 129, label %234
    i32 131, label %331
  ]

85:                                               ; preds = %83
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %466

89:                                               ; preds = %85
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to %struct.TYPE_5__*
  %94 = call i32 @ND_PRINT(%struct.TYPE_5__* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_5__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_5__* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_5__*
  %107 = call i32 @ND_PRINT(%struct.TYPE_5__* %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = call i32 @EXTRACT_32BITS(i32* %110)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to %struct.TYPE_5__*
  %114 = call i32 @ND_PRINT(%struct.TYPE_5__* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  %118 = call i32 @EXTRACT_32BITS(i32* %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to %struct.TYPE_5__*
  %121 = call i32 @ND_PRINT(%struct.TYPE_5__* %120)
  br label %439

122:                                              ; preds = %83
  %123 = load i32, i32* %17, align 4
  %124 = icmp slt i32 %123, 17
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %466

126:                                              ; preds = %122
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to %struct.TYPE_5__*
  %131 = call i32 @ND_PRINT(%struct.TYPE_5__* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to %struct.TYPE_5__*
  %137 = call i32 @ND_PRINT(%struct.TYPE_5__* %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = load i32*, i32** %18, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_5__*
  %144 = call i32 @ND_PRINT(%struct.TYPE_5__* %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = load i32*, i32** %18, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to %struct.TYPE_5__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_5__* %150)
  %152 = load i32*, i32** %18, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, 128
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, 64
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, 32
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 1, i32 0
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to %struct.TYPE_5__*
  %173 = call i32 @ND_PRINT(%struct.TYPE_5__* %172)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to %struct.TYPE_5__*
  %180 = call i32 @ND_PRINT(%struct.TYPE_5__* %179)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([28 x i8]* @.str.11 to %struct.TYPE_5__*))
  %183 = load i32*, i32** %18, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = call i32 @EXTRACT_32BITS(i32* %184)
  store i32 %185, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %201, %126
  %187 = load i32, i32* %12, align 4
  %188 = icmp sle i32 %187, 7
  br i1 %188, label %189, label %204

189:                                              ; preds = %186
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %12, align 4
  %194 = mul nsw i32 4, %193
  %195 = sub nsw i32 28, %194
  %196 = ashr i32 %192, %195
  %197 = and i32 %196, 15
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to %struct.TYPE_5__*
  %200 = call i32 @ND_PRINT(%struct.TYPE_5__* %199)
  br label %201

201:                                              ; preds = %189
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %186

204:                                              ; preds = %186
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %206 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([34 x i8]* @.str.13 to %struct.TYPE_5__*))
  store i32 0, i32* %12, align 4
  br label %207

207:                                              ; preds = %222, %204
  %208 = load i32, i32* %12, align 4
  %209 = icmp sle i32 %208, 7
  br i1 %209, label %210, label %225

210:                                              ; preds = %207
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32*, i32** %18, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to %struct.TYPE_5__*
  %221 = call i32 @ND_PRINT(%struct.TYPE_5__* %220)
  br label %222

222:                                              ; preds = %210
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %207

225:                                              ; preds = %207
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %227 = load i32*, i32** %18, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 8
  %229 = getelementptr inbounds i32, i32* %228, i64 8
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to %struct.TYPE_5__*
  %233 = call i32 @ND_PRINT(%struct.TYPE_5__* %232)
  br label %439

234:                                              ; preds = %83
  %235 = load i32, i32* %17, align 4
  %236 = icmp slt i32 %235, 6
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %466

238:                                              ; preds = %234
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([38 x i8]* @.str.16 to %struct.TYPE_5__*))
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = load i32, i32* %17, align 4
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to %struct.TYPE_5__*
  %245 = call i32 @ND_PRINT(%struct.TYPE_5__* %244)
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %247 = load i32*, i32** %18, align 8
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to %struct.TYPE_5__*
  %251 = call i32 @ND_PRINT(%struct.TYPE_5__* %250)
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %253 = load i32*, i32** %18, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = inttoptr i64 %256 to %struct.TYPE_5__*
  %258 = call i32 @ND_PRINT(%struct.TYPE_5__* %257)
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %260 = load i32*, i32** %18, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to %struct.TYPE_5__*
  %265 = call i32 @ND_PRINT(%struct.TYPE_5__* %264)
  %266 = load i32*, i32** %18, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %10, align 4
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %270 = load i32, i32* %10, align 4
  %271 = and i32 %270, 128
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i32 1, i32 0
  %275 = load i32, i32* %10, align 4
  %276 = and i32 %275, 64
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 1, i32 0
  %280 = load i32, i32* %10, align 4
  %281 = and i32 %280, 32
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 1, i32 0
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to %struct.TYPE_5__*
  %287 = call i32 @ND_PRINT(%struct.TYPE_5__* %286)
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %289 = load i32*, i32** %18, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 3
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to %struct.TYPE_5__*
  %294 = call i32 @ND_PRINT(%struct.TYPE_5__* %293)
  %295 = load i32*, i32** %18, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 4
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %10, align 4
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %299 = load i32*, i32** %18, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 4
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to %struct.TYPE_5__*
  %304 = call i32 @ND_PRINT(%struct.TYPE_5__* %303)
  store i32 0, i32* %12, align 4
  br label %305

305:                                              ; preds = %320, %238
  %306 = load i32, i32* %12, align 4
  %307 = icmp sle i32 %306, 7
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %12, align 4
  %313 = shl i32 1, %312
  %314 = and i32 %311, %313
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)
  %318 = bitcast i8* %317 to %struct.TYPE_5__*
  %319 = call i32 @ND_PRINT(%struct.TYPE_5__* %318)
  br label %320

320:                                              ; preds = %308
  %321 = load i32, i32* %12, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %12, align 4
  br label %305

323:                                              ; preds = %305
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %325 = load i32*, i32** %18, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 5
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = inttoptr i64 %328 to %struct.TYPE_5__*
  %330 = call i32 @ND_PRINT(%struct.TYPE_5__* %329)
  br label %439

331:                                              ; preds = %83
  %332 = load i32, i32* %17, align 4
  %333 = icmp slt i32 %332, 4
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  br label %466

335:                                              ; preds = %331
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %337 = load i32, i32* %17, align 4
  %338 = sext i32 %337 to i64
  %339 = inttoptr i64 %338 to %struct.TYPE_5__*
  %340 = call i32 @ND_PRINT(%struct.TYPE_5__* %339)
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %342 = load i32*, i32** %18, align 8
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = inttoptr i64 %344 to %struct.TYPE_5__*
  %346 = call i32 @ND_PRINT(%struct.TYPE_5__* %345)
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %348 = load i32*, i32** %18, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = inttoptr i64 %351 to %struct.TYPE_5__*
  %353 = call i32 @ND_PRINT(%struct.TYPE_5__* %352)
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %355 = load i32*, i32** %18, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 2
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = inttoptr i64 %358 to %struct.TYPE_5__*
  %360 = call i32 @ND_PRINT(%struct.TYPE_5__* %359)
  %361 = load i32*, i32** %18, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 2
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %10, align 4
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %365 = load i32, i32* %10, align 4
  %366 = and i32 %365, 128
  %367 = icmp ne i32 %366, 0
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 1, i32 0
  %370 = load i32, i32* %10, align 4
  %371 = and i32 %370, 64
  %372 = icmp ne i32 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 1, i32 0
  %375 = load i32, i32* %10, align 4
  %376 = and i32 %375, 32
  %377 = icmp ne i32 %376, 0
  %378 = zext i1 %377 to i64
  %379 = select i1 %377, i32 1, i32 0
  %380 = sext i32 %379 to i64
  %381 = inttoptr i64 %380 to %struct.TYPE_5__*
  %382 = call i32 @ND_PRINT(%struct.TYPE_5__* %381)
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %384 = load i32*, i32** %18, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 3
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = inttoptr i64 %387 to %struct.TYPE_5__*
  %389 = call i32 @ND_PRINT(%struct.TYPE_5__* %388)
  %390 = load i32, i32* %17, align 4
  %391 = sub nsw i32 %390, 4
  store i32 %391, i32* %10, align 4
  %392 = load i32*, i32** %18, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 4
  store i32* %393, i32** %19, align 8
  br label %394

394:                                              ; preds = %397, %335
  %395 = load i32, i32* %10, align 4
  %396 = icmp sge i32 %395, 6
  br i1 %396, label %397, label %436

397:                                              ; preds = %394
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %399 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([26 x i8]* @.str.24 to %struct.TYPE_5__*))
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %401 = load i32*, i32** %19, align 8
  %402 = call i32 @EXTRACT_16BITS(i32* %401)
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to %struct.TYPE_5__*
  %405 = call i32 @ND_PRINT(%struct.TYPE_5__* %404)
  %406 = load i32*, i32** %19, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 2
  %408 = call i32 @EXTRACT_24BITS(i32* %407)
  store i32 %408, i32* %14, align 4
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %410 = load i32, i32* %14, align 4
  %411 = ashr i32 %410, 22
  %412 = load i32, i32* %14, align 4
  %413 = ashr i32 %412, 22
  %414 = icmp ne i32 %413, 0
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)
  %417 = bitcast i8* %416 to %struct.TYPE_5__*
  %418 = call i32 @ND_PRINT(%struct.TYPE_5__* %417)
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %420 = load i32, i32* %14, align 4
  %421 = and i32 %420, 4194303
  %422 = sext i32 %421 to i64
  %423 = inttoptr i64 %422 to %struct.TYPE_5__*
  %424 = call i32 @ND_PRINT(%struct.TYPE_5__* %423)
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %426 = load i32*, i32** %19, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 5
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = inttoptr i64 %429 to %struct.TYPE_5__*
  %431 = call i32 @ND_PRINT(%struct.TYPE_5__* %430)
  %432 = load i32, i32* %10, align 4
  %433 = sub nsw i32 %432, 6
  store i32 %433, i32* %10, align 4
  %434 = load i32*, i32** %19, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 6
  store i32* %435, i32** %19, align 8
  br label %394

436:                                              ; preds = %394
  br label %439

437:                                              ; preds = %83
  %438 = load i32, i32* @TRUE, align 4
  store i32 %438, i32* %9, align 4
  br label %439

439:                                              ; preds = %437, %436, %323, %225, %89
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = icmp sgt i32 %442, 1
  br i1 %443, label %452, label %444

444:                                              ; preds = %439
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %444
  %450 = load i32, i32* %9, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %449, %439
  %453 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %454 = load i32*, i32** %18, align 8
  %455 = load i32, i32* %17, align 4
  %456 = call i32 @print_unknown_data(%struct.TYPE_5__* %453, i32* %454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %455)
  br label %457

457:                                              ; preds = %452, %449, %444
  %458 = load i32, i32* %17, align 4
  %459 = load i32, i32* %15, align 4
  %460 = sub nsw i32 %459, %458
  store i32 %460, i32* %15, align 4
  %461 = load i32, i32* %17, align 4
  %462 = load i32*, i32** %18, align 8
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  store i32* %464, i32** %18, align 8
  br label %47

465:                                              ; preds = %73, %47
  br label %466

466:                                              ; preds = %465, %334, %237, %125, %88, %82
  %467 = load i32, i32* %9, align 4
  store i32 %467, i32* %4, align 4
  br label %468

468:                                              ; preds = %466, %40, %23
  %469 = load i32, i32* %4, align 4
  ret i32 %469
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @LLDP_EXTRACT_TYPE(i32) #1

declare dso_local i32 @LLDP_EXTRACT_LEN(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_5__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
