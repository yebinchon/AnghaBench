; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_req.c_decrypt_authenticator.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_req.c_decrypt_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@KRB5_KU_TGS_REQ_AUTH = common dso_local global i32 0, align 4
@KRB5_KU_AP_REQ_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32*, i32*, i32)* @decrypt_authenticator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decrypt_authenticator(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @krb5_crypto_init(i32 %16, i32* %17, i32 0, i32* %15)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  store i64 %22, i64* %6, align 8
  br label %58

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @krb5_decrypt_EncryptedData(i32 %24, i32 %25, i32 %26, i32* %27, %struct.TYPE_4__* %13)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @KRB5_KU_TGS_REQ_AUTH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @KRB5_KU_AP_REQ_AUTH, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @krb5_decrypt_EncryptedData(i32 %36, i32 %37, i32 %38, i32* %39, %struct.TYPE_4__* %13)
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %35, %31, %23
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @krb5_crypto_destroy(i32 %42, i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %6, align 8
  br label %58

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i64 @decode_Authenticator(i32 %51, i32 %53, i32* %54, i64* %14)
  store i64 %55, i64* %12, align 8
  %56 = call i32 @krb5_data_free(%struct.TYPE_4__* %13)
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %49, %47, %21
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_decrypt_EncryptedData(i32, i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i64 @decode_Authenticator(i32, i32, i32*, i64*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
