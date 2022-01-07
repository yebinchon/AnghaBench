; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_compatpathfind.c_canonicalize_pathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_compatpathfind.c_canonicalize_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @canonicalize_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @canonicalize_pathname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %244

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 47, i32 46
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %232, %229, %168, %102, %13
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %233

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 47
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i1 [ false, %29 ], [ %44, %37 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %29

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  store i32 %51, i32* %5, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %233

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %69, %60
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %61

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i32 @strcpy(i8* %82, i8* %86)
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %77, %72
  %91 = load i32, i32* %5, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 92
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %21

103:                                              ; preds = %93, %90
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %106, %103
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 46
  br i1 %120, label %121, label %135

121:                                              ; preds = %113
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %121, %106
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 0, i8* %134, align 1
  br label %233

135:                                              ; preds = %121, %113
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 46
  br i1 %142, label %143, label %232

143:                                              ; preds = %135
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 47
  br i1 %151, label %152, label %170

152:                                              ; preds = %143
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = call i32 @strcpy(i8* %156, i8* %161)
  %163 = load i32, i32* %5, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %168

166:                                              ; preds = %152
  %167 = load i32, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi i32 [ 0, %165 ], [ %167, %166 ]
  store i32 %169, i32* %4, align 4
  br label %21

170:                                              ; preds = %143
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 46
  br i1 %178, label %179, label %231

179:                                              ; preds = %170
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 47
  br i1 %187, label %196, label %188

188:                                              ; preds = %179
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %231, label %196

196:                                              ; preds = %188, %179
  br label %197

197:                                              ; preds = %211, %196
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %5, align 4
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 47
  br label %209

209:                                              ; preds = %201, %197
  %210 = phi i1 [ false, %197 ], [ %208, %201 ]
  br i1 %210, label %211, label %212

211:                                              ; preds = %209
  br label %197

212:                                              ; preds = %209
  %213 = load i8*, i8** %7, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8*, i8** %7, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = getelementptr inbounds i8, i8* %221, i64 2
  %223 = call i32 @strcpy(i8* %217, i8* %222)
  %224 = load i32, i32* %5, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %212
  br label %229

227:                                              ; preds = %212
  %228 = load i32, i32* %5, align 4
  br label %229

229:                                              ; preds = %227, %226
  %230 = phi i32 [ 0, %226 ], [ %228, %227 ]
  store i32 %230, i32* %4, align 4
  br label %21

231:                                              ; preds = %188, %170
  br label %232

232:                                              ; preds = %231, %135
  br label %21

233:                                              ; preds = %129, %59, %21
  %234 = load i8*, i8** %7, align 8
  %235 = load i8, i8* %234, align 1
  %236 = icmp ne i8 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %233
  %238 = load i8, i8* %6, align 1
  %239 = load i8*, i8** %7, align 8
  store i8 %238, i8* %239, align 1
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  store i8 0, i8* %241, align 1
  br label %242

242:                                              ; preds = %237, %233
  %243 = load i8*, i8** %7, align 8
  store i8* %243, i8** %2, align 8
  br label %244

244:                                              ; preds = %242, %12
  %245 = load i8*, i8** %2, align 8
  ret i8* %245
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
