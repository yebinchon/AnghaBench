; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_PBE_string2key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_PBE_string2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }

@HX509_ALG_NOT_SUPP = common dso_local global i32 0, align 4
@PKCS12_KEY_ID = common dso_local global i32 0, align 4
@HX509_CRYPTO_INTERNAL_ERROR = common dso_local global i32 0, align 4
@PKCS12_IV_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32*)* @PBE_string2key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PBE_string2key(i32 %0, i8* %1, %struct.TYPE_10__* %2, i32* %3, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @strlen(i8* %28)
  br label %31

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  store i32 %32, i32* %19, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %34 = icmp eq %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @HX509_ALG_NOT_SUPP, align 4
  store i32 %36, i32* %9, align 4
  br label %128

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @decode_PKCS12_PBEParams(i32 %40, i32 %43, %struct.TYPE_11__* %18, i32* null)
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %23, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %125

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %21, align 4
  br label %57

56:                                               ; preds = %48
  store i32 1, i32* %21, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %24, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %22, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %19, align 4
  %66 = load i8*, i8** %24, align 8
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* @PKCS12_KEY_ID, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @PKCS12_key_gen(i8* %64, i32 %65, i8* %66, i32 %67, i32 %68, i32 %69, i32 %72, i32 %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %57
  %80 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %80, i32* %23, align 4
  br label %125

81:                                               ; preds = %57
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i8*, i8** %24, align 8
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* @PKCS12_IV_ID, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @PKCS12_key_gen(i8* %82, i32 %83, i8* %84, i32 %85, i32 %86, i32 %87, i32 %90, i32 %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %81
  %98 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %98, i32* %23, align 4
  br label %125

99:                                               ; preds = %81
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @hx509_crypto_init(i32 %100, i32* null, i32* %101, i32* %20)
  store i32 %102, i32* %23, align 4
  %103 = load i32, i32* %23, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %125

106:                                              ; preds = %99
  %107 = load i32, i32* %20, align 4
  %108 = call i32 @hx509_crypto_allow_weak(i32 %107)
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @hx509_crypto_set_key_data(i32 %109, i32 %112, i32 %115)
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @hx509_crypto_destroy(i32 %120)
  br label %125

122:                                              ; preds = %106
  %123 = load i32, i32* %20, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119, %105, %97, %79, %47
  %126 = call i32 @free_PKCS12_PBEParams(%struct.TYPE_11__* %18)
  %127 = load i32, i32* %23, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %35
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @decode_PKCS12_PBEParams(i32, i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @PKCS12_key_gen(i8*, i32, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @hx509_crypto_init(i32, i32*, i32*, i32*) #1

declare dso_local i32 @hx509_crypto_allow_weak(i32) #1

declare dso_local i32 @hx509_crypto_set_key_data(i32, i32, i32) #1

declare dso_local i32 @hx509_crypto_destroy(i32) #1

declare dso_local i32 @free_PKCS12_PBEParams(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
