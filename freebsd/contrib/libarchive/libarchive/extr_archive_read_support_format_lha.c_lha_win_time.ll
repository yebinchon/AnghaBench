; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_win_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_win_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPOC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @lha_win_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_win_time(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i64, ...) bitcast (i32 (...)* @ARCHIVE_LITERAL_ULL to i32 (i64, ...)*)(i64 116444736000000000)
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = call i32 (i64, ...) bitcast (i32 (...)* @ARCHIVE_LITERAL_ULL to i32 (i64, ...)*)(i64 116444736000000000)
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = srem i32 %16, 10000000
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 100
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %22, 10000000
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i64*, i64** %5, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64*, i64** %5, align 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ARCHIVE_LITERAL_ULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
