; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpathconv/extr_rel2abs.c_rel2abs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpathconv/extr_rel2abs.c_rel2abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"..\00\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rel2abs(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %9, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %231

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  br label %229

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 47
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %233

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %231

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %14, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %103, label %61

61:                                               ; preds = %57, %50
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %231

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcpy(i8* %67, i8* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load i64, i64* %14, align 8
  %80 = icmp ugt i64 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i8*, i8** %13, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %78
  br label %87

84:                                               ; preds = %66
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %84, %83
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 47
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %13, align 8
  store i8 47, i8* %94, align 1
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = icmp ugt i8* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %231

100:                                              ; preds = %93
  %101 = load i8*, i8** %13, align 8
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %100, %87
  br label %229

103:                                              ; preds = %57
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %11, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 47
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %114, i8** %11, align 8
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i8*, i8** %6, align 8
  store i8* %116, i8** %10, align 8
  br label %117

117:                                              ; preds = %181, %115
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 46
  br label %127

127:                                              ; preds = %122, %117
  %128 = phi i1 [ false, %117 ], [ %126, %122 ]
  br i1 %128, label %129, label %182

129:                                              ; preds = %127
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @strncmp(i8* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %150, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  store i8* %135, i8** %10, align 8
  br label %136

136:                                              ; preds = %148, %133
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp ugt i8* %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 -1
  store i8* %142, i8** %11, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 47
  br label %146

146:                                              ; preds = %140, %136
  %147 = phi i1 [ false, %136 ], [ %145, %140 ]
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  br label %136

149:                                              ; preds = %146
  br label %181

150:                                              ; preds = %129
  %151 = load i8*, i8** %10, align 8
  %152 = call i32 @strncmp(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %156, i8** %10, align 8
  br label %180

157:                                              ; preds = %150
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @strncmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %178, label %161

161:                                              ; preds = %157
  %162 = load i8*, i8** %10, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  store i8* %163, i8** %10, align 8
  br label %164

164:                                              ; preds = %176, %161
  %165 = load i8*, i8** %11, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ugt i8* %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i8*, i8** %11, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %170, i8** %11, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 47
  br label %174

174:                                              ; preds = %168, %164
  %175 = phi i1 [ false, %164 ], [ %173, %168 ]
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  br label %164

177:                                              ; preds = %174
  br label %179

178:                                              ; preds = %157
  br label %182

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179, %154
  br label %181

181:                                              ; preds = %180, %149
  br label %117

182:                                              ; preds = %178, %127
  %183 = load i8*, i8** %11, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  store i64 %187, i64* %14, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* %9, align 8
  %190 = icmp uge i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  br label %231

192:                                              ; preds = %182
  %193 = load i8*, i8** %8, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load i64, i64* %14, align 8
  %196 = call i32 @strncpy(i8* %193, i8* %194, i64 %195)
  %197 = load i8*, i8** %8, align 8
  %198 = load i64, i64* %14, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %13, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %192
  %205 = load i8*, i8** %10, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 -1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 47
  br i1 %209, label %213, label %210

210:                                              ; preds = %204
  %211 = load i64, i64* %14, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %204, %192
  %214 = load i8*, i8** %13, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %13, align 8
  store i8 47, i8* %214, align 1
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i8*, i8** %13, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = call i32 @strlen(i8* %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8*, i8** %12, align 8
  %223 = icmp ugt i8* %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  br label %231

225:                                              ; preds = %216
  %226 = load i8*, i8** %13, align 8
  %227 = load i8*, i8** %10, align 8
  %228 = call i32 @strcpy(i8* %226, i8* %227)
  br label %229

229:                                              ; preds = %225, %102, %30
  %230 = load i8*, i8** %8, align 8
  store i8* %230, i8** %5, align 8
  br label %233

231:                                              ; preds = %224, %191, %99, %65, %47, %29
  %232 = load i32, i32* @ERANGE, align 4
  store i32 %232, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %233

233:                                              ; preds = %231, %229, %42
  %234 = load i8*, i8** %5, align 8
  ret i8* %234
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
