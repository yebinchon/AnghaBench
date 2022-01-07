; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ex_data.c_CRYPTO_dup_ex_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ex_data.c_CRYPTO_dup_ex_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i8**, i32, i32, i32)* }
%struct.TYPE_15__ = type { i32 }

@ex_data_lock = common dso_local global i32 0, align 4
@CRYPTO_F_CRYPTO_DUP_EX_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_dup_ex_data(i32 %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [10 x %struct.TYPE_16__*], align 16
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_16__** null, %struct.TYPE_16__*** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %175

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.TYPE_15__* @get_and_lock(i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %14, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %175

26:                                               ; preds = %21
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sk_EX_CALLBACK_num(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @sk_void_num(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  %46 = call i64 @OSSL_NELEM(%struct.TYPE_16__** %45)
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  store %struct.TYPE_16__** %50, %struct.TYPE_16__*** %13, align 8
  br label %57

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_16__** @OPENSSL_malloc(i32 %55)
  store %struct.TYPE_16__** %56, %struct.TYPE_16__*** %13, align 8
  br label %57

57:                                               ; preds = %51, %49
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %59 = icmp ne %struct.TYPE_16__** %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32 %68, i32 %69)
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %71, i64 %73
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %74, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %61

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %57
  br label %80

80:                                               ; preds = %79, %40
  %81 = load i32, i32* @ex_data_lock, align 4
  %82 = call i32 @CRYPTO_THREAD_unlock(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %175

86:                                               ; preds = %80
  %87 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %88 = icmp eq %struct.TYPE_16__** %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @CRYPTO_F_CRYPTO_DUP_EX_DATA, align 4
  %91 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %92 = call i32 @CRYPTOerr(i32 %90, i32 %91)
  store i32 0, i32* %4, align 4
  br label %175

93:                                               ; preds = %86
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i8* @CRYPTO_get_ex_data(%struct.TYPE_17__* %97, i32 %99)
  %101 = call i32 @CRYPTO_set_ex_data(%struct.TYPE_17__* %94, i32 %96, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %166

104:                                              ; preds = %93
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %162, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %165

109:                                              ; preds = %105
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @CRYPTO_get_ex_data(%struct.TYPE_17__* %110, i32 %111)
  store i8* %112, i8** %11, align 8
  %113 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %113, i64 %115
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = icmp ne %struct.TYPE_16__* %117, null
  br i1 %118, label %119, label %157

119:                                              ; preds = %109
  %120 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %120, i64 %122
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i8**, i32, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i8**, i32, i32, i32)** %125, align 8
  %127 = icmp ne i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i8**, i32, i32, i32)* %126, null
  br i1 %127, label %128, label %157

128:                                              ; preds = %119
  %129 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %129, i64 %131
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i8**, i32, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i8**, i32, i32, i32)** %134, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %139, i64 %141
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %146, i64 %148
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 %135(%struct.TYPE_17__* %136, %struct.TYPE_17__* %137, i8** %11, i32 %138, i32 %145, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %128
  br label %166

156:                                              ; preds = %128
  br label %157

157:                                              ; preds = %156, %119, %109
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @CRYPTO_set_ex_data(%struct.TYPE_17__* %158, i32 %159, i8* %160)
  br label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %105

165:                                              ; preds = %105
  store i32 1, i32* %15, align 4
  br label %166

166:                                              ; preds = %165, %155, %103
  %167 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %168 = getelementptr inbounds [10 x %struct.TYPE_16__*], [10 x %struct.TYPE_16__*]* %12, i64 0, i64 0
  %169 = icmp ne %struct.TYPE_16__** %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %172 = call i32 @OPENSSL_free(%struct.TYPE_16__** %171)
  br label %173

173:                                              ; preds = %170, %166
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %89, %85, %25, %20
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_15__* @get_and_lock(i32) #1

declare dso_local i32 @sk_EX_CALLBACK_num(i32) #1

declare dso_local i32 @sk_void_num(i32*) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__** @OPENSSL_malloc(i32) #1

declare dso_local %struct.TYPE_16__* @sk_EX_CALLBACK_value(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @CRYPTO_set_ex_data(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i8* @CRYPTO_get_ex_data(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
