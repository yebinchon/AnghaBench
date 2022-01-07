; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_gen.c_DSA_generate_parameters_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_gen.c_DSA_generate_parameters_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSA_generate_parameters_ex(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)**
  %23 = load i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)*, i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)**
  %31 = load i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)*, i32 (%struct.TYPE_7__*, i32, i8*, i32, i32*, i64*, i32*)** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i64*, i64** %14, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 %31(%struct.TYPE_7__* %32, i32 %33, i8* %34, i32 %35, i32* %36, i64* %37, i32* %38)
  store i32 %39, i32* %8, align 4
  br label %63

40:                                               ; preds = %7
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %41, 2048
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32* (...) @EVP_sha256()
  br label %47

45:                                               ; preds = %40
  %46 = call i32* (...) @EVP_sha1()
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32* [ %44, %43 ], [ %46, %45 ]
  store i32* %48, i32** %16, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @EVP_MD_size(i32* %49)
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %17, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i64, i64* %17, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i64*, i64** %14, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @dsa_builtin_paramgen(%struct.TYPE_7__* %53, i32 %54, i64 %55, i32* %56, i8* %57, i32 %58, i32* null, i32* %59, i64* %60, i32* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %47, %25
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32* @EVP_sha256(...) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @dsa_builtin_paramgen(%struct.TYPE_7__*, i32, i64, i32*, i8*, i32, i32*, i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
