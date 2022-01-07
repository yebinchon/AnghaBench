; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 (%struct.archive_write*, i8*, i64)*, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"archive_write_data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i64)* @_archive_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_data(%struct.archive* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.archive_write*, align 8
  %8 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_write*
  store %struct.archive_write* %10, %struct.archive_write** %7, align 8
  %11 = load i64, i64* @INT_MAX, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 1
  %14 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %16 = call i32 @archive_check_magic(i32* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %24 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %23, i32 0, i32 1
  %25 = call i32 @archive_clear_error(i32* %24)
  %26 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 0
  %28 = load i32 (%struct.archive_write*, i8*, i64)*, i32 (%struct.archive_write*, i8*, i64)** %27, align 8
  %29 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 %28(%struct.archive_write* %29, i8* %30, i64 %31)
  ret i32 %32
}

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
