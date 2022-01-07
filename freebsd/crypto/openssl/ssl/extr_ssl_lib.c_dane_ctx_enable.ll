; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_dane_ctx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_dane_ctx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.dane_ctx_st = type { i32*, i32**, i32** }

@DANETLS_MATCHING_LAST = common dso_local global i32* null, align 8
@SSL_F_DANE_CTX_ENABLE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@dane_mds = common dso_local global %struct.TYPE_3__* null, align 8
@NID_undef = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dane_ctx_st*)* @dane_ctx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dane_ctx_enable(%struct.dane_ctx_st* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dane_ctx_st*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.dane_ctx_st* %0, %struct.dane_ctx_st** %3, align 8
  %10 = load i32*, i32** @DANETLS_MATCHING_LAST, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = ptrtoint i32* %11 to i32
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %3, align 8
  %15 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %100

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i32** @OPENSSL_zalloc(i32 %23)
  store i32** %24, i32*** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32** @OPENSSL_zalloc(i32 %28)
  store i32** %29, i32*** %5, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = icmp eq i32** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32**, i32*** %4, align 8
  %34 = icmp eq i32** %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32, %19
  %36 = load i32**, i32*** %5, align 8
  %37 = call i32 @OPENSSL_free(i32** %36)
  %38 = load i32**, i32*** %4, align 8
  %39 = call i32 @OPENSSL_free(i32** %38)
  %40 = load i32, i32* @SSL_F_DANE_CTX_ENABLE, align 4
  %41 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %42 = call i32 @SSLerr(i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %100

43:                                               ; preds = %32
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dane_mds, align 8
  %47 = call i64 @OSSL_NELEM(%struct.TYPE_3__* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dane_mds, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NID_undef, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dane_mds, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32* @EVP_get_digestbynid(i64 %62)
  store i32* %63, i32** %9, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %49
  br label %87

66:                                               ; preds = %57
  %67 = load i32*, i32** %9, align 8
  %68 = load i32**, i32*** %4, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dane_mds, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32*, i32** %68, i64 %73
  store i32* %67, i32** %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dane_mds, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32**, i32*** %5, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dane_mds, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32*, i32** %80, i64 %85
  store i32* %79, i32** %86, align 8
  br label %87

87:                                               ; preds = %66, %65
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %44

90:                                               ; preds = %44
  %91 = load i32**, i32*** %4, align 8
  %92 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %3, align 8
  %93 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %92, i32 0, i32 2
  store i32** %91, i32*** %93, align 8
  %94 = load i32**, i32*** %5, align 8
  %95 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %3, align 8
  %96 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %95, i32 0, i32 1
  store i32** %94, i32*** %96, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %3, align 8
  %99 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  store i32 1, i32* %2, align 4
  br label %100

100:                                              ; preds = %90, %35, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32** @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OPENSSL_free(i32**) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_3__*) #1

declare dso_local i32* @EVP_get_digestbynid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
