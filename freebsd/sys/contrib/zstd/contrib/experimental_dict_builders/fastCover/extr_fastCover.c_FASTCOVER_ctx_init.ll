; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/fastCover/extr_fastCover.c_FASTCOVER_ctx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/fastCover/extr_fastCover.c_FASTCOVER_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32, i32, i32, i64, i32, i64*, i32*, i32*, i32* }

@FASTCOVER_MAX_SAMPLES_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Total number of testing samples is %u and is invalid.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to allocate scratch buffers\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64*, i32, i32, double, i32)* @FASTCOVER_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FASTCOVER_ctx_init(%struct.TYPE_6__* %0, i8* %1, i64* %2, i32 %3, i32 %4, double %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store double %5, double* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %16, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @FASTCOVER_sum(i64* %25, i32 %26)
  store i64 %27, i64* %17, align 8
  %28 = load double, double* %14, align 8
  %29 = fcmp olt double %28, 1.000000e+00
  br i1 %29, label %30, label %36

30:                                               ; preds = %7
  %31 = load i32, i32* %12, align 4
  %32 = uitofp i32 %31 to double
  %33 = load double, double* %14, align 8
  %34 = fmul double %32, %33
  %35 = fptoui double %34 to i32
  br label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %35, %30 ], [ %37, %36 ]
  store i32 %39, i32* %18, align 4
  %40 = load double, double* %14, align 8
  %41 = fcmp olt double %40, 1.000000e+00
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %18, align 4
  %45 = sub i32 %43, %44
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  store i32 %49, i32* %19, align 4
  %50 = load double, double* %14, align 8
  %51 = fcmp olt double %50, 1.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64*, i64** %11, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i64 @FASTCOVER_sum(i64* %53, i32 %54)
  br label %58

56:                                               ; preds = %48
  %57 = load i64, i64* %17, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i64 [ %55, %52 ], [ %57, %56 ]
  store i64 %59, i64* %20, align 8
  %60 = load double, double* %14, align 8
  %61 = fcmp olt double %60, 1.000000e+00
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i64*, i64** %11, align 8
  %64 = load i32, i32* %18, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i32, i32* %19, align 4
  %68 = call i64 @FASTCOVER_sum(i64* %66, i32 %67)
  br label %71

69:                                               ; preds = %58
  %70 = load i64, i64* %17, align 8
  br label %71

71:                                               ; preds = %69, %62
  %72 = phi i64 [ %68, %62 ], [ %70, %69 ]
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @MAX(i32 %74, i32 4)
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %17, align 8
  %79 = load i32, i32* @FASTCOVER_MAX_SAMPLES_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77, %71
  %83 = load i64, i64* %17, align 8
  %84 = lshr i64 %83, 20
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @FASTCOVER_MAX_SAMPLES_SIZE, align 4
  %87 = ashr i32 %86, 20
  %88 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87)
  store i32 0, i32* %8, align 4
  br label %208

89:                                               ; preds = %77
  %90 = load i32, i32* %18, align 4
  %91 = icmp ult i32 %90, 5
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %18, align 4
  %94 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  store i32 0, i32* %8, align 4
  br label %208

95:                                               ; preds = %89
  %96 = load i32, i32* %19, align 4
  %97 = icmp ult i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 0, i32* %8, align 4
  br label %208

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = call i32 @memset(%struct.TYPE_6__* %102, i32 0, i32 72)
  %104 = load i32, i32* %18, align 4
  %105 = load i64, i64* %20, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load i32, i32* %19, align 4
  %109 = load i64, i64* %21, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load i32*, i32** %16, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 9
  store i32* %112, i32** %114, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i64* %115, i64** %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* %20, align 8
  %128 = load i32, i32* %13, align 4
  %129 = zext i32 %128 to i64
  %130 = sub i64 %127, %129
  %131 = add i64 %130, 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = add i32 %137, 1
  %139 = zext i32 %138 to i64
  %140 = mul i64 %139, 8
  %141 = trunc i64 %140 to i32
  %142 = call i64 @malloc(i32 %141)
  %143 = inttoptr i64 %142 to i64*
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 6
  store i64* %143, i64** %145, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 6
  %148 = load i64*, i64** %147, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %101
  %151 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %153 = call i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__* %152)
  store i32 0, i32* %8, align 4
  br label %208

154:                                              ; preds = %101
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 6
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  store i64 0, i64* %158, align 8
  store i32 1, i32* %22, align 4
  br label %159

159:                                              ; preds = %185, %154
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ule i32 %160, %161
  br i1 %162, label %163, label %188

163:                                              ; preds = %159
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sub i32 %167, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %11, align 8
  %173 = load i32, i32* %22, align 4
  %174 = sub i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %171, %177
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %22, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 %178, i64* %184, align 8
  br label %185

185:                                              ; preds = %163
  %186 = load i32, i32* %22, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %22, align 4
  br label %159

188:                                              ; preds = %159
  %189 = load i32, i32* %15, align 4
  %190 = shl i32 1, %189
  %191 = call i64 @calloc(i32 %190, i32 4)
  %192 = inttoptr i64 %191 to i32*
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 7
  store i32* %192, i32** %194, align 8
  %195 = load i32, i32* %15, align 4
  %196 = shl i32 1, %195
  %197 = call i64 @calloc(i32 %196, i32 4)
  %198 = inttoptr i64 %197 to i32*
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 8
  store i32* %198, i32** %200, align 8
  %201 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 7
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %15, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %207 = call i32 @FASTCOVER_computeFrequency(i32* %204, i32 %205, %struct.TYPE_6__* %206)
  store i32 1, i32* %8, align 4
  br label %208

208:                                              ; preds = %188, %150, %98, %92, %82
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local i64 @FASTCOVER_sum(i64*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @FASTCOVER_computeFrequency(i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
