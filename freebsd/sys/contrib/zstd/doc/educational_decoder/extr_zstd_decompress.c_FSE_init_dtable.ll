; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_FSE_init_dtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_FSE_init_dtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64*, i64* }

@FSE_MAX_ACCURACY_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FSE accuracy too large\00", align 1
@FSE_MAX_SYMBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Too many symbols for FSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32)* @FSE_init_dtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FSE_init_dtable(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FSE_MAX_ACCURACY_LOG, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 @ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @FSE_MAX_SYMBS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = mul i64 %40, 8
  %42 = call i8* @malloc(i64 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = mul i64 %46, 8
  %48 = call i8* @malloc(i64 %47)
  %49 = bitcast i8* %48 to i64*
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64* %49, i64** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = mul i64 %52, 8
  %54 = call i8* @malloc(i64 %53)
  %55 = bitcast i8* %54 to i64*
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i64* %55, i64** %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %33
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67, %62, %33
  %73 = call i32 (...) @BAD_ALLOC()
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* @FSE_MAX_SYMBS, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %10, align 8
  %78 = alloca i64, i64 %76, align 16
  store i64 %76, i64* %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %105, %74
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %93, i32* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %78, i64 %102
  store i64 1, i64* %103, align 8
  br label %104

104:                                              ; preds = %92, %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %81

108:                                              ; preds = %81
  %109 = load i64, i64* %9, align 8
  %110 = lshr i64 %109, 1
  %111 = load i64, i64* %9, align 8
  %112 = lshr i64 %111, 3
  %113 = add i64 %110, %112
  %114 = add i64 %113, 3
  store i64 %114, i64* %14, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub i64 %115, 1
  store i64 %116, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %117

117:                                              ; preds = %170, %108
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %173

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %170

129:                                              ; preds = %121
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %78, i64 %137
  store i64 %135, i64* %138, align 8
  store i32 0, i32* %18, align 4
  br label %139

139:                                              ; preds = %166, %129
  %140 = load i32, i32* %18, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %140, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %139
  %148 = load i32, i32* %17, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %16, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %160, %147
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %14, align 8
  %157 = add i64 %155, %156
  %158 = load i64, i64* %15, align 8
  %159 = and i64 %157, %158
  store i64 %159, i64* %16, align 8
  br label %160

160:                                              ; preds = %154
  %161 = load i64, i64* %16, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp uge i64 %161, %163
  br i1 %164, label %154, label %165

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %139

169:                                              ; preds = %139
  br label %170

170:                                              ; preds = %169, %128
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  br label %117

173:                                              ; preds = %117
  %174 = load i64, i64* %16, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 (...) @CORRUPTION()
  br label %178

178:                                              ; preds = %176, %173
  store i64 0, i64* %19, align 8
  br label %179

179:                                              ; preds = %220, %178
  %180 = load i64, i64* %19, align 8
  %181 = load i64, i64* %9, align 8
  %182 = icmp ult i64 %180, %181
  br i1 %182, label %183, label %223

183:                                              ; preds = %179
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %19, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %20, align 8
  %191 = load i64, i64* %20, align 8
  %192 = getelementptr inbounds i64, i64* %78, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %192, align 8
  store i64 %193, i64* %21, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i64, i64* %21, align 8
  %197 = call i32 @highest_set_bit(i64 %196)
  %198 = sub nsw i32 %195, %197
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  %202 = load i64*, i64** %201, align 8
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 %199, i64* %204, align 8
  %205 = load i64, i64* %21, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i64*, i64** %207, align 8
  %209 = load i64, i64* %19, align 8
  %210 = getelementptr inbounds i64, i64* %208, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = shl i64 %205, %211
  %213 = load i64, i64* %9, align 8
  %214 = sub i64 %212, %213
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* %19, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  store i64 %214, i64* %219, align 8
  br label %220

220:                                              ; preds = %183
  %221 = load i64, i64* %19, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %19, align 8
  br label %179

223:                                              ; preds = %179
  %224 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %224)
  ret void
}

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @BAD_ALLOC(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CORRUPTION(...) #1

declare dso_local i32 @highest_set_bit(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
