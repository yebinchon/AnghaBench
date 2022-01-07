; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_md.c_md_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_md.c_md_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @md_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @md_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 1, i64* %15, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_6__* @BIO_get_data(i32* %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @BIO_next(i32* %20)
  store i32* %21, i32** %17, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %109 [
    i32 133, label %23
    i32 131, label %44
    i32 130, label %57
    i32 128, label %64
    i32 132, label %74
    i32 129, label %84
    i32 134, label %96
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @BIO_get_init(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @EVP_DigestInit_ex(%struct.TYPE_6__* %28, i32* %31, i32* null)
  store i64 %32, i64* %15, align 8
  br label %34

33:                                               ; preds = %23
  store i64 0, i64* %15, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i64, i64* %15, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @BIO_ctrl(i32* %38, i32 %39, i64 %40, i8* %41)
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %37, %34
  br label %115

44:                                               ; preds = %4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @BIO_get_init(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i32**
  store i32** %50, i32*** %13, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32**, i32*** %13, align 8
  store i32* %53, i32** %54, align 8
  br label %56

55:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  br label %56

56:                                               ; preds = %55, %48
  br label %115

57:                                               ; preds = %4
  %58 = load i8*, i8** %9, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %59, %struct.TYPE_6__*** %12, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %61, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @BIO_set_init(i32* %62, i32 1)
  br label %115

64:                                               ; preds = %4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @BIO_get_init(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @BIO_set_data(i32* %69, i8* %70)
  br label %73

72:                                               ; preds = %64
  store i64 0, i64* %15, align 8
  br label %73

73:                                               ; preds = %72, %68
  br label %115

74:                                               ; preds = %4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @BIO_clear_retry_flags(i32* %75)
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @BIO_ctrl(i32* %77, i32 %78, i64 %79, i8* %80)
  store i64 %81, i64* %15, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @BIO_copy_next_retry(i32* %82)
  br label %115

84:                                               ; preds = %4
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %14, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i64 @EVP_DigestInit_ex(%struct.TYPE_6__* %87, i32* %88, i32* null)
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @BIO_set_init(i32* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %84
  br label %115

96:                                               ; preds = %4
  %97 = load i8*, i8** %9, align 8
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %16, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = call %struct.TYPE_6__* @BIO_get_data(i32* %99)
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %11, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = call i32 @EVP_MD_CTX_copy_ex(%struct.TYPE_6__* %101, %struct.TYPE_6__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store i64 0, i64* %5, align 8
  br label %117

106:                                              ; preds = %96
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @BIO_set_init(i32* %107, i32 1)
  br label %115

109:                                              ; preds = %4
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i64, i64* %8, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i64 @BIO_ctrl(i32* %110, i32 %111, i64 %112, i8* %113)
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %109, %106, %95, %74, %73, %57, %56, %43
  %116 = load i64, i64* %15, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %105
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local %struct.TYPE_6__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_get_init(i32*) #1

declare dso_local i64 @EVP_DigestInit_ex(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i64 @BIO_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_set_data(i32*, i8*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @EVP_MD_CTX_copy_ex(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
