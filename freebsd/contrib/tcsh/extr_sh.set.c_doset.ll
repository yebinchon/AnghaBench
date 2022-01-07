; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_doset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_doset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@VAR_READWRITE = common dso_local global i32 0, align 4
@STRmr = common dso_local global i32 0, align 4
@VAR_READONLY = common dso_local global i32 0, align 4
@STRmf = common dso_local global i32 0, align 4
@STRml = common dso_local global i32 0, align 4
@shvhed = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_VARBEGIN = common dso_local global i32 0, align 4
@ERR_VARALNUM = common dso_local global i32 0, align 4
@STRequal = common dso_local global i32 0, align 4
@STRLparen = common dso_local global i32 0, align 4
@ERR_SYNTAX = common dso_local global i32 0, align 4
@ERR_MISSING = common dso_local global i32 0, align 4
@VAR_FIRST = common dso_local global i32 0, align 4
@VAR_LAST = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doset(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %16 = load i32, i32* @VAR_READWRITE, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.command*, %struct.command** %4, align 8
  %18 = call i32 @USE(%struct.command* %17)
  %19 = load i8**, i8*** %3, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %3, align 8
  br label %21

21:                                               ; preds = %68, %2
  store i32 0, i32* %13, align 4
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @STRmr, align 4
  %29 = call i64 @eq(i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @VAR_READONLY, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i8**, i8*** %3, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %3, align 8
  store i32 1, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %25, %21
  %36 = load i8**, i8*** %3, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @STRmf, align 4
  %43 = call i64 @eq(i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  %49 = load i8**, i8*** %3, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %3, align 8
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %48, %45, %39, %35
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i8**, i8*** %3, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @STRml, align 4
  %59 = call i64 @eq(i8* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  %65 = load i8**, i8*** %3, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %3, align 8
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %61, %55, %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %21, label %71

71:                                               ; preds = %68
  %72 = load i8**, i8*** %3, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %3, align 8
  %74 = load i8*, i8** %72, align 8
  store i8* %74, i8** %5, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @plist(i32* @shvhed, i32 %78)
  br label %269

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %264, %80
  store i32 0, i32* %8, align 4
  %82 = load i8*, i8** %5, align 8
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @letter(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @ERR_NAME, align 4
  %89 = load i32, i32* @ERR_VARBEGIN, align 4
  %90 = or i32 %88, %89
  %91 = call i32 (i32, ...) @stderror(i32 %90)
  br label %92

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %96, %92
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @alnum(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %93, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 91
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @getinx(i8* %109, i32* %9)
  store i8* %110, i8** %5, align 8
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 61
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32, i32* @ERR_NAME, align 4
  %123 = load i32, i32* @ERR_VARALNUM, align 4
  %124 = or i32 %122, %123
  %125 = call i32 (i32, ...) @stderror(i32 %124)
  br label %126

126:                                              ; preds = %121, %116, %111
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 61
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  store i8 0, i8* %132, align 1
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = load i8**, i8*** %3, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i8**, i8*** %3, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 40
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i8**, i8*** %3, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i32 1
  store i8** %150, i8*** %3, align 8
  %151 = load i8*, i8** %149, align 8
  store i8* %151, i8** %5, align 8
  br label %152

152:                                              ; preds = %148, %142, %138, %131
  br label %174

153:                                              ; preds = %126
  %154 = load i8**, i8*** %3, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load i8**, i8*** %3, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* @STRequal, align 4
  %161 = call i64 @eq(i8* %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load i8**, i8*** %3, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %3, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i8**, i8*** %3, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %3, align 8
  %171 = load i8*, i8** %169, align 8
  store i8* %171, i8** %5, align 8
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %157, %153
  br label %174

174:                                              ; preds = %173, %152
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* @STRLparen, align 4
  %177 = call i64 @eq(i8* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %237

179:                                              ; preds = %174
  %180 = load i8**, i8*** %3, align 8
  store i8** %180, i8*** %14, align 8
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, i32* @ERR_NAME, align 4
  %185 = load i32, i32* @ERR_SYNTAX, align 4
  %186 = or i32 %184, %185
  %187 = call i32 (i32, ...) @stderror(i32 %186)
  br label %188

188:                                              ; preds = %183, %179
  br label %189

189:                                              ; preds = %205, %188
  %190 = load i8**, i8*** %14, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* @ERR_NAME, align 4
  %195 = load i32, i32* @ERR_MISSING, align 4
  %196 = or i32 %194, %195
  %197 = call i32 (i32, ...) @stderror(i32 %196, i32 41)
  br label %198

198:                                              ; preds = %193, %189
  %199 = load i8**, i8*** %14, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 41
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %208

205:                                              ; preds = %198
  %206 = load i8**, i8*** %14, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i32 1
  store i8** %207, i8*** %14, align 8
  br label %189

208:                                              ; preds = %204
  %209 = load i8**, i8*** %14, align 8
  %210 = load i8*, i8** %209, align 8
  store i8* %210, i8** %5, align 8
  %211 = load i8**, i8*** %14, align 8
  store i8* null, i8** %211, align 8
  %212 = load i8**, i8*** %3, align 8
  %213 = call i8** @saveblk(i8** %212)
  store i8** %213, i8*** %7, align 8
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %208
  %217 = load i32, i32* @VAR_FIRST, align 4
  %218 = load i32, i32* %10, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %10, align 4
  br label %228

220:                                              ; preds = %208
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i32, i32* @VAR_LAST, align 4
  %225 = load i32, i32* %10, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %10, align 4
  br label %227

227:                                              ; preds = %223, %220
  br label %228

228:                                              ; preds = %227, %216
  %229 = load i8*, i8** %6, align 8
  %230 = load i8**, i8*** %7, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @set1(i8* %229, i8** %230, i32* @shvhed, i32 %231)
  %233 = load i8*, i8** %5, align 8
  %234 = load i8**, i8*** %14, align 8
  store i8* %233, i8** %234, align 8
  %235 = load i8**, i8*** %14, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 1
  store i8** %236, i8*** %3, align 8
  br label %261

237:                                              ; preds = %174
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load i8*, i8** %5, align 8
  %242 = call i8* @Strsave(i8* %241)
  store i8* %242, i8** %15, align 8
  %243 = load i8*, i8** %15, align 8
  %244 = load i32, i32* @xfree, align 4
  %245 = call i32 @cleanup_push(i8* %243, i32 %244)
  %246 = load i8*, i8** %6, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i8*, i8** %15, align 8
  %249 = call i32 @asx(i8* %246, i32 %247, i8* %248)
  %250 = load i8*, i8** %15, align 8
  %251 = call i32 @cleanup_ignore(i8* %250)
  %252 = load i8*, i8** %15, align 8
  %253 = call i32 @cleanup_until(i8* %252)
  br label %260

254:                                              ; preds = %237
  %255 = load i8*, i8** %6, align 8
  %256 = load i8*, i8** %5, align 8
  %257 = call i8* @Strsave(i8* %256)
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @setv(i8* %255, i8* %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %240
  br label %261

261:                                              ; preds = %260, %228
  %262 = load i8*, i8** %6, align 8
  %263 = call i32 @update_vars(i8* %262)
  br label %264

264:                                              ; preds = %261
  %265 = load i8**, i8*** %3, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i32 1
  store i8** %266, i8*** %3, align 8
  %267 = load i8*, i8** %265, align 8
  store i8* %267, i8** %5, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %81, label %269

269:                                              ; preds = %77, %264
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i64 @eq(i8*, i32) #1

declare dso_local i32 @plist(i32*, i32) #1

declare dso_local i32 @letter(i8 signext) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i64 @alnum(i8 signext) #1

declare dso_local i8* @getinx(i8*, i32*) #1

declare dso_local i8** @saveblk(i8**) #1

declare dso_local i32 @set1(i8*, i8**, i32*, i32) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @asx(i8*, i32, i8*) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @setv(i8*, i8*, i32) #1

declare dso_local i32 @update_vars(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
