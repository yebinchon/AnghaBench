; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_calcsum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_calcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, i8*, i32, i64)* @lha_calcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @lha_calcsum(i8 zeroext %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i8*, i8** %9, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %27, %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %9, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %8, align 8
  br label %15

30:                                               ; preds = %15
  %31 = load i8, i8* %5, align 1
  ret i8 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
