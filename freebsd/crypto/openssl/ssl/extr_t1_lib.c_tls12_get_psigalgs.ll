; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls12_get_psigalgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls12_get_psigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32*, i32* }

@suiteb_sigalgs = common dso_local global i32* null, align 8
@tls12_sigalgs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tls12_get_psigalgs(%struct.TYPE_6__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = call i32 @tls1_suiteb(%struct.TYPE_6__* %8)
  switch i32 %9, label %22 [
    i32 130, label %10
    i32 129, label %15
    i32 128, label %18
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** @suiteb_sigalgs, align 8
  %12 = load i32**, i32*** %7, align 8
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** @suiteb_sigalgs, align 8
  %14 = call i64 @OSSL_NELEM(i32* %13)
  store i64 %14, i64* %4, align 8
  br label %71

15:                                               ; preds = %3
  %16 = load i32*, i32** @suiteb_sigalgs, align 8
  %17 = load i32**, i32*** %7, align 8
  store i32* %16, i32** %17, align 8
  store i64 1, i64* %4, align 8
  br label %71

18:                                               ; preds = %3
  %19 = load i32*, i32** @suiteb_sigalgs, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32**, i32*** %7, align 8
  store i32* %20, i32** %21, align 8
  store i64 1, i64* %4, align 8
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32**, i32*** %7, align 8
  store i32* %40, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %4, align 8
  br label %71

47:                                               ; preds = %28, %22
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32**, i32*** %7, align 8
  store i32* %59, i32** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  br label %71

66:                                               ; preds = %47
  %67 = load i32*, i32** @tls12_sigalgs, align 8
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** @tls12_sigalgs, align 8
  %70 = call i64 @OSSL_NELEM(i32* %69)
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %66, %54, %35, %18, %15, %10
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @tls1_suiteb(%struct.TYPE_6__*) #1

declare dso_local i64 @OSSL_NELEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
