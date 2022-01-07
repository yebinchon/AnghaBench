; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_setDolp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dol.c_setDolp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@dolmod = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dolmcnt = common dso_local global i64 0, align 8
@dolp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@ERR_BADSUBST = common dso_local global i32 0, align 4
@dol_flag_a = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@STRNULL = common dso_local global i8* null, align 8
@seterr = common dso_local global i64 0, align 8
@ERR_OLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @setDolp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setDolp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 0), align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @dolmcnt, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** @dolp, align 8
  br label %247

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @Strsave(i8* %22)
  store i8* %23, i8** %2, align 8
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %235, %21
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 0), align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %238

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 115
  br i1 %34, label %35, label %195

35:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %6, align 1
  %41 = load i8, i8* %6, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load i8, i8* %6, align 1
  %45 = call i64 @letter(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %6, align 1
  %49 = call i64 @Isdigit(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %6, align 1
  %53 = call i64 @any(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %47, %43, %35
  %56 = load i32, i32* @ERR_BADSUBST, align 4
  %57 = call i32 @seterror(i32 %56)
  br label %238

58:                                               ; preds = %51
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %4, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %82, %58
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %72, %63
  %81 = phi i1 [ false, %63 ], [ %79, %72 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %63

85:                                               ; preds = %80
  %86 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %87 = load i64, i64* %4, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %90 = load i64, i64* %4, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %4, align 8
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %112, %85
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %4, align 8
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %102, %93
  %111 = phi i1 [ false, %93 ], [ %109, %102 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %93

115:                                              ; preds = %110
  %116 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strip(i8* %119)
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strip(i8* %121)
  %123 = load i8*, i8** %2, align 8
  %124 = call i32 @strip(i8* %123)
  %125 = load i8*, i8** %2, align 8
  store i8* %125, i8** %3, align 8
  br label %126

126:                                              ; preds = %185, %115
  %127 = load i8*, i8** %3, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i8* @Strstr(i8* %127, i8* %128)
  store i8* %129, i8** %3, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %183

132:                                              ; preds = %126
  %133 = load i8*, i8** %3, align 8
  %134 = load i8*, i8** %2, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load i8*, i8** %2, align 8
  %140 = call i32 @Strlen(i8* %139)
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %10, align 8
  %144 = sub i64 %142, %143
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %144, %145
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %13, align 8
  %148 = mul i64 %147, 1
  %149 = call i8* @xmalloc(i64 %148)
  store i8* %149, i8** %9, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %2, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @Strncpy(i8* %150, i8* %151, i32 %152)
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @Strcpy(i8* %157, i8* %158)
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8*, i8** %3, align 8
  %167 = load i64, i64* %10, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  %169 = call i32 @Strcpy(i8* %165, i8* %168)
  %170 = load i8*, i8** %2, align 8
  %171 = call i32 @xfree(i8* %170)
  %172 = load i8*, i8** %9, align 8
  store i8* %172, i8** %2, align 8
  store i8* %172, i8** %3, align 8
  %173 = load i8*, i8** %2, align 8
  %174 = load i64, i64* %13, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %13, align 8
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 0, i8* %176, align 1
  store i32 1, i32* %5, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i64, i64* %13, align 8
  %179 = trunc i64 %178 to i32
  %180 = icmp sge i32 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %132
  br label %188

182:                                              ; preds = %132
  br label %184

183:                                              ; preds = %126
  br label %188

184:                                              ; preds = %182
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* @dol_flag_a, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %126, label %188

188:                                              ; preds = %185, %183, %181
  %189 = load i8, i8* %6, align 1
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 -1
  store i8 %189, i8* %191, align 1
  %192 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %193 = load i64, i64* %4, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8 %189, i8* %194, align 1
  br label %224

195:                                              ; preds = %28
  br label %196

196:                                              ; preds = %220, %195
  %197 = load i8*, i8** %2, align 8
  %198 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dolmod, i32 0, i32 1), align 8
  %199 = load i64, i64* %4, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = call i8* @domod(i8* %197, i8 signext %201)
  store i8* %202, i8** %3, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %218

204:                                              ; preds = %196
  store i32 1, i32* %5, align 4
  %205 = load i8*, i8** %2, align 8
  %206 = load i8*, i8** %3, align 8
  %207 = call i64 @Strcmp(i8* %205, i8* %206)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i8*, i8** %2, align 8
  %211 = call i32 @xfree(i8* %210)
  %212 = load i8*, i8** %3, align 8
  store i8* %212, i8** %2, align 8
  br label %223

213:                                              ; preds = %204
  %214 = load i8*, i8** %2, align 8
  %215 = call i32 @xfree(i8* %214)
  %216 = load i8*, i8** %3, align 8
  store i8* %216, i8** %2, align 8
  br label %217

217:                                              ; preds = %213
  br label %219

218:                                              ; preds = %196
  br label %223

219:                                              ; preds = %217
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* @dol_flag_a, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %196, label %223

223:                                              ; preds = %220, %218, %209
  br label %224

224:                                              ; preds = %223, %188
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i64, i64* @dolmcnt, align 8
  %229 = load i64, i64* @INT_MAX, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i64, i64* @dolmcnt, align 8
  %233 = add nsw i64 %232, -1
  store i64 %233, i64* @dolmcnt, align 8
  br label %234

234:                                              ; preds = %231, %227, %224
  br label %235

235:                                              ; preds = %234
  %236 = load i64, i64* %4, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %4, align 8
  br label %24

238:                                              ; preds = %55, %24
  %239 = load i8*, i8** %2, align 8
  %240 = call i32 @addla(i8* %239)
  %241 = load i8*, i8** @STRNULL, align 8
  store i8* %241, i8** @dolp, align 8
  %242 = load i64, i64* @seterr, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load i32, i32* @ERR_OLD, align 4
  %246 = call i32 @stderror(i32 %245)
  br label %247

247:                                              ; preds = %19, %244, %238
  ret void
}

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i64 @letter(i8 signext) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i64 @any(i8*, i8 signext) #1

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @strip(i8*) #1

declare dso_local i8* @Strstr(i8*, i8*) #1

declare dso_local i32 @Strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @Strncpy(i8*, i8*, i32) #1

declare dso_local i32 @Strcpy(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @domod(i8*, i8 signext) #1

declare dso_local i64 @Strcmp(i8*, i8*) #1

declare dso_local i32 @addla(i8*) #1

declare dso_local i32 @stderror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
