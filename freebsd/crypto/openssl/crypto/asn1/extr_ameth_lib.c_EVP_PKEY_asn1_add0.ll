; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_ameth_lib.c_EVP_PKEY_asn1_add0.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_ameth_lib.c_EVP_PKEY_asn1_add0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32 }

@ASN1_PKEY_ALIAS = common dso_local global i32 0, align 4
@EVP_F_EVP_PKEY_ASN1_ADD0 = common dso_local global i32 0, align 4
@ERR_R_PASSED_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@app_methods = common dso_local global i32* null, align 8
@ameth_cmp = common dso_local global i32 0, align 4
@EVP_R_PKEY_APPLICATION_ASN1_METHOD_ALREADY_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_asn1_add0(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* @EVP_F_EVP_PKEY_ASN1_ADD0, align 4
  %31 = load i32, i32* @ERR_R_PASSED_INVALID_ARGUMENT, align 4
  %32 = call i32 @EVPerr(i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %64

33:                                               ; preds = %22, %10
  %34 = load i32*, i32** @app_methods, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @ameth_cmp, align 4
  %38 = call i32* @sk_EVP_PKEY_ASN1_METHOD_new(i32 %37)
  store i32* %38, i32** @app_methods, align 8
  %39 = load i32*, i32** @app_methods, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %64

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** @app_methods, align 8
  %49 = call i64 @sk_EVP_PKEY_ASN1_METHOD_find(i32* %48, %struct.TYPE_5__* %4)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @EVP_F_EVP_PKEY_ASN1_ADD0, align 4
  %53 = load i32, i32* @EVP_R_PKEY_APPLICATION_ASN1_METHOD_ALREADY_REGISTERED, align 4
  %54 = call i32 @EVPerr(i32 %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %64

55:                                               ; preds = %43
  %56 = load i32*, i32** @app_methods, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = call i32 @sk_EVP_PKEY_ASN1_METHOD_push(i32* %56, %struct.TYPE_5__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load i32*, i32** @app_methods, align 8
  %63 = call i32 @sk_EVP_PKEY_ASN1_METHOD_sort(i32* %62)
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %60, %51, %41, %29
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @EVPerr(i32, i32) #2

declare dso_local i32* @sk_EVP_PKEY_ASN1_METHOD_new(i32) #2

declare dso_local i64 @sk_EVP_PKEY_ASN1_METHOD_find(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @sk_EVP_PKEY_ASN1_METHOD_push(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @sk_EVP_PKEY_ASN1_METHOD_sort(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
