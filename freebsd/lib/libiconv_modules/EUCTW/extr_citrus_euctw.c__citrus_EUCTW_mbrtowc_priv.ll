; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/EUCTW/extr_citrus_euctw.c__citrus_EUCTW_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/EUCTW/extr_citrus_euctw.c__citrus_EUCTW_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**, i64, %struct.TYPE_4__*, i64*)* @_citrus_EUCTW_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_EUCTW_mbrtowc_priv(i32* noalias %0, i8* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_4__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = call i32 @_citrus_EUCTW_init_state(i32* %24, %struct.TYPE_4__* %25)
  %27 = load i64*, i64** %13, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %7, align 4
  br label %249

28:                                               ; preds = %6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %53 [
    i32 0, label %35
    i32 1, label %52
    i32 2, label %52
  ]

35:                                               ; preds = %28
  %36 = load i64, i64* %11, align 8
  %37 = icmp ult i64 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %245

39:                                               ; preds = %35
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %14, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %11, align 8
  br label %54

52:                                               ; preds = %28, %28
  br label %54

53:                                               ; preds = %28
  br label %240

54:                                               ; preds = %52, %39
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = call i32 @_citrus_EUCTW_cs(i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = call i32 @_citrus_EUCTW_count(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %240

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %77, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load i64, i64* %11, align 8
  %75 = icmp ult i64 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %240

77:                                               ; preds = %73
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %14, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 %81, i32* %89, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %11, align 8
  br label %67

96:                                               ; preds = %67
  store i8 0, i8* %15, align 1
  %97 = load i32, i32* %18, align 4
  switch i32 %97, label %216 [
    i32 0, label %98
    i32 1, label %115
    i32 2, label %152
  ]

98:                                               ; preds = %96
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 128
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %240

107:                                              ; preds = %98
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %15, align 1
  br label %217

115:                                              ; preds = %96
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 128
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123, %115
  br label %240

132:                                              ; preds = %123
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 255
  %139 = shl i32 %138, 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 255
  %146 = or i32 %139, %145
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %15, align 1
  %148 = load i8, i8* %15, align 1
  %149 = sext i8 %148 to i32
  %150 = or i32 %149, 1191182336
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %15, align 1
  br label %217

152:                                              ; preds = %96
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = trunc i32 %157 to i8
  %159 = zext i8 %158 to i32
  %160 = icmp slt i32 %159, 161
  br i1 %160, label %170, label %161

161:                                              ; preds = %152
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = trunc i32 %166 to i8
  %168 = zext i8 %167 to i32
  %169 = icmp slt i32 167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161, %152
  br label %240

171:                                              ; preds = %161
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 128
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 128
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %179, %171
  br label %240

188:                                              ; preds = %179
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 255
  %195 = shl i32 %194, 8
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 255
  %202 = or i32 %195, %201
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %15, align 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 71, %208
  %210 = sub nsw i32 %209, 161
  %211 = shl i32 %210, 24
  %212 = load i8, i8* %15, align 1
  %213 = sext i8 %212 to i32
  %214 = or i32 %213, %211
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %15, align 1
  br label %217

216:                                              ; preds = %96
  br label %240

217:                                              ; preds = %188, %132, %107
  %218 = load i8*, i8** %14, align 8
  %219 = load i8**, i8*** %10, align 8
  store i8* %218, i8** %219, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  store i32 0, i32* %221, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i8, i8* %15, align 1
  %226 = load i8*, i8** %9, align 8
  store i8 %225, i8* %226, align 1
  br label %227

227:                                              ; preds = %224, %217
  %228 = load i8, i8* %15, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %17, align 4
  %234 = sub nsw i32 %232, %233
  br label %236

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %231
  %237 = phi i32 [ %234, %231 ], [ 0, %235 ]
  %238 = sext i32 %237 to i64
  %239 = load i64*, i64** %13, align 8
  store i64 %238, i64* %239, align 8
  store i32 0, i32* %7, align 4
  br label %249

240:                                              ; preds = %216, %187, %170, %131, %106, %76, %65, %53
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  store i32 0, i32* %242, align 8
  %243 = load i64*, i64** %13, align 8
  store i64 -1, i64* %243, align 8
  %244 = load i32, i32* @EILSEQ, align 4
  store i32 %244, i32* %7, align 4
  br label %249

245:                                              ; preds = %38
  %246 = load i8*, i8** %14, align 8
  %247 = load i8**, i8*** %10, align 8
  store i8* %246, i8** %247, align 8
  %248 = load i64*, i64** %13, align 8
  store i64 -1, i64* %248, align 8
  store i32 0, i32* %7, align 4
  br label %249

249:                                              ; preds = %245, %240, %236, %23
  %250 = load i32, i32* %7, align 4
  ret i32 %250
}

declare dso_local i32 @_citrus_EUCTW_init_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @_citrus_EUCTW_count(i32) #1

declare dso_local i32 @_citrus_EUCTW_cs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
