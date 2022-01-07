; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_avp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_avp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@L2TP_AVP_HDR_LEN_MASK = common dso_local global i32 0, align 4
@L2TP_AVP_HDR_FLAG_MANDATORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@L2TP_AVP_HDR_FLAG_HIDDEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"VENDOR%04x:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ATTR%04x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@l2tp_avp2str = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"AVP-#%u\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"AVP too short\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"|...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @l2tp_avp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_avp_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %267

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK(i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @EXTRACT_16BITS(i32* %22)
  %24 = load i32, i32* @L2TP_AVP_HDR_LEN_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %264

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %264

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ND_TCHECK2(i32 %36, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @EXTRACT_16BITS(i32* %39)
  %41 = load i32, i32* @L2TP_AVP_HDR_FLAG_MANDATORY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %47

47:                                               ; preds = %44, %34
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @EXTRACT_16BITS(i32* %48)
  %50 = load i32, i32* @L2TP_AVP_HDR_FLAG_HIDDEN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @EXTRACT_16BITS(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @EXTRACT_16BITS(i32* %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 @ND_PRINT(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @EXTRACT_16BITS(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 @ND_PRINT(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 6
  %86 = call i32 @print_octets(i32* %82, i32* %83, i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  br label %255

89:                                               ; preds = %57
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @EXTRACT_16BITS(i32* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @l2tp_avp2str, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @tok2str(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @ND_PRINT(i32* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.9 to i32*))
  br label %252

110:                                              ; preds = %89
  %111 = load i32, i32* %9, align 4
  switch i32 %111, label %250 [
    i32 148, label %112
    i32 134, label %118
    i32 143, label %124
    i32 156, label %130
    i32 165, label %136
    i32 130, label %142
    i32 157, label %153
    i32 166, label %153
    i32 135, label %153
    i32 167, label %153
    i32 154, label %164
    i32 128, label %164
    i32 162, label %164
    i32 163, label %164
    i32 131, label %164
    i32 140, label %164
    i32 144, label %164
    i32 159, label %170
    i32 153, label %170
    i32 151, label %170
    i32 152, label %170
    i32 142, label %170
    i32 139, label %170
    i32 136, label %170
    i32 137, label %176
    i32 158, label %182
    i32 160, label %193
    i32 149, label %193
    i32 150, label %193
    i32 129, label %193
    i32 146, label %193
    i32 133, label %193
    i32 164, label %204
    i32 155, label %210
    i32 147, label %216
    i32 138, label %219
    i32 141, label %225
    i32 161, label %231
    i32 168, label %237
    i32 132, label %243
    i32 145, label %244
  ]

112:                                              ; preds = %110
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 6
  %117 = call i32 @l2tp_msgtype_print(i32* %113, i32* %114, i32 %116)
  br label %251

118:                                              ; preds = %110
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 6
  %123 = call i32 @l2tp_result_code_print(i32* %119, i32* %120, i32 %122)
  br label %251

124:                                              ; preds = %110
  %125 = load i32*, i32** %4, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, 6
  %129 = call i32 @l2tp_proto_ver_print(i32* %125, i32* %126, i32 %128)
  br label %251

130:                                              ; preds = %110
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %133, 6
  %135 = call i32 @l2tp_framing_cap_print(i32* %131, i32* %132, i32 %134)
  br label %251

136:                                              ; preds = %110
  %137 = load i32*, i32** %4, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 6
  %141 = call i32 @l2tp_bearer_cap_print(i32* %137, i32* %138, i32 %140)
  br label %251

142:                                              ; preds = %110
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, 6
  %145 = icmp slt i32 %144, 8
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.10 to i32*))
  br label %251

149:                                              ; preds = %142
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @print_octets(i32* %150, i32* %151, i32 8)
  br label %251

153:                                              ; preds = %110, %110, %110, %110
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %154, 6
  %156 = icmp slt i32 %155, 2
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.10 to i32*))
  br label %251

160:                                              ; preds = %153
  %161 = load i32*, i32** %4, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @print_16bits_val(i32* %161, i32* %162)
  br label %251

164:                                              ; preds = %110, %110, %110, %110, %110, %110, %110
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %167, 6
  %169 = call i32 @print_string(i32* %165, i32* %166, i32 %168)
  br label %251

170:                                              ; preds = %110, %110, %110, %110, %110, %110, %110
  %171 = load i32*, i32** %4, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, 6
  %175 = call i32 @print_octets(i32* %171, i32* %172, i32 %174)
  br label %251

176:                                              ; preds = %110
  %177 = load i32*, i32** %4, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %179, 6
  %181 = call i32 @l2tp_q931_cc_print(i32* %177, i32* %178, i32 %180)
  br label %251

182:                                              ; preds = %110
  %183 = load i32, i32* %7, align 4
  %184 = sub nsw i32 %183, 6
  %185 = icmp slt i32 %184, 16
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.10 to i32*))
  br label %251

189:                                              ; preds = %182
  %190 = load i32*, i32** %4, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @print_octets(i32* %190, i32* %191, i32 16)
  br label %251

193:                                              ; preds = %110, %110, %110, %110, %110, %110
  %194 = load i32, i32* %7, align 4
  %195 = sub nsw i32 %194, 6
  %196 = icmp slt i32 %195, 4
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.10 to i32*))
  br label %251

200:                                              ; preds = %193
  %201 = load i32*, i32** %4, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = call i32 @print_32bits_val(i32* %201, i32* %202)
  br label %251

204:                                              ; preds = %110
  %205 = load i32*, i32** %4, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sub nsw i32 %207, 6
  %209 = call i32 @l2tp_bearer_type_print(i32* %205, i32* %206, i32 %208)
  br label %251

210:                                              ; preds = %110
  %211 = load i32*, i32** %4, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sub nsw i32 %213, 6
  %215 = call i32 @l2tp_framing_type_print(i32* %211, i32* %212, i32 %214)
  br label %251

216:                                              ; preds = %110
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @l2tp_packet_proc_delay_print(i32* %217)
  br label %251

219:                                              ; preds = %110
  %220 = load i32*, i32** %4, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sub nsw i32 %222, 6
  %224 = call i32 @l2tp_proxy_auth_type_print(i32* %220, i32* %221, i32 %223)
  br label %251

225:                                              ; preds = %110
  %226 = load i32*, i32** %4, align 8
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %228, 6
  %230 = call i32 @l2tp_proxy_auth_id_print(i32* %226, i32* %227, i32 %229)
  br label %251

231:                                              ; preds = %110
  %232 = load i32*, i32** %4, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sub nsw i32 %234, 6
  %236 = call i32 @l2tp_call_errors_print(i32* %232, i32* %233, i32 %235)
  br label %251

237:                                              ; preds = %110
  %238 = load i32*, i32** %4, align 8
  %239 = load i32*, i32** %8, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sub nsw i32 %240, 6
  %242 = call i32 @l2tp_accm_print(i32* %238, i32* %239, i32 %241)
  br label %251

243:                                              ; preds = %110
  br label %251

244:                                              ; preds = %110
  %245 = load i32*, i32** %4, align 8
  %246 = load i32*, i32** %8, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sub nsw i32 %247, 6
  %249 = call i32 @l2tp_ppp_discon_cc_print(i32* %245, i32* %246, i32 %248)
  br label %251

250:                                              ; preds = %110
  br label %251

251:                                              ; preds = %250, %244, %243, %237, %231, %225, %219, %216, %210, %204, %200, %197, %189, %186, %176, %170, %164, %160, %157, %149, %146, %136, %130, %124, %118, %112
  br label %252

252:                                              ; preds = %251, %107
  %253 = load i32*, i32** %4, align 8
  %254 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.6 to i32*))
  br label %255

255:                                              ; preds = %252, %63
  %256 = load i32*, i32** %4, align 8
  %257 = load i32*, i32** %5, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* %7, align 4
  %263 = sub nsw i32 %261, %262
  call void @l2tp_avp_print(i32* %256, i32* %260, i32 %263)
  br label %267

264:                                              ; preds = %33, %28
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.11 to i32*))
  br label %267

267:                                              ; preds = %264, %255, %15
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @print_octets(i32*, i32*, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @l2tp_msgtype_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_result_code_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_proto_ver_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_framing_cap_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_bearer_cap_print(i32*, i32*, i32) #1

declare dso_local i32 @print_16bits_val(i32*, i32*) #1

declare dso_local i32 @print_string(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_q931_cc_print(i32*, i32*, i32) #1

declare dso_local i32 @print_32bits_val(i32*, i32*) #1

declare dso_local i32 @l2tp_bearer_type_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_framing_type_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_packet_proc_delay_print(i32*) #1

declare dso_local i32 @l2tp_proxy_auth_type_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_proxy_auth_id_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_call_errors_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_accm_print(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_ppp_discon_cc_print(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
