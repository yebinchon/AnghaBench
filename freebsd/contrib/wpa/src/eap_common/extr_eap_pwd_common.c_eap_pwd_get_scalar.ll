; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pwd_common.c_eap_pwd_get_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pwd_common.c_eap_pwd_get_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-pwd: received scalar is invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_bignum* @eap_pwd_get_scalar(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.crypto_bignum* @crypto_ec_get_order(i32 %10)
  store %struct.crypto_bignum* %11, %struct.crypto_bignum** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @crypto_ec_order_len(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %16, i64 %17)
  store %struct.crypto_bignum* %18, %struct.crypto_bignum** %5, align 8
  %19 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %20 = icmp ne %struct.crypto_bignum* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %23 = call i64 @crypto_bignum_is_zero(%struct.crypto_bignum* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %27 = call i64 @crypto_bignum_is_one(%struct.crypto_bignum* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %31 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %32 = call i64 @crypto_bignum_cmp(%struct.crypto_bignum* %30, %struct.crypto_bignum* %31)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %25, %21, %2
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %38 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %37, i32 0)
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %5, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  ret %struct.crypto_bignum* %40
}

declare dso_local %struct.crypto_bignum* @crypto_ec_get_order(i32) #1

declare dso_local i64 @crypto_ec_order_len(i32) #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i64) #1

declare dso_local i64 @crypto_bignum_is_zero(%struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_is_one(%struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_cmp(%struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
