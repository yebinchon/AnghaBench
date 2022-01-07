; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_client_hello_get1_extensions_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_client_hello_get1_extensions_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i64 }

@SSL_F_SSL_CLIENT_HELLO_GET1_EXTENSIONS_PRESENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_client_hello_get1_extensions_present(%struct.TYPE_6__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64*, i64** %7, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %3
  store i32 0, i32* %4, align 4
  br label %116

23:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %38
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %8, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32**, i32*** %6, align 8
  store i32* null, i32** %55, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 0, i64* %56, align 8
  store i32 1, i32* %4, align 4
  br label %116

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32* @OPENSSL_malloc(i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @SSL_F_SSL_CLIENT_HELLO_GET1_EXTENSIONS_PRESENT, align 4
  %65 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %66 = call i32 @SSLerr(i32 %64, i32 %65)
  store i32 0, i32* %4, align 4
  br label %116

67:                                               ; preds = %57
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %105, %67
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %69, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %68
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %82
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %8, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %76
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %113

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %95, %76
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %68

108:                                              ; preds = %68
  %109 = load i32*, i32** %9, align 8
  %110 = load i32**, i32*** %6, align 8
  store i32* %109, i32** %110, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64*, i64** %7, align 8
  store i64 %111, i64* %112, align 8
  store i32 1, i32* %4, align 4
  br label %116

113:                                              ; preds = %94
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @OPENSSL_free(i32* %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %108, %63, %54, %22
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
