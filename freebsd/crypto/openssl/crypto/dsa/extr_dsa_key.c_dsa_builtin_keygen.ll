; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_key.c_dsa_builtin_keygen.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_key.c_dsa_builtin_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32 }

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @dsa_builtin_keygen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_builtin_keygen(%struct.TYPE_3__* %0) #0 {
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
  %8 = call i32* (...) @BN_CTX_new()
  store i32* %8, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %86

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = call i32* (...) @BN_secure_new()
  store i32* %17, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %86

20:                                               ; preds = %16
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %21, %20
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BN_priv_rand_range(i32* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %86

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @BN_is_zero(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %26, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = call i32* (...) @BN_new()
  store i32* %45, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %86

48:                                               ; preds = %44
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = call i32* (...) @BN_new()
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %86

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %62 = call i32 @BN_with_flags(i32* %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @BN_mod_exp(i32* %63, i32 %66, i32* %67, i32 %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %58
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @BN_free(i32* %75)
  br label %86

77:                                               ; preds = %58
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @BN_free(i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %74, %57, %47, %33, %19, %10
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @BN_free(i32* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @BN_free(i32* %102)
  br label %104

104:                                              ; preds = %101, %95
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @BN_CTX_free(i32* %105)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_with_flags(i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
