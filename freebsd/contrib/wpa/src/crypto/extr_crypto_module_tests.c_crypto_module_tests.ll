; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_crypto_module_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_module_tests.c_crypto_module_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"crypto module tests\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_module_tests() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @MSG_INFO, align 4
  %3 = call i32 @wpa_printf(i32 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = call i64 (...) @test_siv()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @test_omac1()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = call i64 (...) @test_eax()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @test_cbc()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  %16 = call i64 (...) @test_ecb()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %15
  %19 = call i64 (...) @test_key_wrap()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = call i64 (...) @test_md5()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = call i64 (...) @test_sha1()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = call i64 (...) @test_sha256()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = call i64 (...) @test_sha384()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = call i64 (...) @test_fips186_2_prf()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = call i64 (...) @test_extract_expand_hkdf()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i64 (...) @test_ms_funcs()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %0
  store i32 -1, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @test_siv(...) #1

declare dso_local i64 @test_omac1(...) #1

declare dso_local i64 @test_eax(...) #1

declare dso_local i64 @test_cbc(...) #1

declare dso_local i64 @test_ecb(...) #1

declare dso_local i64 @test_key_wrap(...) #1

declare dso_local i64 @test_md5(...) #1

declare dso_local i64 @test_sha1(...) #1

declare dso_local i64 @test_sha256(...) #1

declare dso_local i64 @test_sha384(...) #1

declare dso_local i64 @test_fips186_2_prf(...) #1

declare dso_local i64 @test_extract_expand_hkdf(...) #1

declare dso_local i64 @test_ms_funcs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
