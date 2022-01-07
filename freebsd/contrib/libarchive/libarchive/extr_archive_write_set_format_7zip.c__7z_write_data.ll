; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct._7zip = type { i64, i32, i32* }

@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64)* @_7z_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_7z_write_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct._7zip*
  store %struct._7zip* %13, %struct._7zip** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct._7zip*, %struct._7zip** %8, align 8
  %16 = getelementptr inbounds %struct._7zip, %struct._7zip* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct._7zip*, %struct._7zip** %8, align 8
  %21 = getelementptr inbounds %struct._7zip, %struct._7zip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct._7zip*, %struct._7zip** %8, align 8
  %28 = getelementptr inbounds %struct._7zip, %struct._7zip* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %23
  store i64 0, i64* %4, align 8
  br label %58

32:                                               ; preds = %26
  %33 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %37 = call i64 @compress_out(%struct.archive_write* %33, i8* %34, i64 %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %4, align 8
  br label %58

42:                                               ; preds = %32
  %43 = load %struct._7zip*, %struct._7zip** %8, align 8
  %44 = getelementptr inbounds %struct._7zip, %struct._7zip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @crc32(i32 %45, i8* %46, i32 %48)
  %50 = load %struct._7zip*, %struct._7zip** %8, align 8
  %51 = getelementptr inbounds %struct._7zip, %struct._7zip* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct._7zip*, %struct._7zip** %8, align 8
  %54 = getelementptr inbounds %struct._7zip, %struct._7zip* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %42, %40, %31
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @compress_out(%struct.archive_write*, i8*, i64, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
