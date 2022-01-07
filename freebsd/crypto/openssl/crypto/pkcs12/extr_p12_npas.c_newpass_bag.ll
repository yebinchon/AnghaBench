; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_npas.c_newpass_bag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_npas.c_newpass_bag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@NID_pkcs8ShroudedKeyBag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @newpass_bag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newpass_bag(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = call i64 @PKCS12_SAFEBAG_get_nid(%struct.TYPE_6__* %14)
  %16 = load i64, i64* @NID_pkcs8ShroudedKeyBag, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32* @PKCS8_decrypt(i32* %23, i8* %24, i32 -1)
  store i32* %25, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %60

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @X509_SIG_get0(i32* %32, i32** %13, i32* null)
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @alg_get(i32* %34, i32* %10, i32* %12, i32* %11)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @PKCS8_encrypt(i32 %39, i32* null, i8* %40, i32 -1, i32* null, i32 %41, i32 %42, i32* %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %60

50:                                               ; preds = %38
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @X509_SIG_free(i32* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %50, %49, %37, %27, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @PKCS12_SAFEBAG_get_nid(%struct.TYPE_6__*) #1

declare dso_local i32* @PKCS8_decrypt(i32*, i8*, i32) #1

declare dso_local i32 @X509_SIG_get0(i32*, i32**, i32*) #1

declare dso_local i32 @alg_get(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @PKCS8_encrypt(i32, i32*, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #1

declare dso_local i32 @X509_SIG_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
