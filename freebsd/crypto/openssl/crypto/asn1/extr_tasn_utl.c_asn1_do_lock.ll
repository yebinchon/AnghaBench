; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_utl.c_asn1_do_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_utl.c_asn1_do_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ASN1_ITYPE_SEQUENCE = common dso_local global i64 0, align 8
@ASN1_ITYPE_NDEF_SEQUENCE = common dso_local global i64 0, align 8
@ASN1_AFLG_REFCOUNT = common dso_local global i32 0, align 4
@ASN1_F_ASN1_DO_LOCK = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_do_lock(i32** %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 -1, i32* %11, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ASN1_ITYPE_SEQUENCE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ASN1_ITYPE_NDEF_SEQUENCE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %96

24:                                               ; preds = %17, %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ASN1_AFLG_REFCOUNT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %24
  store i32 0, i32* %4, align 4
  br label %96

38:                                               ; preds = %30
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @offset2ptr(i32* %40, i32 %43)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @offset2ptr(i32* %47, i32 %50)
  %52 = bitcast i8* %51 to i32**
  store i32** %52, i32*** %10, align 8
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %94 [
    i32 0, label %54
    i32 1, label %66
    i32 -1, label %74
  ]

54:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 1, i32* %55, align 4
  %56 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %57 = load i32**, i32*** %10, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32**, i32*** %10, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @ASN1_F_ASN1_DO_LOCK, align 4
  %63 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %64 = call i32 @ASN1err(i32 %62, i32 %63)
  store i32 -1, i32* %4, align 4
  br label %96

65:                                               ; preds = %54
  br label %94

66:                                               ; preds = %38
  %67 = load i32*, i32** %9, align 8
  %68 = load i32**, i32*** %10, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @CRYPTO_UP_REF(i32* %67, i32* %11, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %96

73:                                               ; preds = %66
  br label %94

74:                                               ; preds = %38
  %75 = load i32*, i32** %9, align 8
  %76 = load i32**, i32*** %10, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @CRYPTO_DOWN_REF(i32* %75, i32* %11, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %96

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @REF_ASSERT_ISNT(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32**, i32*** %10, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @CRYPTO_THREAD_lock_free(i32* %90)
  %92 = load i32**, i32*** %10, align 8
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %38, %93, %73, %65
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %80, %72, %61, %37, %23
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i8* @offset2ptr(i32*, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @CRYPTO_UP_REF(i32*, i32*, i32*) #1

declare dso_local i32 @CRYPTO_DOWN_REF(i32*, i32*, i32*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
