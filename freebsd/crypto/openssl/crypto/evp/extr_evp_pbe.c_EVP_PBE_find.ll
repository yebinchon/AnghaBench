; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_pbe.c_EVP_PBE_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_pbe.c_EVP_PBE_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }

@NID_undef = common dso_local global i32 0, align 4
@pbe_algs = common dso_local global i32* null, align 8
@builtin_pbe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PBE_find(i32 %0, i32 %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NID_undef, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @pbe_algs, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32*, i32** @pbe_algs, align 8
  %28 = call i32 @sk_EVP_PBE_CTL_find(i32* %27, %struct.TYPE_6__* %13)
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** @pbe_algs, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.TYPE_6__* @sk_EVP_PBE_CTL_value(i32* %29, i32 %30)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %12, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = icmp eq %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @builtin_pbe, align 4
  %37 = load i32, i32* @builtin_pbe, align 4
  %38 = call i32 @OSSL_NELEM(i32 %37)
  %39 = call %struct.TYPE_6__* @OBJ_bsearch_pbe2(%struct.TYPE_6__* %13, i32 %36, i32 %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %12, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %69

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32**, i32*** %11, align 8
  %62 = icmp ne i32** %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32**, i32*** %11, align 8
  store i32* %66, i32** %67, align 8
  br label %68

68:                                               ; preds = %63, %60
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %43, %18
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @sk_EVP_PBE_CTL_find(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @sk_EVP_PBE_CTL_value(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @OBJ_bsearch_pbe2(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
