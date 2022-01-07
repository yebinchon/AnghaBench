; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_file.c_file_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_file.c_file_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_FILE_data = type { i64, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64)* @file_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_skip(%struct.archive* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.read_FILE_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.read_FILE_data*
  store %struct.read_FILE_data* %12, %struct.read_FILE_data** %8, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %9, align 8
  store i32 63, i32* %10, align 4
  %14 = load %struct.archive*, %struct.archive** %5, align 8
  %15 = load %struct.read_FILE_data*, %struct.read_FILE_data** %8, align 8
  %16 = getelementptr inbounds %struct.read_FILE_data, %struct.read_FILE_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %37

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %37

24:                                               ; preds = %20
  %25 = load %struct.read_FILE_data*, %struct.read_FILE_data** %8, align 8
  %26 = getelementptr inbounds %struct.read_FILE_data, %struct.read_FILE_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i64 @fseek(i32 %27, i64 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.read_FILE_data*, %struct.read_FILE_data** %8, align 8
  %34 = getelementptr inbounds %struct.read_FILE_data, %struct.read_FILE_data* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  store i64 0, i64* %4, align 8
  br label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %35, %32, %23, %19
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @fseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
