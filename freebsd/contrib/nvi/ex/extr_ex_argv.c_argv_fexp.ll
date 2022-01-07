; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_fexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_fexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32* }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"115|No previous command to replace \22!\22\00", align 1
@E_MODIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"116|No filename to substitute for %%\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"117|No filename to substitute for #\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, i64, i32*, i64*, i32**, i64*, i32)* @argv_fexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argv_fexp(%struct.TYPE_11__* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64* %5, i32** %6, i64* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64* %5, i64** %16, align 8
  store i32** %6, i32*** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32 %8, i32* %19, align 4
  %29 = load i32**, i32*** %17, align 8
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %26, align 8
  %31 = load i64*, i64** %18, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %22, align 8
  %33 = load i64*, i64** %16, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %23, align 8
  br label %35

35:                                               ; preds = %227, %9
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %232

38:                                               ; preds = %35
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %204 [
    i32 33, label %41
    i32 37, label %89
    i32 35, label %136
    i32 92, label %180
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %205

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = call %struct.TYPE_12__* @EXP(%struct.TYPE_11__* %46)
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %20, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = load i32, i32* @M_ERR, align 4
  %55 = call i32 @msgq(%struct.TYPE_11__* %53, i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %257

56:                                               ; preds = %45
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @STRLEN(i32* %59)
  store i64 %60, i64* %25, align 8
  %61 = load i64, i64* %23, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %23, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %26, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  store i64 %68, i64* %24, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %70 = load i32*, i32** %26, align 8
  %71 = load i64, i64* %22, align 8
  %72 = load i64, i64* %23, align 8
  %73 = call i32 @ADD_SPACE_RETW(%struct.TYPE_11__* %69, i32* %70, i64 %71, i64 %72)
  %74 = load i32*, i32** %26, align 8
  %75 = load i64, i64* %24, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %25, align 8
  %82 = call i32 @MEMCPY(i32* %77, i32* %80, i64 %81)
  %83 = load i64, i64* %25, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* @E_MODIFY, align 4
  %88 = call i32 @F_SET(i32* %86, i32 %87)
  br label %226

89:                                               ; preds = %38
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %21, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = load i32, i32* @M_ERR, align 4
  %99 = call i32 @msgq(%struct.TYPE_11__* %97, i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %257

100:                                              ; preds = %89
  %101 = load i8*, i8** %21, align 8
  %102 = call i64 @strlen(i8* %101)
  store i64 %102, i64* %25, align 8
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* %23, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %23, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %26, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  store i64 %111, i64* %24, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = load i32*, i32** %26, align 8
  %114 = load i64, i64* %22, align 8
  %115 = load i64, i64* %23, align 8
  %116 = call i32 @ADD_SPACE_RETW(%struct.TYPE_11__* %112, i32* %113, i64 %114, i64 %115)
  %117 = load i32*, i32** %26, align 8
  %118 = load i64, i64* %24, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %15, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = load i64, i64* %25, align 8
  %123 = load i32*, i32** %27, align 8
  %124 = load i64, i64* %28, align 8
  %125 = call i32 @CHAR2INT(%struct.TYPE_11__* %120, i8* %121, i64 %122, i32* %123, i64 %124)
  %126 = load i32*, i32** %15, align 8
  %127 = load i32*, i32** %27, align 8
  %128 = load i64, i64* %28, align 8
  %129 = call i32 @MEMCPY(i32* %126, i32* %127, i64 %128)
  %130 = load i64, i64* %28, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 %130
  store i32* %132, i32** %15, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @E_MODIFY, align 4
  %135 = call i32 @F_SET(i32* %133, i32 %134)
  br label %226

136:                                              ; preds = %38
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %21, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %143 = load i32, i32* @M_ERR, align 4
  %144 = call i32 @msgq(%struct.TYPE_11__* %142, i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %257

145:                                              ; preds = %136
  %146 = load i8*, i8** %21, align 8
  %147 = call i64 @strlen(i8* %146)
  store i64 %147, i64* %25, align 8
  %148 = load i64, i64* %23, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %23, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i32*, i32** %26, align 8
  %152 = ptrtoint i32* %150 to i64
  %153 = ptrtoint i32* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  store i64 %155, i64* %24, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %157 = load i32*, i32** %26, align 8
  %158 = load i64, i64* %22, align 8
  %159 = load i64, i64* %23, align 8
  %160 = call i32 @ADD_SPACE_RETW(%struct.TYPE_11__* %156, i32* %157, i64 %158, i64 %159)
  %161 = load i32*, i32** %26, align 8
  %162 = load i64, i64* %24, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %15, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %165 = load i8*, i8** %21, align 8
  %166 = load i64, i64* %25, align 8
  %167 = load i32*, i32** %27, align 8
  %168 = load i64, i64* %28, align 8
  %169 = call i32 @CHAR2INT(%struct.TYPE_11__* %164, i8* %165, i64 %166, i32* %167, i64 %168)
  %170 = load i32*, i32** %15, align 8
  %171 = load i32*, i32** %27, align 8
  %172 = load i64, i64* %28, align 8
  %173 = call i32 @MEMCPY(i32* %170, i32* %171, i64 %172)
  %174 = load i64, i64* %28, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 %174
  store i32* %176, i32** %15, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* @E_MODIFY, align 4
  %179 = call i32 @F_SET(i32* %177, i32 %178)
  br label %226

180:                                              ; preds = %38
  %181 = load i64, i64* %14, align 8
  %182 = icmp ugt i64 %181, 1
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  %184 = load i32*, i32** %13, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 37
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = load i32*, i32** %13, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 35
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 33
  br i1 %197, label %198, label %203

198:                                              ; preds = %193, %188, %183
  %199 = load i32*, i32** %13, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %13, align 8
  %201 = load i64, i64* %14, align 8
  %202 = add i64 %201, -1
  store i64 %202, i64* %14, align 8
  br label %203

203:                                              ; preds = %198, %193, %180
  br label %204

204:                                              ; preds = %38, %203
  br label %205

205:                                              ; preds = %204, %44
  %206 = load i64, i64* %23, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %23, align 8
  %208 = load i32*, i32** %15, align 8
  %209 = load i32*, i32** %26, align 8
  %210 = ptrtoint i32* %208 to i64
  %211 = ptrtoint i32* %209 to i64
  %212 = sub i64 %210, %211
  %213 = sdiv exact i64 %212, 4
  store i64 %213, i64* %24, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %215 = load i32*, i32** %26, align 8
  %216 = load i64, i64* %22, align 8
  %217 = load i64, i64* %23, align 8
  %218 = call i32 @ADD_SPACE_RETW(%struct.TYPE_11__* %214, i32* %215, i64 %216, i64 %217)
  %219 = load i32*, i32** %26, align 8
  %220 = load i64, i64* %24, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %15, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %225, i32** %15, align 8
  store i32 %223, i32* %224, align 4
  br label %226

226:                                              ; preds = %205, %145, %100, %56
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, -1
  store i64 %229, i64* %14, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %13, align 8
  br label %35

232:                                              ; preds = %35
  %233 = load i64, i64* %23, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %23, align 8
  %235 = load i32*, i32** %15, align 8
  %236 = load i32*, i32** %26, align 8
  %237 = ptrtoint i32* %235 to i64
  %238 = ptrtoint i32* %236 to i64
  %239 = sub i64 %237, %238
  %240 = sdiv exact i64 %239, 4
  store i64 %240, i64* %24, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %242 = load i32*, i32** %26, align 8
  %243 = load i64, i64* %22, align 8
  %244 = load i64, i64* %23, align 8
  %245 = call i32 @ADD_SPACE_RETW(%struct.TYPE_11__* %241, i32* %242, i64 %243, i64 %244)
  %246 = load i32*, i32** %26, align 8
  %247 = load i64, i64* %24, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32* %248, i32** %15, align 8
  %249 = load i32*, i32** %15, align 8
  store i32 0, i32* %249, align 4
  %250 = load i64, i64* %23, align 8
  %251 = sub i64 %250, 1
  %252 = load i64*, i64** %16, align 8
  store i64 %251, i64* %252, align 8
  %253 = load i32*, i32** %26, align 8
  %254 = load i32**, i32*** %17, align 8
  store i32* %253, i32** %254, align 8
  %255 = load i64, i64* %22, align 8
  %256 = load i64*, i64** %18, align 8
  store i64 %255, i64* %256, align 8
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %232, %141, %96, %52
  %258 = load i32, i32* %10, align 4
  ret i32 %258
}

declare dso_local %struct.TYPE_12__* @EXP(%struct.TYPE_11__*) #1

declare dso_local i32 @msgq(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @ADD_SPACE_RETW(%struct.TYPE_11__*, i32*, i64, i64) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local i32 @F_SET(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @CHAR2INT(%struct.TYPE_11__*, i8*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
