; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistputil.c_ec_GFp_nistp_recode_scalar_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistputil.c_ec_GFp_nistp_recode_scalar_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ec_GFp_nistp_recode_scalar_bits(i8* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 5
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 64, %16
  %18 = sub nsw i32 %17, 1
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = or i32 %24, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 1
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 1
  %39 = add nsw i32 %35, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %8, align 1
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 1
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8, i8* %8, align 1
  %47 = load i8*, i8** %5, align 8
  store i8 %46, i8* %47, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
