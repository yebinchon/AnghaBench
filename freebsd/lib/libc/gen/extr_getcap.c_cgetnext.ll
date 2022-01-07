; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSIZE = common dso_local global i32 0, align 4
@dbp = common dso_local global i8** null, align 8
@pfp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@toprec = common dso_local global i8* null, align 8
@gottoprec = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@slash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgetnext(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @BSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* @BSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %27 = load i8**, i8*** @dbp, align 8
  %28 = icmp eq i8** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  store i8** %30, i8*** @dbp, align 8
  br label %31

31:                                               ; preds = %29, %2
  %32 = load i32*, i32** @pfp, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8**, i8*** @dbp, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** @pfp, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @cgetclose()
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

41:                                               ; preds = %34, %31
  br label %42

42:                                               ; preds = %125, %96, %87, %41
  %43 = load i8*, i8** @toprec, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @gottoprec, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  store i32 1, i32* @gottoprec, align 4
  %49 = load i8*, i8** @toprec, align 8
  store i8* %49, i8** %12, align 8
  br label %137

50:                                               ; preds = %45, %42
  %51 = load i32*, i32** @pfp, align 8
  %52 = call i8* @fgetln(i32* %51, i64* %6)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %88

55:                                               ; preds = %50
  %56 = load i32*, i32** @pfp, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %55
  %59 = load i32*, i32** @pfp, align 8
  %60 = call i32 @ferror(i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32*, i32** @pfp, align 8
  %67 = call i32 @fclose(i32* %66)
  store i32* null, i32** @pfp, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = call i32 (...) @cgetclose()
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

73:                                               ; preds = %65
  %74 = load i8**, i8*** @dbp, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** @dbp, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (...) @cgetclose()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

80:                                               ; preds = %73
  %81 = load i8**, i8*** @dbp, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32* @fopen(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %83, i32** @pfp, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 (...) @cgetclose()
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

87:                                               ; preds = %80
  br label %42

88:                                               ; preds = %55, %50
  %89 = load i8*, i8** %12, align 8
  %90 = load i64, i64* %6, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %6, align 8
  %95 = icmp eq i64 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* @slash, align 4
  br label %42

97:                                               ; preds = %93
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @isspace(i8 zeroext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 58
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 35
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @slash, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112, %107, %102, %97
  %116 = load i8*, i8** %12, align 8
  %117 = load i64, i64* %6, align 8
  %118 = sub i64 %117, 2
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 92
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 1, i32* @slash, align 4
  br label %125

124:                                              ; preds = %115
  store i32 0, i32* @slash, align 4
  br label %125

125:                                              ; preds = %124, %123
  br label %42

126:                                              ; preds = %112
  %127 = load i8*, i8** %12, align 8
  %128 = load i64, i64* %6, align 8
  %129 = sub i64 %128, 2
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 92
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i32 1, i32* @slash, align 4
  br label %136

135:                                              ; preds = %126
  store i32 0, i32* @slash, align 4
  br label %136

136:                                              ; preds = %135, %134
  br label %137

137:                                              ; preds = %136, %48
  store i32 0, i32* %7, align 4
  store i8* %26, i8** %14, align 8
  br label %138

138:                                              ; preds = %203, %137
  %139 = load i8*, i8** %12, align 8
  store i8* %139, i8** %11, align 8
  br label %140

140:                                              ; preds = %164, %138
  %141 = load i8*, i8** %11, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %140
  %146 = load i8*, i8** %11, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 58
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8*, i8** %14, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %14, align 8
  store i8 58, i8* %151, align 1
  store i32 1, i32* %7, align 4
  br label %167

153:                                              ; preds = %145
  %154 = load i8*, i8** %11, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 92
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %167

159:                                              ; preds = %153
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %160, align 1
  %162 = load i8*, i8** %14, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %14, align 8
  store i8 %161, i8* %162, align 1
  br label %164

164:                                              ; preds = %159
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %11, align 8
  br label %140

167:                                              ; preds = %158, %150, %140
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i8*, i8** %14, align 8
  store i8 0, i8* %171, align 1
  br label %204

172:                                              ; preds = %167
  %173 = load i32*, i32** @pfp, align 8
  %174 = call i8* @fgetln(i32* %173, i64* %6)
  store i8* %174, i8** %12, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %197

177:                                              ; preds = %172
  %178 = load i32*, i32** @pfp, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %197

180:                                              ; preds = %177
  %181 = load i32*, i32** @pfp, align 8
  %182 = call i32 @ferror(i32* %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* @errno, align 4
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %185, %180
  %188 = load i32*, i32** @pfp, align 8
  %189 = call i32 @fclose(i32* %188)
  store i32* null, i32** @pfp, align 8
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = call i32 (...) @cgetclose()
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

195:                                              ; preds = %187
  %196 = call i32 (...) @cgetclose()
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

197:                                              ; preds = %177, %172
  %198 = load i8*, i8** %12, align 8
  %199 = load i64, i64* %6, align 8
  %200 = sub i64 %199, 1
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202
  br label %138

204:                                              ; preds = %170
  store i8* %23, i8** %13, align 8
  store i8* %26, i8** %11, align 8
  br label %205

205:                                              ; preds = %227, %204
  %206 = load i8*, i8** %11, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %230

210:                                              ; preds = %205
  %211 = load i8*, i8** %11, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 124
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = load i8*, i8** %11, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 58
  br i1 %219, label %220, label %221

220:                                              ; preds = %215, %210
  br label %230

221:                                              ; preds = %215
  %222 = load i8*, i8** %11, align 8
  %223 = load i8, i8* %222, align 1
  %224 = load i8*, i8** %13, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %13, align 8
  store i8 %223, i8* %224, align 1
  br label %226

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %226
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %11, align 8
  br label %205

230:                                              ; preds = %220, %205
  %231 = load i8*, i8** %13, align 8
  store i8 0, i8* %231, align 1
  %232 = load i8**, i8*** %4, align 8
  %233 = load i8**, i8*** %5, align 8
  %234 = call i32 @getent(i8** %232, i32* %18, i8** %233, i32 -1, i8* %23, i32 0, i32* null)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp eq i32 %235, -2
  br i1 %236, label %240, label %237

237:                                              ; preds = %230
  %238 = load i32, i32* %10, align 4
  %239 = icmp eq i32 %238, -3
  br i1 %239, label %240, label %242

240:                                              ; preds = %237, %230
  %241 = call i32 (...) @cgetclose()
  br label %242

242:                                              ; preds = %240, %237
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %245

245:                                              ; preds = %242, %195, %192, %85, %78, %70, %39
  %246 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @cgetclose(...) #2

declare dso_local i8* @fgetln(i32*, i64*) #2

declare dso_local i32 @ferror(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @getent(i8**, i32*, i8**, i32, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
