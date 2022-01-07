; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_rand_pool_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_rand_pool_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i8*, i64, i64 }

@RAND_F_RAND_POOL_GROW = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @rand_pool_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rand_pool_grow(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  %17 = icmp ugt i64 %9, %16
  br i1 %17, label %18, label %123

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  %41 = icmp ugt i64 %32, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31, %18
  %43 = load i32, i32* @RAND_F_RAND_POOL_GROW, align 4
  %44 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %45 = call i32 @RANDerr(i32 %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %124

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = mul i64 %52, 2
  br label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i64 [ %53, %51 ], [ %58, %54 ]
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %59
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = icmp ugt i64 %62, %67
  br i1 %68, label %47, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = call i8* @OPENSSL_secure_zalloc(i64 %75)
  store i8* %76, i8** %6, align 8
  br label %80

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = call i8* @OPENSSL_zalloc(i64 %78)
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i8*, i8** %6, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @RAND_F_RAND_POOL_GROW, align 4
  %85 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %86 = call i32 @RANDerr(i32 %84, i32 %85)
  store i32 0, i32* %3, align 4
  br label %124

87:                                               ; preds = %80
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memcpy(i8* %88, i8* %91, i64 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %87
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @OPENSSL_secure_clear_free(i8* %103, i64 %106)
  br label %116

108:                                              ; preds = %87
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @OPENSSL_clear_free(i8* %111, i64 %114)
  br label %116

116:                                              ; preds = %108, %100
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %2
  store i32 1, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %83, %42
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i8* @OPENSSL_secure_zalloc(i64) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_secure_clear_free(i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
