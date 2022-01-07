; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_format_octal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_format_octal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @format_octal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_octal(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  store i8 48, i8* %18, align 1
  br label %13

20:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %30, %21
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 7
  %33 = add nsw i32 48, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %6, align 8
  store i8 %34, i8* %36, align 1
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 3
  store i32 %38, i32* %5, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %52

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 55, i8* %49, align 1
  br label %44

51:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %42, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
