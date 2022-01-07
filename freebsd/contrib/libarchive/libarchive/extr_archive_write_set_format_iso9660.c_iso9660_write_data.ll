; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AE_IFREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64)* @iso9660_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iso9660_write_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iso9660*, align 8
  %9 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load %struct.iso9660*, %struct.iso9660** %11, align 8
  store %struct.iso9660* %12, %struct.iso9660** %8, align 8
  %13 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %14 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @archive_entry_filetype(i32 %23)
  %25 = load i64, i64* @AE_IFREG, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %57

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %31 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %36 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %57

42:                                               ; preds = %38
  %43 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @write_iso9660_data(%struct.archive_write* %43, i8* %44, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  %52 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %41, %27, %17
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i64 @archive_entry_filetype(i32) #1

declare dso_local i64 @write_iso9660_data(%struct.archive_write*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
