; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_unicode_to_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_unicode_to_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @unicode_to_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicode_to_wc(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @wc_size()
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64*, i64** %4, align 8
  store i64 %10, i64* %11, align 8
  store i32 1, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 65535
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 65536
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 10
  %20 = and i32 %19, 1023
  %21 = add nsw i32 %20, 55296
  %22 = sext i32 %21 to i64
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %4, align 8
  store i64 %22, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 1023
  %27 = add nsw i32 %26, 56320
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  store i32 2, i32* %3, align 4
  br label %34

30:                                               ; preds = %12
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %15, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wc_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
