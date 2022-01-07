; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lha = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i32*)* @archive_read_format_lha_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_lha_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.lha*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lha*
  store %struct.lha* %17, %struct.lha** %10, align 8
  %18 = load %struct.lha*, %struct.lha** %10, align 8
  %19 = getelementptr inbounds %struct.lha, %struct.lha* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %24 = load %struct.lha*, %struct.lha** %10, align 8
  %25 = getelementptr inbounds %struct.lha, %struct.lha* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @__archive_read_consume(%struct.archive_read* %23, i64 %26)
  %28 = load %struct.lha*, %struct.lha** %10, align 8
  %29 = getelementptr inbounds %struct.lha, %struct.lha* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %4
  %31 = load %struct.lha*, %struct.lha** %10, align 8
  %32 = getelementptr inbounds %struct.lha, %struct.lha* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.lha*, %struct.lha** %10, align 8
  %37 = getelementptr inbounds %struct.lha, %struct.lha* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i64*, i64** %8, align 8
  store i64 0, i64* %40, align 8
  %41 = load i8**, i8*** %7, align 8
  store i8* null, i8** %41, align 8
  %42 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %43 = call i32 @lha_end_of_entry(%struct.archive_read* %42)
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %30
  %45 = load %struct.lha*, %struct.lha** %10, align 8
  %46 = getelementptr inbounds %struct.lha, %struct.lha* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @lha_read_data_lzh(%struct.archive_read* %50, i8** %51, i64* %52, i32* %53)
  store i32 %54, i32* %11, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @lha_read_data_none(%struct.archive_read* %56, i8** %57, i64* %58, i32* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %35
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @lha_end_of_entry(%struct.archive_read*) #1

declare dso_local i32 @lha_read_data_lzh(%struct.archive_read*, i8**, i64*, i32*) #1

declare dso_local i32 @lha_read_data_none(%struct.archive_read*, i8**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
