; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/stack/extr_stack.c_sk_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/stack/extr_stack.c_sk_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32 }

@max_nodes = common dso_local global i32 0, align 4
@min_nodes = common dso_local global i32 0, align 4
@CRYPTO_F_SK_RESERVE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @sk_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_reserve(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @max_nodes, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  %16 = icmp sgt i32 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @min_nodes, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @min_nodes, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = icmp eq i8** %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8** @OPENSSL_zalloc(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8** %39, i8*** %41, align 8
  %42 = icmp eq i8** %39, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @CRYPTO_F_SK_RESERVE, align 4
  %45 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %46 = call i32 @CRYPTOerr(i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %99

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  store i32 1, i32* %4, align 4
  br label %99

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %99

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @compute_growth(i32 %62, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %99

70:                                               ; preds = %61
  br label %79

71:                                               ; preds = %51
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %99

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %70
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = bitcast i8** %82 to i8*
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 8, %85
  %87 = trunc i64 %86 to i32
  %88 = call i8** @OPENSSL_realloc(i8* %83, i32 %87)
  store i8** %88, i8*** %8, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = icmp eq i8** %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %99

92:                                               ; preds = %79
  %93 = load i8**, i8*** %8, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i8** %93, i8*** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %92, %91, %77, %69, %60, %47, %43, %17
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i8** @OPENSSL_zalloc(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i32 @compute_growth(i32, i32) #1

declare dso_local i8** @OPENSSL_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
