; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_pkey_hkdf_derive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_pkey_hkdf_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }

@KDF_F_PKEY_HKDF_DERIVE = common dso_local global i32 0, align 4
@KDF_R_MISSING_MESSAGE_DIGEST = common dso_local global i32 0, align 4
@KDF_R_MISSING_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64*)* @pkey_hkdf_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_hkdf_derive(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @KDF_F_PKEY_HKDF_DERIVE, align 4
  %18 = load i32, i32* @KDF_R_MISSING_MESSAGE_DIGEST, align 4
  %19 = call i32 @KDFerr(i32 %17, i32 %18)
  store i32 0, i32* %4, align 4
  br label %114

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @KDF_F_PKEY_HKDF_DERIVE, align 4
  %27 = load i32, i32* @KDF_R_MISSING_KEY, align 4
  %28 = call i32 @KDFerr(i32 %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %114

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %113 [
    i32 129, label %33
    i32 128, label %61
    i32 130, label %91
  ]

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32* @HKDF(i32* %36, i32 %39, i32 %42, i32* %45, i32 %48, i32 %51, i32 %54, i8* %55, i64 %57)
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %114

61:                                               ; preds = %29
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @EVP_MD_size(i32* %67)
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  store i32 1, i32* %4, align 4
  br label %114

70:                                               ; preds = %61
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = call i32* @HKDF_Extract(i32* %73, i32 %76, i32 %79, i32* %82, i32 %85, i8* %86, i64* %87)
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %114

91:                                               ; preds = %29
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* %108, align 8
  %110 = call i32* @HKDF_Expand(i32* %94, i32* %97, i32 %100, i32 %103, i32 %106, i8* %107, i64 %109)
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %114

113:                                              ; preds = %29
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %91, %70, %64, %33, %25, %16
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @KDFerr(i32, i32) #1

declare dso_local i32* @HKDF(i32*, i32, i32, i32*, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32* @HKDF_Extract(i32*, i32, i32, i32*, i32, i8*, i64*) #1

declare dso_local i32* @HKDF_Expand(i32*, i32*, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
