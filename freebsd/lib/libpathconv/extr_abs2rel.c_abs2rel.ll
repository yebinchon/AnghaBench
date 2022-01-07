; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpathconv/extr_abs2rel.c_abs2rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpathconv/extr_abs2rel.c_abs2rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @abs2rel(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 47
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %9, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %237

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  br label %235

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
  br label %239

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %237

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %82, %50
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %67, %70
  br label %72

72:                                               ; preds = %64, %59, %54
  %73 = phi i1 [ false, %59 ], [ false, %54 ], [ %71, %64 ]
  br i1 %73, label %74, label %87

74:                                               ; preds = %72
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  br label %54

87:                                               ; preds = %72
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %143

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %143

103:                                              ; preds = %97, %87
  %104 = load i8*, i8** %11, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %11, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %113, label %143

113:                                              ; preds = %108
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %113, %103
  %120 = load i8*, i8** %8, align 8
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %14, align 8
  store i8 46, i8* %121, align 1
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 47
  br i1 %126, label %133, label %127

127:                                              ; preds = %119
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 47
  br i1 %132, label %133, label %136

133:                                              ; preds = %127, %119
  %134 = load i8*, i8** %14, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %14, align 8
  store i8 47, i8* %134, align 1
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i8*, i8** %14, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = icmp ugt i8* %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %237

141:                                              ; preds = %136
  %142 = load i8*, i8** %14, align 8
  store i8 0, i8* %142, align 1
  br label %235

143:                                              ; preds = %113, %108, %97, %92
  %144 = load i8*, i8** %10, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 47
  br i1 %152, label %163, label %153

153:                                              ; preds = %148, %143
  %154 = load i8*, i8** %10, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 47
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i8*, i8** %11, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158, %148
  %164 = load i8*, i8** %10, align 8
  store i8* %164, i8** %12, align 8
  br label %165

165:                                              ; preds = %163, %158, %153
  %166 = load i8*, i8** %8, align 8
  store i8* %166, i8** %14, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = ptrtoint i8* %168 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = getelementptr inbounds i8, i8* %167, i64 %172
  store i8* %173, i8** %11, align 8
  br label %174

174:                                              ; preds = %203, %165
  %175 = load i8*, i8** %11, align 8
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %178, label %206

178:                                              ; preds = %174
  %179 = load i8*, i8** %11, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 47
  br i1 %182, label %183, label %202

183:                                              ; preds = %178
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %183
  %190 = load i8*, i8** %14, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  %192 = load i8*, i8** %13, align 8
  %193 = icmp ugt i8* %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %237

195:                                              ; preds = %189
  %196 = load i8*, i8** %14, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %14, align 8
  store i8 46, i8* %196, align 1
  %198 = load i8*, i8** %14, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %14, align 8
  store i8 46, i8* %198, align 1
  %200 = load i8*, i8** %14, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %14, align 8
  store i8 47, i8* %200, align 1
  br label %202

202:                                              ; preds = %195, %183, %178
  br label %203

203:                                              ; preds = %202
  %204 = load i8*, i8** %11, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %11, align 8
  br label %174

206:                                              ; preds = %174
  %207 = load i8*, i8** %14, align 8
  %208 = load i8*, i8** %13, align 8
  %209 = icmp ugt i8* %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %237

211:                                              ; preds = %206
  %212 = load i8*, i8** %14, align 8
  store i8 0, i8* %212, align 1
  %213 = load i8*, i8** %12, align 8
  %214 = load i8, i8* %213, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %211
  %217 = load i8*, i8** %14, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  %220 = call i32 @strlen(i8* %219)
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %217, i64 %221
  %223 = load i8*, i8** %13, align 8
  %224 = icmp ugt i8* %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %237

226:                                              ; preds = %216
  %227 = load i8*, i8** %14, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = call i32 @strcpy(i8* %227, i8* %229)
  br label %234

231:                                              ; preds = %211
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 -1
  store i8* %233, i8** %14, align 8
  store i8 0, i8* %233, align 1
  br label %234

234:                                              ; preds = %231, %226
  br label %235

235:                                              ; preds = %234, %141, %30
  %236 = load i8*, i8** %8, align 8
  store i8* %236, i8** %5, align 8
  br label %239

237:                                              ; preds = %225, %210, %194, %140, %47, %29
  %238 = load i32, i32* @ERANGE, align 4
  store i32 %238, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %239

239:                                              ; preds = %237, %235, %42
  %240 = load i8*, i8** %5, align 8
  ret i8* %240
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
