; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_dname_buf_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_dname_buf_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_DOMAINNAME_UNDERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@LDNS_MAX_LABELLEN = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_LABEL_OVERFLOW = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_EMPTY_LABEL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32*)* @sldns_str2wire_dname_buf_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_str2wire_dname_buf_rel(i8* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, align 4
  %29 = call i32 @RET_ERR(i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  br label %264

30:                                               ; preds = %19
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 0, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @LDNS_WIREPARSE_ERR_DOMAINNAME_UNDERFLOW, align 4
  %35 = call i32 @RET_ERR(i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  br label %264

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 1, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %50 = call i32 @RET_ERR(i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  br label %264

51:                                               ; preds = %44
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 1, i64* %54, align 8
  %55 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %55, i32* %5, align 4
  br label %264

56:                                               ; preds = %39, %36
  store i64 0, i64* %10, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %62 = call i32 @RET_ERR(i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  br label %264

63:                                               ; preds = %56
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64* %65, i64** %12, align 8
  %66 = load i64*, i64** %7, align 8
  store i64* %66, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %11, align 8
  br label %68

68:                                               ; preds = %176, %63
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %181

72:                                               ; preds = %68
  %73 = load i64*, i64** %12, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = icmp uge i64* %73, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %81 = load i64*, i64** %12, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = ptrtoint i64* %81 to i64
  %84 = ptrtoint i64* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @RET_ERR(i32 %80, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %264

89:                                               ; preds = %72
  %90 = load i64*, i64** %12, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = icmp ugt i64* %90, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = load i32, i32* @LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, align 4
  %98 = load i64*, i64** %12, align 8
  %99 = load i64*, i64** %7, align 8
  %100 = ptrtoint i64* %98 to i64
  %101 = ptrtoint i64* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @RET_ERR(i32 %97, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %264

106:                                              ; preds = %89
  %107 = load i8*, i8** %11, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  switch i32 %109, label %168 [
    i32 46, label %110
    i32 92, label %146
  ]

110:                                              ; preds = %106
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  %116 = load i64*, i64** %12, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = ptrtoint i64* %116 to i64
  %119 = ptrtoint i64* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @RET_ERR(i32 %115, i32 %122)
  store i32 %123, i32* %5, align 4
  br label %264

124:                                              ; preds = %110
  %125 = load i64, i64* %14, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32, i32* @LDNS_WIREPARSE_ERR_EMPTY_LABEL, align 4
  %129 = load i64*, i64** %12, align 8
  %130 = load i64*, i64** %7, align 8
  %131 = ptrtoint i64* %129 to i64
  %132 = ptrtoint i64* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @RET_ERR(i32 %128, i32 %135)
  store i32 %136, i32* %5, align 4
  br label %264

137:                                              ; preds = %124
  %138 = load i64, i64* %14, align 8
  %139 = add nsw i64 %138, 1
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %10, align 8
  %142 = load i64*, i64** %12, align 8
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i64*, i64** %13, align 8
  store i64 %143, i64* %144, align 8
  store i64 0, i64* %14, align 8
  %145 = load i64*, i64** %12, align 8
  store i64* %145, i64** %13, align 8
  br label %175

146:                                              ; preds = %106
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8* %148, i8** %11, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = call i32 @sldns_parse_escape(i64* %149, i8** %11)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %146
  %153 = load i64*, i64** %12, align 8
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE, align 4
  %155 = load i64*, i64** %12, align 8
  %156 = load i64*, i64** %7, align 8
  %157 = ptrtoint i64* %155 to i64
  %158 = ptrtoint i64* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @RET_ERR(i32 %154, i32 %161)
  store i32 %162, i32* %5, align 4
  br label %264

163:                                              ; preds = %146
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 -1
  store i8* %165, i8** %11, align 8
  %166 = load i64, i64* %14, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %14, align 8
  br label %175

168:                                              ; preds = %106
  %169 = load i8*, i8** %11, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i64
  %172 = load i64*, i64** %12, align 8
  store i64 %171, i64* %172, align 8
  %173 = load i64, i64* %14, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %14, align 8
  br label %175

175:                                              ; preds = %168, %163, %137
  br label %176

176:                                              ; preds = %175
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %11, align 8
  %179 = load i64*, i64** %12, align 8
  %180 = getelementptr inbounds i64, i64* %179, i32 1
  store i64* %180, i64** %12, align 8
  br label %68

181:                                              ; preds = %68
  %182 = load i64, i64* %14, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %258

184:                                              ; preds = %181
  %185 = load i32*, i32** %9, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32*, i32** %9, align 8
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %187, %184
  %190 = load i64*, i64** %12, align 8
  %191 = load i64*, i64** %7, align 8
  %192 = load i64*, i64** %8, align 8
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = icmp uge i64* %190, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %189
  %197 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %198 = load i64*, i64** %12, align 8
  %199 = load i64*, i64** %7, align 8
  %200 = ptrtoint i64* %198 to i64
  %201 = ptrtoint i64* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @RET_ERR(i32 %197, i32 %204)
  store i32 %205, i32* %5, align 4
  br label %264

206:                                              ; preds = %189
  %207 = load i64*, i64** %12, align 8
  %208 = load i64*, i64** %7, align 8
  %209 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = icmp ugt i64* %207, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %206
  %214 = load i32, i32* @LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW, align 4
  %215 = load i64*, i64** %12, align 8
  %216 = load i64*, i64** %7, align 8
  %217 = ptrtoint i64* %215 to i64
  %218 = ptrtoint i64* %216 to i64
  %219 = sub i64 %217, %218
  %220 = sdiv exact i64 %219, 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 @RET_ERR(i32 %214, i32 %221)
  store i32 %222, i32* %5, align 4
  br label %264

223:                                              ; preds = %206
  %224 = load i64, i64* %14, align 8
  %225 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %227, label %237

227:                                              ; preds = %223
  %228 = load i32, i32* @LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, align 4
  %229 = load i64*, i64** %12, align 8
  %230 = load i64*, i64** %7, align 8
  %231 = ptrtoint i64* %229 to i64
  %232 = ptrtoint i64* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @RET_ERR(i32 %228, i32 %235)
  store i32 %236, i32* %5, align 4
  br label %264

237:                                              ; preds = %223
  %238 = load i64, i64* %14, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load i32, i32* @LDNS_WIREPARSE_ERR_EMPTY_LABEL, align 4
  %242 = load i64*, i64** %12, align 8
  %243 = load i64*, i64** %7, align 8
  %244 = ptrtoint i64* %242 to i64
  %245 = ptrtoint i64* %243 to i64
  %246 = sub i64 %244, %245
  %247 = sdiv exact i64 %246, 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @RET_ERR(i32 %241, i32 %248)
  store i32 %249, i32* %5, align 4
  br label %264

250:                                              ; preds = %237
  %251 = load i64, i64* %14, align 8
  %252 = add nsw i64 %251, 1
  %253 = load i64, i64* %10, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %10, align 8
  %255 = load i64, i64* %14, align 8
  %256 = load i64*, i64** %13, align 8
  store i64 %255, i64* %256, align 8
  %257 = load i64*, i64** %12, align 8
  store i64 0, i64* %257, align 8
  br label %258

258:                                              ; preds = %250, %181
  %259 = load i64, i64* %10, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %10, align 8
  %261 = load i64, i64* %10, align 8
  %262 = load i64*, i64** %8, align 8
  store i64 %261, i64* %262, align 8
  %263 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %258, %240, %227, %213, %196, %152, %127, %114, %96, %79, %60, %51, %48, %33, %27
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_parse_escape(i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
