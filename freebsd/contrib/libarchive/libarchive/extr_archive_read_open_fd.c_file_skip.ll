; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_fd.c_file_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_fd.c_file_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_fd_data = type { i32, i64, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESPIPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Error seeking\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i32)* @file_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_skip(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.read_fd_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.read_fd_data*
  store %struct.read_fd_data* %14, %struct.read_fd_data** %8, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  store i32 31, i32* %12, align 4
  %16 = load %struct.read_fd_data*, %struct.read_fd_data** %8, align 8
  %17 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.read_fd_data*, %struct.read_fd_data** %8, align 8
  %24 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  %27 = load %struct.read_fd_data*, %struct.read_fd_data** %8, align 8
  %28 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %64

34:                                               ; preds = %21
  %35 = load %struct.read_fd_data*, %struct.read_fd_data** %8, align 8
  %36 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SEEK_CUR, align 4
  %39 = call i32 @lseek(i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.read_fd_data*, %struct.read_fd_data** %8, align 8
  %43 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SEEK_CUR, align 4
  %47 = call i32 @lseek(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %41, %34
  %54 = load %struct.read_fd_data*, %struct.read_fd_data** %8, align 8
  %55 = getelementptr inbounds %struct.read_fd_data, %struct.read_fd_data* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ESPIPE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.archive*, %struct.archive** %5, align 8
  %62 = load i64, i64* @errno, align 8
  %63 = call i32 @archive_set_error(%struct.archive* %61, i64 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %59, %49, %33, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
