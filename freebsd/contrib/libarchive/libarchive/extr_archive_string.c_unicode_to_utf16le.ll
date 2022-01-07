; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_unicode_to_utf16le.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_unicode_to_utf16le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @unicode_to_utf16le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unicode_to_utf16le(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 65535
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 65536
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 10
  %22 = and i32 %21, 1023
  %23 = add nsw i32 %22, 55296
  %24 = call i32 @archive_le16enc(i8* %19, i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1023
  %29 = add nsw i32 %28, 56320
  %30 = call i32 @archive_le16enc(i8* %26, i32 %29)
  store i64 4, i64* %4, align 8
  br label %39

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  br label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @archive_le16enc(i8* %36, i32 %37)
  store i64 2, i64* %4, align 8
  br label %39

39:                                               ; preds = %35, %34, %16, %15
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i32 @archive_le16enc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
