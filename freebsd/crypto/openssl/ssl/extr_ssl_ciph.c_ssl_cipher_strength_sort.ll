; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_strength_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_strength_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }

@SSL_F_SSL_CIPHER_STRENGTH_SORT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CIPHER_ORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**, %struct.TYPE_8__**)* @ssl_cipher_strength_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cipher_strength_sort(%struct.TYPE_8__** %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %9, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %20, %15
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %9, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32* @OPENSSL_zalloc(i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @SSL_F_SSL_CIPHER_STRENGTH_SORT, align 4
  %49 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %50 = call i32 @SSLerr(i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %102

51:                                               ; preds = %38
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %9, align 8
  br label %54

54:                                               ; preds = %73, %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %62, %57
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %9, align 8
  br label %54

77:                                               ; preds = %54
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %96, %77
  %80 = load i32, i32* %7, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @CIPHER_ORD, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %93 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %94 = call i32 @ssl_cipher_apply_rule(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %90, i32 %91, %struct.TYPE_8__** %92, %struct.TYPE_8__** %93)
  br label %95

95:                                               ; preds = %89, %82
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %7, align 4
  br label %79

99:                                               ; preds = %79
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @OPENSSL_free(i32* %100)
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %47
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ssl_cipher_apply_rule(i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__**, %struct.TYPE_8__**) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
