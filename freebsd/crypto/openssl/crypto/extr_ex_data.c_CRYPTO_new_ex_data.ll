; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ex_data.c_CRYPTO_new_ex_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ex_data.c_CRYPTO_new_ex_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 (i8*, i8*, %struct.TYPE_14__*, i32, i32, i32)* }
%struct.TYPE_12__ = type { i32 }

@ex_data_lock = common dso_local global i32 0, align 4
@CRYPTO_F_CRYPTO_NEW_EX_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_new_ex_data(i32 %0, i8* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__**, align 8
  %12 = alloca [10 x %struct.TYPE_13__*], align 16
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %11, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_12__* @get_and_lock(i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %13, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %140

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sk_EX_CALLBACK_num(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds [10 x %struct.TYPE_13__*], [10 x %struct.TYPE_13__*]* %12, i64 0, i64 0
  %31 = call i64 @OSSL_NELEM(%struct.TYPE_13__** %30)
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds [10 x %struct.TYPE_13__*], [10 x %struct.TYPE_13__*]* %12, i64 0, i64 0
  store %struct.TYPE_13__** %35, %struct.TYPE_13__*** %11, align 8
  br label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.TYPE_13__** @OPENSSL_malloc(i32 %40)
  store %struct.TYPE_13__** %41, %struct.TYPE_13__*** %11, align 8
  br label %42

42:                                               ; preds = %36, %34
  %43 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %44 = icmp ne %struct.TYPE_13__** %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.TYPE_13__* @sk_EX_CALLBACK_value(i32 %53, i32 %54)
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %58
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %59, align 8
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %46

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i32, i32* @ex_data_lock, align 4
  %67 = call i32 @CRYPTO_THREAD_unlock(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %72 = icmp eq %struct.TYPE_13__** %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @CRYPTO_F_CRYPTO_NEW_EX_DATA, align 4
  %75 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %76 = call i32 @CRYPTOerr(i32 %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %140

77:                                               ; preds = %70, %65
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %129, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %83, i64 %85
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %128

89:                                               ; preds = %82
  %90 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %90, i64 %92
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32 (i8*, i8*, %struct.TYPE_14__*, i32, i32, i32)*, i32 (i8*, i8*, %struct.TYPE_14__*, i32, i32, i32)** %95, align 8
  %97 = icmp ne i32 (i8*, i8*, %struct.TYPE_14__*, i32, i32, i32)* %96, null
  br i1 %97, label %98, label %128

98:                                               ; preds = %89
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i8* @CRYPTO_get_ex_data(%struct.TYPE_14__* %99, i32 %100)
  store i8* %101, i8** %10, align 8
  %102 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %102, i64 %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32 (i8*, i8*, %struct.TYPE_14__*, i32, i32, i32)*, i32 (i8*, i8*, %struct.TYPE_14__*, i32, i32, i32)** %107, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %113, i64 %115
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %120, i64 %122
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 %108(i8* %109, i8* %110, %struct.TYPE_14__* %111, i32 %112, i32 %119, i32 %126)
  br label %128

128:                                              ; preds = %98, %89, %82
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %78

132:                                              ; preds = %78
  %133 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %134 = getelementptr inbounds [10 x %struct.TYPE_13__*], [10 x %struct.TYPE_13__*]* %12, i64 0, i64 0
  %135 = icmp ne %struct.TYPE_13__** %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %138 = call i32 @OPENSSL_free(%struct.TYPE_13__** %137)
  br label %139

139:                                              ; preds = %136, %132
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %73, %18
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_12__* @get_and_lock(i32) #1

declare dso_local i32 @sk_EX_CALLBACK_num(i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_13__** @OPENSSL_malloc(i32) #1

declare dso_local %struct.TYPE_13__* @sk_EX_CALLBACK_value(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i8* @CRYPTO_get_ex_data(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
