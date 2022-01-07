; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"ec_paramgen_curve\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@SM2_F_PKEY_SM2_CTRL_STR = common dso_local global i32 0, align 4
@SM2_R_INVALID_CURVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_sm2_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_sm2_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load i32, i32* @NID_undef, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @EC_curve_nist2nid(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @NID_undef, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @OBJ_sn2nid(i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @NID_undef, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @OBJ_ln2nid(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @NID_undef, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @SM2_F_PKEY_SM2_CTRL_STR, align 4
  %31 = load i32, i32* @SM2_R_INVALID_CURVE, align 4
  %32 = call i32 @SM2err(i32 %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %60

33:                                               ; preds = %24, %19, %13
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %54

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  store i32 %51, i32* %9, align 4
  br label %53

52:                                               ; preds = %46
  store i32 -2, i32* %4, align 4
  br label %60

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @EVP_PKEY_CTX_set_ec_param_enc(i32* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %60

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58
  store i32 -2, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %54, %52, %33, %29
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EC_curve_nist2nid(i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_param_enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
