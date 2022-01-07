; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_set_auth_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_cred.c_set_auth_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64 }

@AuthorizationData = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"internal error in ASN.1 encoder\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*)* @set_auth_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_auth_data(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  %20 = load i32, i32* @AuthorizationData, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i32 @ASN1_MALLOC_ENCODE(i32 %20, i8* %21, i64 %22, %struct.TYPE_6__* %23, i64* %10, i64 %24)
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i64, i64* %14, align 8
  store i64 %29, i64* %5, align 8
  br label %89

30:                                               ; preds = %19
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @krb5_abortx(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ALLOC(i8* %40, i32 1)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @krb5_set_error_message(i32 %49, i64 %50, i32 %51)
  %53 = load i64, i64* @ENOMEM, align 8
  store i64 %53, i64* %5, align 8
  br label %89

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @krb5_crypto_init(i32 %55, i32* %56, i32 0, i32* %13)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* null, i8** %68, align 8
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %5, align 8
  br label %89

70:                                               ; preds = %54
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @krb5_encrypt_EncryptedData(i32 %71, i32 %72, i32 %73, i8* %74, i64 %75, i32 0, i8* %78)
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @krb5_crypto_destroy(i32 %82, i32 %83)
  br label %88

85:                                               ; preds = %4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %85, %70
  store i64 0, i64* %5, align 8
  br label %89

89:                                               ; preds = %88, %60, %46, %28
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local i32 @ASN1_MALLOC_ENCODE(i32, i8*, i64, %struct.TYPE_6__*, i64*, i64) #1

declare dso_local i32 @krb5_abortx(i32, i8*) #1

declare dso_local i32 @ALLOC(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @krb5_encrypt_EncryptedData(i32, i32, i32, i8*, i64, i32, i8*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
