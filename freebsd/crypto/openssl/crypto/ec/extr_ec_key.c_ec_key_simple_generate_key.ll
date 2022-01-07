; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_generate_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_generate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_key_simple_generate_key(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = call i32* (...) @BN_CTX_new()
  store i32* %8, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %81

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %11
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @EC_GROUP_get0_order(i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %81

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @BN_priv_rand_range(i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %81

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @BN_is_zero(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %35, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @EC_POINT_new(i32 %54)
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %81

59:                                               ; preds = %51
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %60, %59
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @EC_POINT_mul(i32 %67, i32* %68, i32* %69, i32* null, i32* null, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %73, %58, %40, %33, %20, %10
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @EC_POINT_free(i32* %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = icmp ne i32* %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @BN_free(i32* %96)
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @BN_CTX_free(i32* %99)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EC_GROUP_get0_order(i32) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32* @EC_POINT_new(i32) #1

declare dso_local i32 @EC_POINT_mul(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
