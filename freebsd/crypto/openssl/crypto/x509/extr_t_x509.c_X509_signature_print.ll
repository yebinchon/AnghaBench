; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_t_x509.c_X509_signature_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_t_x509.c_X509_signature_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)* }

@.str = private unnamed_addr constant [26 x i8] c"    Signature Algorithm: \00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_signature_print(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @BIO_puts(i32* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @i2a_ASN1_OBJECT(i32* %17, i32 %20)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %70

24:                                               ; preds = %16
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OBJ_obj2nid(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NID_undef, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @OBJ_find_sigid_algs(i32 %33, i32* %10, i32* %9)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.TYPE_7__* @EVP_PKEY_asn1_find(i32* null, i32 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)*, i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)** %43, align 8
  %45 = icmp ne i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)*, i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 %49(i32* %50, %struct.TYPE_6__* %51, i32* %52, i32 9, i32 0)
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %41, %36
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @X509_signature_dump(i32* %60, i32* %61, i32 9)
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @BIO_puts(i32* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %70

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %67, %59, %46, %23, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @i2a_ASN1_OBJECT(i32*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i64 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @EVP_PKEY_asn1_find(i32*, i32) #1

declare dso_local i32 @X509_signature_dump(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
