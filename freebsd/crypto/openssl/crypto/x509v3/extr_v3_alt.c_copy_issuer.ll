; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_copy_issuer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_copy_issuer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@CTX_TEST = common dso_local global i64 0, align 8
@X509V3_F_COPY_ISSUER = common dso_local global i32 0, align 4
@X509V3_R_NO_ISSUER_DETAILS = common dso_local global i32 0, align 4
@NID_subject_alt_name = common dso_local global i32 0, align 4
@X509V3_R_ISSUER_DECODE_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @copy_issuer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_issuer(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CTX_TEST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %86

20:                                               ; preds = %13, %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @X509V3_F_COPY_ISSUER, align 4
  %30 = load i32, i32* @X509V3_R_NO_ISSUER_DETAILS, align 4
  %31 = call i32 @X509V3err(i32 %29, i32 %30)
  br label %85

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NID_subject_alt_name, align 4
  %37 = call i32 @X509_get_ext_by_NID(i32 %35, i32 %36, i32 -1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %86

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32* @X509_get_ext(i32 %44, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @X509V3_EXT_d2i(i32* %49)
  store i32* %50, i32** %6, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @X509V3_F_COPY_ISSUER, align 4
  %54 = load i32, i32* @X509V3_R_ISSUER_DECODE_ERROR, align 4
  %55 = call i32 @X509V3err(i32 %53, i32 %54)
  br label %85

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @sk_GENERAL_NAME_num(i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @sk_GENERAL_NAME_reserve(i32* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @X509V3_F_COPY_ISSUER, align 4
  %65 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %66 = call i32 @X509V3err(i32 %64, i32 %65)
  br label %85

67:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32* @sk_GENERAL_NAME_value(i32* %73, i32 %74)
  store i32* %75, i32** %7, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @sk_GENERAL_NAME_push(i32* %76, i32* %77)
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @sk_GENERAL_NAME_free(i32* %83)
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %63, %52, %28
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %82, %40, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @X509_get_ext_by_NID(i32, i32, i32) #1

declare dso_local i32* @X509_get_ext(i32, i32) #1

declare dso_local i32* @X509V3_EXT_d2i(i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_num(i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_reserve(i32*, i32) #1

declare dso_local i32* @sk_GENERAL_NAME_value(i32*, i32) #1

declare dso_local i32 @sk_GENERAL_NAME_push(i32*, i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
