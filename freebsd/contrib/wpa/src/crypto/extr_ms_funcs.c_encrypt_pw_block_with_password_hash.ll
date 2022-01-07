; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_encrypt_pw_block_with_password_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_encrypt_pw_block_with_password_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PWBLOCK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encrypt_pw_block_with_password_hash(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* @PWBLOCK_LEN, align 4
  %15 = call i32 @os_memset(i32* %13, i32 0, i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @utf8_to_ucs2(i32* %16, i64 %17, i32* %18, i32 512, i64* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = icmp ugt i64 %22, 256
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  store i32 -1, i32* %5, align 4
  br label %56

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 256, %26
  %28 = mul i64 %27, 2
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = mul i64 %36, 2
  %38 = call i32 @os_memmove(i32* %34, i32* %35, i64 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @os_get_random(i32* %39, i64 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %56

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 512
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %7, align 8
  %50 = mul i64 %49, 2
  %51 = call i32 @WPA_PUT_LE16(i32* %48, i64 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @PWBLOCK_LEN, align 4
  %55 = call i32 @rc4_skip(i32* %52, i32 16, i32 0, i32* %53, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %45, %43, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i64 @utf8_to_ucs2(i32*, i64, i32*, i32, i64*) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

declare dso_local i64 @os_get_random(i32*, i64) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i64) #1

declare dso_local i32 @rc4_skip(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
