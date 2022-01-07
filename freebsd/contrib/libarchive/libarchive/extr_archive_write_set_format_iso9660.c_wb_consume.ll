; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_wb_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_wb_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.iso9660 = type { i64 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Internal Programming error: iso9660:wb_consume() size=%jd, wbuff_remaining=%jd\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i64)* @wb_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_consume(%struct.archive_write* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iso9660*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iso9660*
  store %struct.iso9660* %10, %struct.iso9660** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %13 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %18 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16, %2
  %22 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 0
  %24 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %28 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @archive_set_error(i32* %23, i32 %24, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %16
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %36 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %40 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %46 = call i32 @wb_write_out(%struct.archive_write* %45)
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %44, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @wb_write_out(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
