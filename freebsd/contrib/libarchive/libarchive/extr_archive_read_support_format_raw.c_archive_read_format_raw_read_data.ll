; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_raw.c_archive_read_format_raw_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_raw.c_archive_read_format_raw_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.raw_info = type { i64, i32, i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i64*)* @archive_read_format_raw_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_raw_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.raw_info*, align 8
  %11 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.raw_info*
  store %struct.raw_info* %17, %struct.raw_info** %10, align 8
  %18 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %19 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %24 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %25 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @__archive_read_consume(%struct.archive_read* %23, i64 %26)
  %28 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %29 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %4
  %31 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %32 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %5, align 4
  br label %82

37:                                               ; preds = %30
  %38 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %39 = call i8* @__archive_read_ahead(%struct.archive_read* %38, i32 1, i8** %11)
  %40 = load i8**, i8*** %7, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ugt i8* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load i8*, i8** %11, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %48 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %54 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %60 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %37
  %63 = load i8*, i8** %11, align 8
  %64 = icmp eq i8* null, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %67 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %70 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %73, i32* %5, align 4
  br label %82

74:                                               ; preds = %62
  %75 = load i64*, i64** %8, align 8
  store i64 0, i64* %75, align 8
  %76 = load %struct.raw_info*, %struct.raw_info** %10, align 8
  %77 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %74, %65, %43, %35
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
