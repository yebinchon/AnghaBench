; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_conf.c_TS_CONF_set_clock_precision_digits.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_conf.c_TS_CONF_set_clock_precision_digits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_CLOCK_PRECISION_DIGITS = common dso_local global i32 0, align 4
@TS_MAX_CLOCK_PRECISION_DIGITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TS_CONF_set_clock_precision_digits(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @ENV_CLOCK_PRECISION_DIGITS, align 4
  %13 = call i32 @NCONF_get_number_e(i32* %10, i8* %11, i32 %12, i64* %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @TS_MAX_CLOCK_PRECISION_DIGITS, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %16
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @ENV_CLOCK_PRECISION_DIGITS, align 4
  %26 = call i32 @ts_CONF_invalid(i8* %24, i32 %25)
  br label %34

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @TS_RESP_CTX_set_clock_precision_digits(i32* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %36

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @NCONF_get_number_e(i32*, i8*, i32, i64*) #1

declare dso_local i32 @ts_CONF_invalid(i8*, i32) #1

declare dso_local i32 @TS_RESP_CTX_set_clock_precision_digits(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
