; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_skip_lseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_skip_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_file_data = type { i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i64 0, align 8
@FNT_STDIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error seeking in stdin\00", align 1
@FNT_MBS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error seeking in '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error seeking in '%S'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i32)* @file_skip_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_skip_lseek(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.read_file_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.read_file_data*
  store %struct.read_file_data* %12, %struct.read_file_data** %8, align 8
  %13 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %14 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SEEK_CUR, align 4
  %17 = call i32 @lseek(i32 %15, i32 0, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %21 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SEEK_CUR, align 4
  %25 = call i32 @lseek(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  br label %72

31:                                               ; preds = %19, %3
  %32 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %33 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ESPIPE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %72

38:                                               ; preds = %31
  %39 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %40 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FNT_STDIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.archive*, %struct.archive** %5, align 8
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %45, i64 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %71

48:                                               ; preds = %38
  %49 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %50 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FNT_MBS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.archive*, %struct.archive** %5, align 8
  %56 = load i64, i64* @errno, align 8
  %57 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %58 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %55, i64 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %70

62:                                               ; preds = %48
  %63 = load %struct.archive*, %struct.archive** %5, align 8
  %64 = load i64, i64* @errno, align 8
  %65 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %66 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %63, i64 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70, %44
  store i32 -1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %37, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
