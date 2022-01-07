; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_get_soa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_get_soa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_MAXDNAME = common dso_local global i32 0, align 4
@NS_MAXMSG = common dso_local global i32 0, align 4
@ns_t_soa = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"get_soa: do_query('%s', %s) failed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"get_soa: CNAME or DNAME found\00", align 1
@ns_s_max = common dso_local global i32 0, align 4
@ns_f_rcode = common dso_local global i32 0, align 4
@ns_r_noerror = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"get_soa: ns_parserr(%s, %d) failed\00", align 1
@ns_o_query = common dso_local global i32 0, align 4
@ns_t_cname = common dso_local global i64 0, align 8
@ns_t_dname = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"get_soa: ns_samedomain('%s', '%s') == 0\00", align 1
@EPROTOTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"get_soa: ns_samename() || !ns_samedomain('%s', '%s')\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"get_soa: zname(%lu) too small (%lu)\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"get_soa: ns_name_uncompress failed\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"get_soa: save_ns failed\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"get_soa: out of labels\00", align 1
@EDESTADDRREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32, i8*, i64, i8*, i64, i32*)* @get_soa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_soa(i32 %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5, i8* %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %34 = load i32, i32* @NS_MAXDNAME, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %20, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %21, align 8
  store i32* null, i32** %22, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = trunc i64 %35 to i32
  %40 = call i64 @ns_makecanon(i8* %38, i8* %37, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %9
  br label %261

43:                                               ; preds = %9
  store i8* %37, i8** %12, align 8
  %44 = load i32, i32* @NS_MAXMSG, align 4
  %45 = call i32* @malloc(i32 %44)
  store i32* %45, i32** %22, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %261

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %257, %49
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  br label %51

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @ns_t_soa, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = call i32 @do_query(i32 %60, i8* %61, i64 %62, i64 %63, i32* %64, i32* %28)
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @p_class(i64 %70)
  %72 = load i32, i32* %23, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @DPRINTF(i8* %74)
  br label %261

76:                                               ; preds = %59
  %77 = load i32, i32* %23, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ns_s_max, align 4
  store i32 %81, i32* %27, align 4
  store i32 0, i32* %23, align 4
  br label %107

82:                                               ; preds = %76
  %83 = load i32, i32* %28, align 4
  %84 = load i32, i32* @ns_f_rcode, align 4
  %85 = call i64 @ns_msg_getflag(i32 %83, i32 %84)
  store i64 %85, i64* %29, align 8
  %86 = load i32, i32* %28, align 4
  %87 = call i32 @ns_msg_count(i32 %86, i32 129)
  store i32 %87, i32* %25, align 4
  %88 = load i32, i32* %28, align 4
  %89 = call i32 @ns_msg_count(i32 %88, i32 128)
  store i32 %89, i32* %26, align 4
  %90 = load i32, i32* %25, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load i64, i64* %29, align 8
  %94 = load i64, i64* @ns_r_noerror, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  store i32 129, i32* %27, align 4
  %97 = load i32, i32* %25, align 4
  store i32 %97, i32* %23, align 4
  br label %106

98:                                               ; preds = %92, %82
  %99 = load i32, i32* %26, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  store i32 128, i32* %27, align 4
  %102 = load i32, i32* %26, align 4
  store i32 %102, i32* %23, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ns_s_max, align 4
  store i32 %104, i32* %27, align 4
  store i32 0, i32* %23, align 4
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %96
  br label %107

107:                                              ; preds = %106, %79
  store i32 0, i32* %24, align 4
  br label %108

108:                                              ; preds = %225, %107
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %23, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %228

112:                                              ; preds = %108
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i64 @ns_parserr(i32* %28, i32 %113, i32 %114, i32* %32)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i32, i32* %27, align 4
  %119 = load i32, i32* @ns_o_query, align 4
  %120 = call i32 @p_section(i32 %118, i32 %119)
  %121 = load i32, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @DPRINTF(i8* %123)
  br label %261

125:                                              ; preds = %112
  %126 = load i32, i32* %32, align 4
  %127 = call i64 @ns_rr_type(i32 %126)
  %128 = load i64, i64* @ns_t_cname, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %32, align 4
  %132 = call i64 @ns_rr_type(i32 %131)
  %133 = load i64, i64* @ns_t_dname, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125
  br label %228

136:                                              ; preds = %130
  %137 = load i32, i32* %32, align 4
  %138 = call i64 @ns_rr_type(i32 %137)
  %139 = load i64, i64* @ns_t_soa, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %32, align 4
  %143 = call i64 @ns_rr_class(i32 %142)
  %144 = load i64, i64* %13, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %141, %136
  br label %225

147:                                              ; preds = %141
  %148 = load i32, i32* %32, align 4
  %149 = call i8* @ns_rr_name(i32 %148)
  store i8* %149, i8** %30, align 8
  %150 = load i32, i32* %27, align 4
  switch i32 %150, label %178 [
    i32 129, label %151
    i32 128, label %162
  ]

151:                                              ; preds = %147
  %152 = load i8*, i8** %12, align 8
  %153 = load i8*, i8** %30, align 8
  %154 = call i32 @ns_samedomain(i8* %152, i8* %153)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %12, align 8
  %158 = load i8*, i8** %30, align 8
  %159 = call i32 @DPRINTF(i8* %158)
  %160 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %160, i32* @errno, align 4
  br label %261

161:                                              ; preds = %151
  br label %180

162:                                              ; preds = %147
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** %30, align 8
  %165 = call i32 @ns_samename(i8* %163, i8* %164)
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %30, align 8
  %170 = call i32 @ns_samedomain(i8* %168, i8* %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167, %162
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %30, align 8
  %175 = call i32 @DPRINTF(i8* %174)
  %176 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %176, i32* @errno, align 4
  br label %261

177:                                              ; preds = %167
  br label %180

178:                                              ; preds = %147
  %179 = call i32 (...) @abort() #4
  unreachable

180:                                              ; preds = %177, %161
  %181 = load i8*, i8** %30, align 8
  %182 = call i32 @strlen(i8* %181)
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %16, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = load i64, i64* %16, align 8
  %189 = load i8*, i8** %30, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = sext i32 %190 to i64
  %192 = add i64 %191, 1
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 @DPRINTF(i8* %193)
  %195 = load i32, i32* @EMSGSIZE, align 4
  store i32 %195, i32* @errno, align 4
  br label %261

196:                                              ; preds = %180
  %197 = load i8*, i8** %15, align 8
  %198 = load i8*, i8** %30, align 8
  %199 = call i32 @strcpy(i8* %197, i8* %198)
  %200 = load i32, i32* %32, align 4
  %201 = call i32* @ns_rr_rdata(i32 %200)
  store i32* %201, i32** %31, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = load i32, i32* %28, align 4
  %204 = call i32 @ns_msg_end(i32 %203)
  %205 = load i32*, i32** %31, align 8
  %206 = load i8*, i8** %17, align 8
  %207 = load i64, i64* %18, align 8
  %208 = call i64 @ns_name_uncompress(i32* %202, i32 %204, i32* %205, i8* %206, i64 %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %196
  %211 = call i32 @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %261

212:                                              ; preds = %196
  %213 = load i32, i32* %11, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = load i64, i64* %13, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i32*, i32** %19, align 8
  %218 = call i64 @save_ns(i32 %213, i32* %28, i32 128, i8* %214, i64 %215, i32 %216, i32* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %261

222:                                              ; preds = %212
  %223 = load i32*, i32** %22, align 8
  %224 = call i32 @free(i32* %223)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %268

225:                                              ; preds = %146
  %226 = load i32, i32* %24, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %24, align 4
  br label %108

228:                                              ; preds = %135, %108
  %229 = load i8*, i8** %12, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %258

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %254, %234
  %236 = load i8*, i8** %12, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 46
  br i1 %239, label %240, label %257

240:                                              ; preds = %235
  %241 = load i8*, i8** %12, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 92
  br i1 %244, label %245, label %254

245:                                              ; preds = %240
  %246 = load i8*, i8** %12, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %12, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32, i32* @EMSGSIZE, align 4
  store i32 %252, i32* @errno, align 4
  br label %261

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %253, %240
  %255 = load i8*, i8** %12, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %12, align 8
  br label %235

257:                                              ; preds = %235
  br label %50

258:                                              ; preds = %233
  %259 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %260 = load i32, i32* @EDESTADDRREQ, align 4
  store i32 %260, i32* @errno, align 4
  br label %261

261:                                              ; preds = %258, %251, %220, %210, %187, %172, %156, %117, %68, %48, %42
  %262 = load i32*, i32** %22, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32*, i32** %22, align 8
  %266 = call i32 @free(i32* %265)
  br label %267

267:                                              ; preds = %264, %261
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %268

268:                                              ; preds = %267, %222
  %269 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %10, align 4
  ret i32 %270
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ns_makecanon(i8*, i8*, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @do_query(i32, i8*, i64, i64, i32*, i32*) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @p_class(i64) #2

declare dso_local i64 @ns_msg_getflag(i32, i32) #2

declare dso_local i32 @ns_msg_count(i32, i32) #2

declare dso_local i64 @ns_parserr(i32*, i32, i32, i32*) #2

declare dso_local i32 @p_section(i32, i32) #2

declare dso_local i64 @ns_rr_type(i32) #2

declare dso_local i64 @ns_rr_class(i32) #2

declare dso_local i8* @ns_rr_name(i32) #2

declare dso_local i32 @ns_samedomain(i8*, i8*) #2

declare dso_local i32 @ns_samename(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32* @ns_rr_rdata(i32) #2

declare dso_local i64 @ns_name_uncompress(i32*, i32, i32*, i8*, i64) #2

declare dso_local i32 @ns_msg_end(i32) #2

declare dso_local i64 @save_ns(i32, i32*, i32, i8*, i64, i32, i32*) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
