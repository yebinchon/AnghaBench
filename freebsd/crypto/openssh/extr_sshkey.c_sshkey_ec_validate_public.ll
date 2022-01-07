; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ec_validate_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ec_validate_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_KEY_INVALID_EC_VALUE = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@NID_X9_62_prime_field = common dso_local global i64 0, align 8
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_ec_validate_public(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %13 = load i32, i32* @SSH_ERR_KEY_INVALID_EC_VALUE, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32* (...) @BN_CTX_new()
  store i32* %14, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @BN_CTX_start(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @EC_GROUP_method_of(i32* %21)
  %23 = call i64 @EC_METHOD_get_field_type(i32 %22)
  %24 = load i64, i64* @NID_X9_62_prime_field, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %124

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @EC_POINT_is_at_infinity(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %124

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @BN_CTX_get(i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %11, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %37, %33
  %50 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %50, i32* %12, align 4
  br label %124

51:                                               ; preds = %45
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @EC_GROUP_get_order(i32* %52, i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @EC_POINT_get_affine_coordinates_GFp(i32* %58, i32* %59, i32* %60, i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %51
  %66 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %66, i32* %12, align 4
  br label %124

67:                                               ; preds = %57
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @BN_num_bits(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @BN_num_bits(i32* %70)
  %72 = sdiv i32 %71, 2
  %73 = icmp sle i32 %69, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @BN_num_bits(i32* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @BN_num_bits(i32* %77)
  %79 = sdiv i32 %78, 2
  %80 = icmp sle i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %67
  br label %124

82:                                               ; preds = %74
  %83 = load i32*, i32** %4, align 8
  %84 = call i32* @EC_POINT_new(i32* %83)
  store i32* %84, i32** %7, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %87, i32* %12, align 4
  br label %124

88:                                               ; preds = %82
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @EC_POINT_mul(i32* %89, i32* %90, i32* null, i32* %91, i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %97, i32* %12, align 4
  br label %124

98:                                               ; preds = %88
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @EC_POINT_is_at_infinity(i32* %99, i32* %100)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %124

104:                                              ; preds = %98
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 (...) @BN_value_one()
  %108 = call i32 @BN_sub(i32* %105, i32* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %111, i32* %12, align 4
  br label %124

112:                                              ; preds = %104
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @BN_cmp(i32* %113, i32* %114)
  %116 = icmp sge i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32*, i32** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = call i64 @BN_cmp(i32* %118, i32* %119)
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %112
  br label %124

123:                                              ; preds = %117
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %123, %122, %110, %103, %96, %86, %81, %65, %49, %32, %26
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @BN_CTX_free(i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @EC_POINT_free(i32* %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i64 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i32 @EC_POINT_is_at_infinity(i32*, i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_GROUP_get_order(i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates_GFp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
