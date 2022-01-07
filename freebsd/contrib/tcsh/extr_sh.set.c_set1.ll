; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_set1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_set1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32 }

@VAR_NOGLOB = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_NOMATCH = common dso_local global i32 0, align 4
@VAR_FIRST = common dso_local global i32 0, align 4
@VAR_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set1(i32* %0, i32** %1, %struct.varent* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.varent* %2, %struct.varent** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32**, i32*** %6, align 8
  store i32** %14, i32*** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @VAR_NOGLOB, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load i32**, i32*** %9, align 8
  %21 = call i32 @tglob(i32** %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i32**, i32*** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32** @globall(i32** %25, i32 %26)
  store i32** %27, i32*** %6, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = icmp eq i32** %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32**, i32*** %9, align 8
  %32 = call i32 @blkfree(i32** %31)
  %33 = load i32, i32* @ERR_NAME, align 4
  %34 = load i32, i32* @ERR_NOMATCH, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @stderror(i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32**, i32*** %9, align 8
  %39 = call i32 @blkfree(i32** %38)
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @VAR_FIRST, align 4
  %44 = load i32, i32* @VAR_LAST, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %249

48:                                               ; preds = %41
  %49 = load i32**, i32*** %6, align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %242

51:                                               ; preds = %48
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %242

56:                                               ; preds = %51
  %57 = load i32**, i32*** %6, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %242

61:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %62

73:                                               ; preds = %62
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @VAR_FIRST, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %79

79:                                               ; preds = %131, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %127, %83
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %130

88:                                               ; preds = %84
  %89 = load i32**, i32*** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %126

95:                                               ; preds = %88
  %96 = load i32**, i32*** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %95
  %103 = load i32**, i32*** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32**, i32*** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @Strcmp(i32* %107, i32* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %102
  %116 = load i32**, i32*** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @xfree(i32* %120)
  %122 = load i32**, i32*** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* null, i32** %125, align 8
  br label %130

126:                                              ; preds = %102, %95, %88
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %84

130:                                              ; preds = %115, %84
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %79

134:                                              ; preds = %79
  br label %201

135:                                              ; preds = %73
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @VAR_LAST, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %200

140:                                              ; preds = %135
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %196, %140
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %199

146:                                              ; preds = %141
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %192, %146
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %195

153:                                              ; preds = %149
  %154 = load i32**, i32*** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %191

160:                                              ; preds = %153
  %161 = load i32**, i32*** %6, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %191

167:                                              ; preds = %160
  %168 = load i32**, i32*** %6, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32**, i32*** %6, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i64 @Strcmp(i32* %172, i32* %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %167
  %181 = load i32**, i32*** %6, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @xfree(i32* %185)
  %187 = load i32**, i32*** %6, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %180, %167, %160, %153
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %149

195:                                              ; preds = %149
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %141

199:                                              ; preds = %141
  br label %200

200:                                              ; preds = %199, %135
  br label %201

201:                                              ; preds = %200, %134
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %225, %201
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %202
  %207 = load i32**, i32*** %6, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %224

213:                                              ; preds = %206
  %214 = load i32**, i32*** %6, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = load i32**, i32*** %6, align 8
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32*, i32** %219, i64 %222
  store i32* %218, i32** %223, align 8
  br label %224

224:                                              ; preds = %213, %206
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %202

228:                                              ; preds = %202
  br label %229

229:                                              ; preds = %238, %228
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %13, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32**, i32*** %6, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %229

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241, %56, %51, %48
  %243 = load i32, i32* @VAR_FIRST, align 4
  %244 = load i32, i32* @VAR_LAST, align 4
  %245 = or i32 %243, %244
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %8, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %8, align 4
  br label %249

249:                                              ; preds = %242, %41
  %250 = load i32*, i32** %5, align 8
  %251 = load i32**, i32*** %6, align 8
  %252 = load %struct.varent*, %struct.varent** %7, align 8
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @setq(i32* %250, i32** %251, %struct.varent* %252, i32 %253)
  ret void
}

declare dso_local i32 @tglob(i32**) #1

declare dso_local i32** @globall(i32**, i32) #1

declare dso_local i32 @blkfree(i32**) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @Strcmp(i32*, i32*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @setq(i32*, i32**, %struct.varent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
