; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_file_data = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FNT_STDIN = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error seeking in stdin\00", align 1
@FNT_MBS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error seeking in '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error seeking in '%S'\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64, i32)* @file_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_seek(%struct.archive* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.read_file_data*, align 8
  %11 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.read_file_data*
  store %struct.read_file_data* %13, %struct.read_file_data** %10, align 8
  %14 = load %struct.read_file_data*, %struct.read_file_data** %10, align 8
  %15 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @lseek(i32 %16, i64 %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %5, align 8
  br label %59

24:                                               ; preds = %4
  %25 = load %struct.read_file_data*, %struct.read_file_data** %10, align 8
  %26 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FNT_STDIN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.archive*, %struct.archive** %6, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %31, i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %57

34:                                               ; preds = %24
  %35 = load %struct.read_file_data*, %struct.read_file_data** %10, align 8
  %36 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FNT_MBS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.archive*, %struct.archive** %6, align 8
  %42 = load i32, i32* @errno, align 4
  %43 = load %struct.read_file_data*, %struct.read_file_data** %10, align 8
  %44 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %41, i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %56

48:                                               ; preds = %34
  %49 = load %struct.archive*, %struct.archive** %6, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = load %struct.read_file_data*, %struct.read_file_data** %10, align 8
  %52 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %40
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %22
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
