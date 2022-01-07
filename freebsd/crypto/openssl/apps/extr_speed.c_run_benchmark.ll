; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_speed.c_run_benchmark.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_speed.c_run_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@run = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failure in the job\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Too many fds in ASYNC_WAIT_CTX\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32 (i8*)*, %struct.TYPE_3__*)* @run_benchmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_benchmark(i32 %0, i32 (i8*)* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 (i8*)* %1, i32 (i8*)** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* @run, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %21 = bitcast %struct.TYPE_3__** %7 to i8*
  %22 = call i32 %20(i8* %21)
  store i32 %22, i32* %4, align 4
  br label %179

23:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %75

34:                                               ; preds = %32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %16, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %51 = bitcast %struct.TYPE_3__** %16 to i8*
  %52 = call i32 @ASYNC_start_job(i32** %43, i32 %49, i32* %8, i32 (i8*)* %50, i8* %51, i32 8)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  switch i32 %53, label %71 [
    i32 128, label %54
    i32 130, label %57
    i32 129, label %66
    i32 131, label %66
  ]

54:                                               ; preds = %34
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %71

57:                                               ; preds = %34
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %60
  br label %71

66:                                               ; preds = %34, %34
  %67 = load i32, i32* @bio_err, align 4
  %68 = call i32 (i32, i8*, ...) @BIO_printf(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @bio_err, align 4
  %70 = call i32 @ERR_print_errors(i32 %69)
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %34, %66, %65, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %24

75:                                               ; preds = %32
  br label %76

76:                                               ; preds = %170, %75
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %171

79:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %167, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %170

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %167

93:                                               ; preds = %84
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32 %99, i64* null, i64* %15)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i64, i64* %15, align 8
  %104 = icmp ugt i64 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %93
  %106 = load i32, i32* @bio_err, align 4
  %107 = call i32 (i32, i8*, ...) @BIO_printf(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @bio_err, align 4
  %109 = call i32 @ERR_print_errors(i32 %108)
  store i32 1, i32* %11, align 4
  br label %170

110:                                              ; preds = %102
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32 %116, i64* %14, i64* %15)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = bitcast %struct.TYPE_3__* %133 to i8*
  %135 = call i32 @ASYNC_start_job(i32** %122, i32 %128, i32* %8, i32 (i8*)* %129, i8* %134, i32 16)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  switch i32 %136, label %166 [
    i32 128, label %137
    i32 130, label %138
    i32 129, label %154
    i32 131, label %154
  ]

137:                                              ; preds = %110
  br label %166

138:                                              ; preds = %110
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %11, align 4
  br label %146

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %142, %141
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %10, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32* null, i32** %153, align 8
  br label %166

154:                                              ; preds = %110, %110
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %10, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i32* null, i32** %161, align 8
  %162 = load i32, i32* @bio_err, align 4
  %163 = call i32 (i32, i8*, ...) @BIO_printf(i32 %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %164 = load i32, i32* @bio_err, align 4
  %165 = call i32 @ERR_print_errors(i32 %164)
  store i32 1, i32* %11, align 4
  br label %166

166:                                              ; preds = %110, %154, %146, %137
  br label %167

167:                                              ; preds = %166, %92
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %80

170:                                              ; preds = %105, %80
  br label %76

171:                                              ; preds = %76
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %177

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  br label %177

177:                                              ; preds = %175, %174
  %178 = phi i32 [ -1, %174 ], [ %176, %175 ]
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %19
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @ASYNC_start_job(i32**, i32, i32*, i32 (i8*)*, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @ASYNC_WAIT_CTX_get_all_fds(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
