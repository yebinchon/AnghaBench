; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_pathmatch.c_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATHMATCH_NO_ANCHOR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i8* @pm_slashskip(i8* %22)
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %20, %14, %3
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i8* @pm_slashskip(i8* %38)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %36, %30, %24
  br label %41

41:                                               ; preds = %250, %40
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %240 [
    i32 0, label %45
    i32 63, label %66
    i32 42, label %73
    i32 91, label %104
    i32 92, label %164
    i32 47, label %190
    i32 36, label %221
  ]

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %255

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @pm_slashskip(i8* %58)
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %255

66:                                               ; preds = %41
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %255

72:                                               ; preds = %66
  br label %250

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  br label %74

82:                                               ; preds = %74
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %255

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @archive_pathmatch(i8* %94, i8* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %4, align 4
  br label %255

100:                                              ; preds = %93
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  br label %89

103:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %255

104:                                              ; preds = %41
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %8, align 8
  br label %107

107:                                              ; preds = %133, %104
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 93
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  br i1 %118, label %119, label %136

119:                                              ; preds = %117
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 92
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  br label %133

133:                                              ; preds = %130, %124, %119
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  br label %107

136:                                              ; preds = %117
  %137 = load i8*, i8** %8, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 93
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i8, i8* %145, align 1
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @pm_list(i8* %143, i8* %144, i8 signext %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %255

151:                                              ; preds = %141
  %152 = load i8*, i8** %8, align 8
  store i8* %152, i8** %5, align 8
  br label %250

153:                                              ; preds = %136
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %255

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  br label %250

164:                                              ; preds = %41
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load i8*, i8** %6, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 92
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %255

176:                                              ; preds = %170
  br label %189

177:                                              ; preds = %164
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %5, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8*, i8** %6, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %255

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %176
  br label %250

190:                                              ; preds = %41
  %191 = load i8*, i8** %6, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 47
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i8*, i8** %6, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 0, i32* %4, align 4
  br label %255

201:                                              ; preds = %195, %190
  %202 = load i8*, i8** %5, align 8
  %203 = call i8* @pm_slashskip(i8* %202)
  store i8* %203, i8** %5, align 8
  %204 = load i8*, i8** %6, align 8
  %205 = call i8* @pm_slashskip(i8* %204)
  store i8* %205, i8** %6, align 8
  %206 = load i8*, i8** %5, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %201
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 1, i32* %4, align 4
  br label %255

216:                                              ; preds = %210, %201
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 -1
  store i8* %218, i8** %5, align 8
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 -1
  store i8* %220, i8** %6, align 8
  br label %250

221:                                              ; preds = %41
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %221
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @PATHMATCH_NO_ANCHOR_END, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i8*, i8** %6, align 8
  %234 = call i8* @pm_slashskip(i8* %233)
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 0
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %4, align 4
  br label %255

239:                                              ; preds = %227, %221
  br label %240

240:                                              ; preds = %41, %239
  %241 = load i8*, i8** %5, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = load i8*, i8** %6, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %243, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  store i32 0, i32* %4, align 4
  br label %255

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249, %216, %189, %163, %151, %72
  %251 = load i8*, i8** %5, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %5, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %6, align 8
  br label %41

255:                                              ; preds = %248, %232, %215, %200, %187, %175, %161, %150, %103, %99, %87, %71, %60, %56
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i8* @pm_slashskip(i8*) #1

declare dso_local i32 @archive_pathmatch(i8*, i8*, i32) #1

declare dso_local i32 @pm_list(i8*, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
