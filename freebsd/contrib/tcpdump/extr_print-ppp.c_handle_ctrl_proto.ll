; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_ctrl_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_handle_ctrl_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@ppptype2str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown ctrl-proto (0x%04x)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s (0x%02x), id %u, length %u\00", align 1
@cpcodes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Unknown Opcode\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\0A\09encoded length %u (=Option(s) length %u)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\0A\09  Magic-Num 0x%08x\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" Vendor: %s (%u)\00", align 1
@oui_values = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\0A\09  Rejected %s Protocol (0x%04x)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\0A\09  Rejected Packet\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"\0A\09  -----trailing data-----\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\0A\09  Message\0A\09    \00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c", Seconds-Remaining %us\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"[|%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32*, i32)* @handle_ctrl_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ctrl_proto(%struct.TYPE_13__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.TYPE_13__*, i32*, i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %7, align 8
  store i32* %16, i32** %15, align 8
  %17 = load i32, i32* @ppptype2str, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @tok2str(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_13__*
  %23 = call i32 @ND_PRINT(%struct.TYPE_13__* %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %281

27:                                               ; preds = %4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ND_TCHECK2(i32 %29, i32 2)
  %31 = load i32*, i32** %15, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %15, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = load i32, i32* @cpcodes, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @tok2str(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %15, align 8
  %41 = load i32, i32* %39, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_13__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_13__* %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %27
  br label %286

52:                                               ; preds = %27
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %286

56:                                               ; preds = %52
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ND_TCHECK2(i32 %58, i32 2)
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @EXTRACT_16BITS(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %15, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_13__*
  %70 = call i32 @ND_PRINT(%struct.TYPE_13__* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %56
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 -2
  %79 = call i32 @print_unknown_data(%struct.TYPE_13__* %76, i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 6)
  br label %80

80:                                               ; preds = %75, %56
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %267 [
    i32 133, label %82
    i32 142, label %111
    i32 145, label %111
    i32 144, label %111
    i32 143, label %111
    i32 135, label %146
    i32 136, label %146
    i32 146, label %147
    i32 137, label %148
    i32 140, label %178
    i32 139, label %178
    i32 141, label %178
    i32 138, label %210
    i32 134, label %242
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 11
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %280

86:                                               ; preds = %82
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ND_TCHECK2(i32 %88, i32 4)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @EXTRACT_32BITS(i32* %91)
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_13__*
  %95 = call i32 @ND_PRINT(%struct.TYPE_13__* %94)
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32* %97, i32** %15, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK2(i32 %99, i32 3)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = load i32, i32* @oui_values, align 4
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @EXTRACT_24BITS(i32* %103)
  %105 = call i8* @tok2str(i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @EXTRACT_24BITS(i32* %106)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to %struct.TYPE_13__*
  %110 = call i32 @ND_PRINT(%struct.TYPE_13__* %109)
  br label %280

111:                                              ; preds = %80, %80, %80, %80
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %142, %111
  %115 = load i32, i32* %6, align 4
  switch i32 %115, label %121 [
    i32 128, label %116
    i32 130, label %117
    i32 129, label %118
    i32 131, label %119
    i32 132, label %120
  ]

116:                                              ; preds = %114
  store i32 (%struct.TYPE_13__*, i32*, i32)* @print_lcp_config_options, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  br label %122

117:                                              ; preds = %114
  store i32 (%struct.TYPE_13__*, i32*, i32)* @print_ipcp_config_options, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  br label %122

118:                                              ; preds = %114
  store i32 (%struct.TYPE_13__*, i32*, i32)* @print_ip6cp_config_options, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  br label %122

119:                                              ; preds = %114
  store i32 (%struct.TYPE_13__*, i32*, i32)* @print_ccp_config_options, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  br label %122

120:                                              ; preds = %114
  store i32 (%struct.TYPE_13__*, i32*, i32)* @print_bacp_config_options, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  br label %122

121:                                              ; preds = %114
  store i32 (%struct.TYPE_13__*, i32*, i32)* null, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  br label %122

122:                                              ; preds = %121, %120, %119, %118, %117, %116
  %123 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  %124 = icmp eq i32 (%struct.TYPE_13__*, i32*, i32)* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %145

126:                                              ; preds = %122
  %127 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %12, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = load i32*, i32** %15, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 %127(%struct.TYPE_13__* %128, i32* %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %145

134:                                              ; preds = %126
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32*, i32** %15, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %15, align 8
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %13, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %114, label %145

145:                                              ; preds = %142, %133, %125
  br label %280

146:                                              ; preds = %80, %80
  br label %280

147:                                              ; preds = %80
  br label %280

148:                                              ; preds = %80
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 6
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %280

152:                                              ; preds = %148
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ND_TCHECK2(i32 %154, i32 2)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = load i32, i32* @ppptype2str, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @EXTRACT_16BITS(i32* %158)
  %160 = call i8* @tok2str(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @EXTRACT_16BITS(i32* %161)
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to %struct.TYPE_13__*
  %165 = call i32 @ND_PRINT(%struct.TYPE_13__* %164)
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 6
  br i1 %167, label %168, label %177

168:                                              ; preds = %152
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = call i32 @ND_PRINT(%struct.TYPE_13__* bitcast ([20 x i8]* @.str.11 to %struct.TYPE_13__*))
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %11, align 4
  %175 = sub nsw i32 %174, 2
  %176 = call i32 @print_unknown_data(%struct.TYPE_13__* %171, i32* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %168, %152
  br label %280

178:                                              ; preds = %80, %80, %80
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %179, 8
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %280

182:                                              ; preds = %178
  %183 = load i32*, i32** %15, align 8
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ND_TCHECK2(i32 %184, i32 4)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = call i32 @EXTRACT_32BITS(i32* %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to %struct.TYPE_13__*
  %191 = call i32 @ND_PRINT(%struct.TYPE_13__* %190)
  %192 = load i32, i32* %11, align 4
  %193 = icmp sgt i32 %192, 8
  br i1 %193, label %194, label %209

194:                                              ; preds = %182
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = call i32 @ND_PRINT(%struct.TYPE_13__* bitcast ([28 x i8]* @.str.13 to %struct.TYPE_13__*))
  %197 = load i32*, i32** %15, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sub nsw i32 %200, 8
  %202 = call i32 @ND_TCHECK2(i32 %199, i32 %201)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 %206, 8
  %208 = call i32 @print_unknown_data(%struct.TYPE_13__* %203, i32* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %194, %182
  br label %280

210:                                              ; preds = %80
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  br label %280

214:                                              ; preds = %210
  %215 = load i32*, i32** %15, align 8
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ND_TCHECK2(i32 %216, i32 4)
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = call i32 @EXTRACT_32BITS(i32* %219)
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to %struct.TYPE_13__*
  %223 = call i32 @ND_PRINT(%struct.TYPE_13__* %222)
  %224 = load i32, i32* %11, align 4
  %225 = icmp sgt i32 %224, 8
  br i1 %225, label %226, label %241

226:                                              ; preds = %214
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %228 = call i32 @ND_PRINT(%struct.TYPE_13__* bitcast ([18 x i8]* @.str.15 to %struct.TYPE_13__*))
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %230 = load i32*, i32** %15, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 4
  %232 = load i32, i32* %11, align 4
  %233 = sub nsw i32 %232, 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @fn_printn(%struct.TYPE_13__* %229, i32* %231, i32 %233, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  br label %281

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %240, %214
  br label %280

242:                                              ; preds = %80
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %243, 12
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  br label %280

246:                                              ; preds = %242
  %247 = load i32*, i32** %15, align 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ND_TCHECK2(i32 %248, i32 4)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %251 = load i32*, i32** %15, align 8
  %252 = call i32 @EXTRACT_32BITS(i32* %251)
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to %struct.TYPE_13__*
  %255 = call i32 @ND_PRINT(%struct.TYPE_13__* %254)
  %256 = load i32*, i32** %15, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 4
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ND_TCHECK2(i32 %258, i32 4)
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %261 = load i32*, i32** %15, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 4
  %263 = call i32 @EXTRACT_32BITS(i32* %262)
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to %struct.TYPE_13__*
  %266 = call i32 @ND_PRINT(%struct.TYPE_13__* %265)
  br label %280

267:                                              ; preds = %80
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp sle i32 %270, 1
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %274 = load i32*, i32** %7, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 -2
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 2
  %278 = call i32 @print_unknown_data(%struct.TYPE_13__* %273, i32* %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %272, %267
  br label %280

280:                                              ; preds = %279, %246, %245, %241, %213, %209, %181, %177, %151, %147, %146, %145, %86, %85
  br label %286

281:                                              ; preds = %239, %26
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %283 = load i8*, i8** %9, align 8
  %284 = bitcast i8* %283 to %struct.TYPE_13__*
  %285 = call i32 @ND_PRINT(%struct.TYPE_13__* %284)
  br label %286

286:                                              ; preds = %281, %280, %55, %51
  ret void
}

declare dso_local i8* @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_13__*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @print_lcp_config_options(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @print_ipcp_config_options(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @print_ip6cp_config_options(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @print_ccp_config_options(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @print_bacp_config_options(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @fn_printn(%struct.TYPE_13__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
