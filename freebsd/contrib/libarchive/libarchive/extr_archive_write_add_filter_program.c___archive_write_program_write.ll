; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c___archive_write_program_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c___archive_write_program_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32 }
%struct.archive_write_program_data = type { i64, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't write to program: %s\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_write_program_write(%struct.archive_write_filter* %0, %struct.archive_write_program_data* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write_filter*, align 8
  %7 = alloca %struct.archive_write_program_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %6, align 8
  store %struct.archive_write_program_data* %1, %struct.archive_write_program_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %13 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %17, i32* %5, align 4
  br label %55

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %44, %18
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %25 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @child_write(%struct.archive_write_filter* %24, %struct.archive_write_program_data* %25, i8* %26, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31, %23
  %35 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %36 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EIO, align 4
  %39 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %40 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @archive_set_error(i32 %37, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %43, i32* %5, align 4
  br label %55

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %11, align 8
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %34, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @child_write(%struct.archive_write_filter*, %struct.archive_write_program_data*, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
