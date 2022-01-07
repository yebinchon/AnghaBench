; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_x509_pubkey_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_x509_pubkey_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@X509_F_X509_PUBKEY_DECODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@X509_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4
@X509_R_PUBLIC_KEY_DECODE_ERROR = common dso_local global i32 0, align 4
@X509_R_METHOD_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__**, %struct.TYPE_14__*)* @x509_pubkey_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_pubkey_decode(%struct.TYPE_15__** %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__**, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %7 = call %struct.TYPE_15__* (...) @EVP_PKEY_new()
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %6, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %9 = icmp eq %struct.TYPE_15__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @X509_F_X509_PUBKEY_DECODE, align 4
  %12 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %13 = call i32 @X509err(i32 %11, i32 %12)
  store i32 -1, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OBJ_obj2nid(i32 %20)
  %22 = call i32 @EVP_PKEY_set_type(%struct.TYPE_15__* %15, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @X509_F_X509_PUBKEY_DECODE, align 4
  %26 = load i32, i32* @X509_R_UNSUPPORTED_ALGORITHM, align 4
  %27 = call i32 @X509err(i32 %25, i32 %26)
  br label %57

28:                                               ; preds = %14
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = call i32 %40(%struct.TYPE_15__* %41, %struct.TYPE_14__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @X509_F_X509_PUBKEY_DECODE, align 4
  %47 = load i32, i32* @X509_R_PUBLIC_KEY_DECODE_ERROR, align 4
  %48 = call i32 @X509err(i32 %46, i32 %47)
  br label %57

49:                                               ; preds = %35
  br label %54

50:                                               ; preds = %28
  %51 = load i32, i32* @X509_F_X509_PUBKEY_DECODE, align 4
  %52 = load i32, i32* @X509_R_METHOD_NOT_SUPPORTED, align 4
  %53 = call i32 @X509err(i32 %51, i32 %52)
  br label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %4, align 8
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %56, align 8
  store i32 1, i32* %3, align 4
  br label %60

57:                                               ; preds = %50, %45, %24
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = call i32 @EVP_PKEY_free(%struct.TYPE_15__* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %54, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_15__* @EVP_PKEY_new(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_set_type(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
