; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_bytes(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %72

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @rand_pool_new(i32 0, i32 0, i32 0, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %72

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @rand_drbg_get_additional_data(i32* %37, i8** %7)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %64, %34
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @RAND_DRBG_generate(%struct.TYPE_4__* %54, i8* %55, i64 %56, i32 0, i8* %57, i64 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %72

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %5, align 8
  br label %39

71:                                               ; preds = %39
  store i64 1, i64* %10, align 8
  br label %72

72:                                               ; preds = %71, %62, %32, %20
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @rand_drbg_cleanup_additional_data(i32* %78, i8* %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i32* @rand_pool_new(i32, i32, i32, i32) #1

declare dso_local i64 @rand_drbg_get_additional_data(i32*, i8**) #1

declare dso_local i64 @RAND_DRBG_generate(%struct.TYPE_4__*, i8*, i64, i32, i8*, i64) #1

declare dso_local i32 @rand_drbg_cleanup_additional_data(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
