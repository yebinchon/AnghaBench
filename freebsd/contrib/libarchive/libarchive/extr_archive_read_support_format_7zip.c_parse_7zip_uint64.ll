; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_parse_7zip_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_parse_7zip_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32*)* @parse_7zip_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_7zip_uint64(%struct.archive_read* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = call i8* @header_bytes(%struct.archive_read* %10, i32 1)
  store i8* %11, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %7, align 1
  store i8 -128, i8* %8, align 1
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %60, %14
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %63

21:                                               ; preds = %18
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %30 = call i8* @header_bytes(%struct.archive_read* %29, i32 1)
  store i8* %30, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %64

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 8, %37
  %39 = shl i32 %36, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = ashr i32 %44, 1
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %8, align 1
  br label %60

47:                                               ; preds = %21
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 8, %54
  %56 = shl i32 %53, %55
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %63

60:                                               ; preds = %33
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %18

63:                                               ; preds = %47, %18
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %32, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
