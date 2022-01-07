; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_fips186_2_prf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_test_fips186_2_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_fips186_2_prf.xkey = private unnamed_addr constant [20 x i32] [i32 189, i32 2, i32 155, i32 190, i32 127, i32 81, i32 150, i32 11, i32 207, i32 158, i32 219, i32 43, i32 97, i32 240, i32 111, i32 15, i32 235, i32 90, i32 56, i32 182], align 16
@__const.test_fips186_2_prf.w = private unnamed_addr constant [40 x i32] [i32 32, i32 112, i32 179, i32 34, i32 61, i32 186, i32 55, i32 47, i32 222, i32 28, i32 15, i32 252, i32 123, i32 46, i32 59, i32 73, i32 139, i32 38, i32 6, i32 20, i32 60, i32 108, i32 24, i32 186, i32 203, i32 15, i32 108, i32 85, i32 186, i32 187, i32 19, i32 120, i32 142, i32 32, i32 215, i32 55, i32 163, i32 39, i32 81, i32 22], align 16
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Testing EAP-SIM PRF (FIPS 186-2 + change notice 1)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fips186_2_prf failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_fips186_2_prf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_fips186_2_prf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i32], align 16
  %3 = alloca [40 x i32], align 16
  %4 = alloca [40 x i32], align 16
  %5 = bitcast [20 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([20 x i32]* @__const.test_fips186_2_prf.xkey to i8*), i64 80, i1 false)
  %6 = bitcast [40 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([40 x i32]* @__const.test_fips186_2_prf.w to i8*), i64 160, i1 false)
  %7 = load i32, i32* @MSG_INFO, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [40 x i32], [40 x i32]* %4, i64 0, i64 0
  %11 = call i64 @fips186_2_prf(i32* %9, i32 80, i32* %10, i32 160)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %15 = getelementptr inbounds [40 x i32], [40 x i32]* %4, i64 0, i64 0
  %16 = call i64 @os_memcmp(i32* %14, i32* %15, i32 160)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %0
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @fips186_2_prf(i32*, i32, i32*, i32) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
