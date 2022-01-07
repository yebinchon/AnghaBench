; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_ecdsa2pkey_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_ecdsa2pkey_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_ECDSAP256SHA256 = common dso_local global i64 0, align 8
@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@LDNS_ECDSAP384SHA384 = common dso_local global i64 0, align 8
@NID_secp384r1 = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_ecdsa2pkey_raw(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [258 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds [258 x i8], [258 x i8]* %8, i64 0, i64 0
  store i8* %12, i8** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @LDNS_ECDSAP256SHA256, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 64
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32* null, i32** %4, align 8
  br label %80

20:                                               ; preds = %16
  %21 = load i32, i32* @NID_X9_62_prime256v1, align 4
  %22 = call i32* @EC_KEY_new_by_curve_name(i32 %21)
  store i32* %22, i32** %11, align 8
  br label %36

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @LDNS_ECDSAP384SHA384, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 96
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  br label %80

31:                                               ; preds = %27
  %32 = load i32, i32* @NID_secp384r1, align 4
  %33 = call i32* @EC_KEY_new_by_curve_name(i32 %32)
  store i32* %33, i32** %11, align 8
  br label %35

34:                                               ; preds = %23
  store i32* null, i32** %11, align 8
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %80

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  %43 = icmp ugt i64 %42, 258
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32* null, i32** %4, align 8
  br label %80

45:                                               ; preds = %40
  %46 = load i8, i8* @POINT_CONVERSION_UNCOMPRESSED, align 1
  %47 = getelementptr inbounds [258 x i8], [258 x i8]* %8, i64 0, i64 0
  store i8 %46, i8* %47, align 16
  %48 = getelementptr inbounds [258 x i8], [258 x i8]* %8, i64 0, i64 0
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @memmove(i8* %49, i8* %50, i64 %51)
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = call i32 @o2i_ECPublicKey(i32** %11, i8** %9, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @EC_KEY_free(i32* %59)
  store i32* null, i32** %4, align 8
  br label %80

61:                                               ; preds = %45
  %62 = call i32* (...) @EVP_PKEY_new()
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @EC_KEY_free(i32* %66)
  store i32* null, i32** %4, align 8
  br label %80

68:                                               ; preds = %61
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @EVP_PKEY_assign_EC_KEY(i32* %69, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @EVP_PKEY_free(i32* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @EC_KEY_free(i32* %76)
  store i32* null, i32** %4, align 8
  br label %80

78:                                               ; preds = %68
  %79 = load i32*, i32** %10, align 8
  store i32* %79, i32** %4, align 8
  br label %80

80:                                               ; preds = %78, %73, %65, %58, %44, %39, %30, %19
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @o2i_ECPublicKey(i32**, i8**, i32) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_assign_EC_KEY(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
