; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/buffer/extr_buffer.c_BUF_MEM_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/buffer/extr_buffer.c_BUF_MEM_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8*, i32 }

@LIMIT_BEFORE_EXPANSION = common dso_local global i64 0, align 8
@BUF_F_BUF_MEM_GROW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BUF_MEM_FLAG_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BUF_MEM_grow(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %3, align 8
  br label %109

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  %42 = call i32 @memset(i8* %36, i32 0, i64 %41)
  br label %43

43:                                               ; preds = %29, %24
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %3, align 8
  br label %109

48:                                               ; preds = %18
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @LIMIT_BEFORE_EXPANSION, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @BUF_F_BUF_MEM_GROW, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @BUFerr(i32 %53, i32 %54)
  store i64 0, i64* %3, align 8
  br label %109

56:                                               ; preds = %48
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 3
  %59 = udiv i64 %58, 3
  %60 = mul i64 %59, 4
  store i64 %60, i64* %7, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BUF_MEM_FLAG_SECURE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i8* @sec_alloc_realloc(%struct.TYPE_4__* %68, i64 %69)
  store i8* %70, i8** %6, align 8
  br label %77

71:                                               ; preds = %56
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i8* @OPENSSL_realloc(i8* %74, i64 %75)
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i8*, i8** %6, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @BUF_F_BUF_MEM_GROW, align 4
  %82 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %83 = call i32 @BUFerr(i32 %81, i32 %82)
  store i64 0, i64* %5, align 8
  br label %107

84:                                               ; preds = %77
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %98, %101
  %103 = call i32 @memset(i8* %97, i32 0, i64 %102)
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %84, %80
  %108 = load i64, i64* %5, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %107, %52, %43, %13
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BUFerr(i32, i32) #1

declare dso_local i8* @sec_alloc_realloc(%struct.TYPE_4__*, i64) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
