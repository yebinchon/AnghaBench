; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_fileTimeToUtc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_fileTimeToUtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPOC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*)* @fileTimeToUtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fileTimeToUtc(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EPOC_TIME, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i32, i32* @EPOC_TIME, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, 10000000
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = srem i32 %18, 10000000
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 100
  %22 = load i64*, i64** %6, align 8
  store i64 %21, i64* %22, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i64*, i64** %5, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %6, align 8
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
