; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_read_bits_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_read_bits_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*, i64*, i32*)* @read_bits_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bits_16(%struct.rar5* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.rar5*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rar5* %0, %struct.rar5** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load %struct.rar5*, %struct.rar5** %4, align 8
  %10 = getelementptr inbounds %struct.rar5, %struct.rar5* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %8, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 16
  store i32 %16, i32* %7, align 4
  %17 = load i64*, i64** %5, align 8
  %18 = load %struct.rar5*, %struct.rar5** %4, align 8
  %19 = getelementptr inbounds %struct.rar5, %struct.rar5* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  %23 = getelementptr inbounds i64, i64* %17, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i64*, i64** %5, align 8
  %30 = load %struct.rar5*, %struct.rar5** %4, align 8
  %31 = getelementptr inbounds %struct.rar5, %struct.rar5* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.rar5*, %struct.rar5** %4, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 8, %43
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 65535
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
