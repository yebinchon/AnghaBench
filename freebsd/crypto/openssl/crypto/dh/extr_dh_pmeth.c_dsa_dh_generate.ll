; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_dsa_dh_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_pmeth.c_dsa_dh_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @dsa_dh_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dsa_dh_generate(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %83

25:                                               ; preds = %2
  %26 = call i32* (...) @DSA_new()
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %83

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 2048
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 256, i32* %9, align 4
  br label %38

37:                                               ; preds = %33
  store i32 160, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32*, i32** %10, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 2048
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32* (...) @EVP_sha256()
  store i32* %46, i32** %10, align 8
  br label %49

47:                                               ; preds = %42
  %48 = call i32* (...) @EVP_sha1()
  store i32* %48, i32** %10, align 8
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @dsa_builtin_paramgen(i32* %56, i32 %57, i32 %58, i32* %59, i32* null, i32 0, i32* null, i32* null, i32* null, i32* %60)
  store i32 %61, i32* %7, align 4
  br label %75

62:                                               ; preds = %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @dsa_builtin_paramgen2(i32* %68, i32 %69, i32 %70, i32* %71, i32* null, i32 0, i32 -1, i32* null, i32* null, i32* null, i32* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %62
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @DSA_free(i32* %79)
  store i32* null, i32** %3, align 8
  br label %83

81:                                               ; preds = %75
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %78, %29, %24
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32* @EVP_sha256(...) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32 @dsa_builtin_paramgen(i32*, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dsa_builtin_paramgen2(i32*, i32, i32, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
