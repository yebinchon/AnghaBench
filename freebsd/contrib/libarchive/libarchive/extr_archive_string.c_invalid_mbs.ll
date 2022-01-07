; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_invalid_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_invalid_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.archive_string_conv*)* @invalid_mbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalid_mbs(i8* %0, i64 %1, %struct.archive_string_conv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.archive_string_conv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.archive_string_conv* %2, %struct.archive_string_conv** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = call i64 @mbtowc(i32* null, i8* null, i64 0)
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @mbtowc(i32* %10, i8* %17, i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, -2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %16
  store i32 -1, i32* %4, align 4
  br label %39

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %37

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %13

37:                                               ; preds = %29, %13
  %38 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @mbtowc(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
