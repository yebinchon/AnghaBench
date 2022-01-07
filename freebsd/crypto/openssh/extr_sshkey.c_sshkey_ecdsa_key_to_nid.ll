; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ecdsa_key_to_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ecdsa_key_to_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@NID_secp384r1 = common dso_local global i32 0, align 4
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@NID_secp521r1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_ecdsa_key_to_nid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @NID_X9_62_prime256v1, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @NID_secp384r1, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @EC_KEY_get0_group(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @EC_GROUP_get_curve_name(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  %23 = call i32* (...) @BN_CTX_new()
  store i32* %23, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %77

26:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @EC_GROUP_new_by_curve_name(i32 %35)
  store i32* %36, i32** %4, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @BN_CTX_free(i32* %39)
  store i32 -1, i32* %2, align 4
  br label %77

41:                                               ; preds = %32
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @EC_GROUP_cmp(i32* %42, i32* %43, i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %54

48:                                               ; preds = %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @EC_GROUP_free(i32* %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %27

54:                                               ; preds = %47, %27
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @BN_CTX_free(i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  %64 = call i32 @EC_GROUP_set_asn1_flag(i32* %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @EC_KEY_set_group(i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @EC_GROUP_free(i32* %70)
  store i32 -1, i32* %2, align 4
  br label %77

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %69, %38, %25, %20
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i64 @EC_GROUP_cmp(i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @EC_GROUP_set_asn1_flag(i32*, i32) #1

declare dso_local i32 @EC_KEY_set_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
