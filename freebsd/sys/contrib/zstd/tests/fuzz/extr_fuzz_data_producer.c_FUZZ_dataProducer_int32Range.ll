; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_fuzz_data_producer.c_FUZZ_dataProducer_int32Range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_fuzz_data_producer.c_FUZZ_dataProducer_int32Range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FUZZ_dataProducer_int32Range(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp sle i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @FUZZ_ASSERT(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i64 @FUZZ_dataProducer_uint32Range(i32* %16, i64 0, i64 %19)
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %4, align 8
  br label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @FUZZ_dataProducer_uint32Range(i32* %26, i64 %27, i64 %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %25, %15
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i32 @FUZZ_ASSERT(i32) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
