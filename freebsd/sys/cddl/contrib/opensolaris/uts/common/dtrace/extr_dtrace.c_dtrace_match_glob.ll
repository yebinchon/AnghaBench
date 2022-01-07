; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_match_glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_match_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTRACE_PROBEKEY_MAXDEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @dtrace_match_glob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_match_glob(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DTRACE_PROBEKEY_MAXDEPTH, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %247

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %209, %187, %23
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %9, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %247

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  %35 = load i8, i8* %33, align 1
  store i8 %35, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %247

43:                                               ; preds = %32
  %44 = load i8, i8* %10, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %197 [
    i32 91, label %46
    i32 92, label %189
    i32 63, label %205
    i32 42, label %211
  ]

46:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %247

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 33
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = load i8, i8* %60, align 1
  store i8 %62, i8* %10, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %247

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %180, %66
  %68 = load i8, i8* %10, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %71, label %135

71:                                               ; preds = %67
  %72 = load i8, i8* %14, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 93
  br i1 %79, label %80, label %135

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  %83 = load i8, i8* %81, align 1
  store i8 %83, i8* %10, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %247

87:                                               ; preds = %80
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 92
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  %94 = load i8, i8* %92, align 1
  store i8 %94, i8* %10, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %247

98:                                               ; preds = %91, %87
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i8, i8* %9, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* %14, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i8, i8* %9, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* %10, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %101
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %117

116:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %247

117:                                              ; preds = %113
  br label %134

118:                                              ; preds = %98
  %119 = load i8, i8* %14, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* %9, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sle i32 %120, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load i8, i8* %9, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8, i8* %10, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sle i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %130, %124, %118
  br label %134

134:                                              ; preds = %133, %117
  br label %147

135:                                              ; preds = %75, %71, %67
  %136 = load i8, i8* %10, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 92
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %6, align 8
  %142 = load i8, i8* %140, align 1
  store i8 %142, i8* %10, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %247

146:                                              ; preds = %139, %135
  br label %147

147:                                              ; preds = %146, %134
  %148 = load i8, i8* %10, align 1
  store i8 %148, i8* %14, align 1
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load i8, i8* %9, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* %10, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %161

160:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %247

161:                                              ; preds = %157
  br label %172

162:                                              ; preds = %147
  %163 = load i8, i8* %9, align 1
  %164 = sext i8 %163 to i32
  %165 = load i8, i8* %10, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %168, %162
  br label %172

172:                                              ; preds = %171, %161
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %6, align 8
  %175 = load i8, i8* %173, align 1
  store i8 %175, i8* %10, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %247

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %179
  %181 = load i8, i8* %10, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 93
  br i1 %183, label %67, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %24

188:                                              ; preds = %184
  store i32 0, i32* %4, align 4
  br label %247

189:                                              ; preds = %43
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %6, align 8
  %192 = load i8, i8* %190, align 1
  store i8 %192, i8* %10, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %247

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %43, %196
  %198 = load i8, i8* %10, align 1
  %199 = sext i8 %198 to i32
  %200 = load i8, i8* %9, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %199, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %247

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %43, %204
  %206 = load i8, i8* %9, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %24

210:                                              ; preds = %205
  store i32 0, i32* %4, align 4
  br label %247

211:                                              ; preds = %43
  br label %212

212:                                              ; preds = %217, %211
  %213 = load i8*, i8** %6, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 42
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %6, align 8
  br label %212

220:                                              ; preds = %212
  %221 = load i8*, i8** %6, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 1, i32* %4, align 4
  br label %247

226:                                              ; preds = %220
  %227 = load i8*, i8** %8, align 8
  store i8* %227, i8** %5, align 8
  br label %228

228:                                              ; preds = %243, %226
  %229 = load i8*, i8** %5, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %228
  %234 = load i8*, i8** %5, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  %238 = call i32 @dtrace_match_glob(i8* %234, i8* %235, i32 %237)
  store i32 %238, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %4, align 4
  br label %247

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %5, align 8
  br label %228

246:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %246, %240, %225, %210, %203, %195, %188, %178, %160, %145, %116, %97, %86, %65, %50, %38, %31, %18
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
