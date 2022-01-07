; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_i2d_pr.c_i2d_PrivateKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_i2d_pr.c_i2d_PrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}*, i64 }

@ASN1_F_I2D_PRIVATEKEY = common dso_local global i32 0, align 4
@ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_PrivateKey(%struct.TYPE_7__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_7__*, i8**)**
  %18 = load i32 (%struct.TYPE_7__*, i8**)*, i32 (%struct.TYPE_7__*, i8**)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_7__*, i8**)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.TYPE_7__*, i8**)**
  %26 = load i32 (%struct.TYPE_7__*, i8**)*, i32 (%struct.TYPE_7__*, i8**)** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 %26(%struct.TYPE_7__* %27, i8** %28)
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %12, %2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32* @EVP_PKEY2PKCS8(%struct.TYPE_7__* %43)
  store i32* %44, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @i2d_PKCS8_PRIV_KEY_INFO(i32* %48, i8** %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %35, %30
  %56 = load i32, i32* @ASN1_F_I2D_PRIVATEKEY, align 4
  %57 = load i32, i32* @ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE, align 4
  %58 = call i32 @ASN1err(i32 %56, i32 %57)
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %53, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32* @EVP_PKEY2PKCS8(%struct.TYPE_7__*) #1

declare dso_local i32 @i2d_PKCS8_PRIV_KEY_INFO(i32*, i8**) #1

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
