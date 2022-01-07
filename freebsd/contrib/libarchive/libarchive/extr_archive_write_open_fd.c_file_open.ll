; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_fd.c_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_fd.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_fd_data = type { i32 }
%struct.stat = type { i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Couldn't stat fd %d\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_open(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.write_fd_data*, align 8
  %7 = alloca %struct.stat, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.write_fd_data*
  store %struct.write_fd_data* %9, %struct.write_fd_data** %6, align 8
  %10 = load %struct.write_fd_data*, %struct.write_fd_data** %6, align 8
  %11 = getelementptr inbounds %struct.write_fd_data, %struct.write_fd_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @fstat(i32 %12, %struct.stat* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.archive*, %struct.archive** %4, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = load %struct.write_fd_data*, %struct.write_fd_data** %6, align 8
  %19 = getelementptr inbounds %struct.write_fd_data, %struct.write_fd_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @archive_set_error(%struct.archive* %16, i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISREG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.archive*, %struct.archive** %4, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @archive_write_set_skip_file(%struct.archive* %29, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.archive*, %struct.archive** %4, align 8
  %37 = call i64 @archive_write_get_bytes_in_last_block(%struct.archive* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISCHR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISBLK(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @S_ISFIFO(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.write_fd_data*, %struct.write_fd_data** %6, align 8
  %56 = getelementptr inbounds %struct.write_fd_data, %struct.write_fd_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %49, %44, %39
  %60 = load %struct.archive*, %struct.archive** %4, align 8
  %61 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %60, i32 0)
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.archive*, %struct.archive** %4, align 8
  %64 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @archive_write_set_skip_file(%struct.archive*, i32, i32) #1

declare dso_local i64 @archive_write_get_bytes_in_last_block(%struct.archive*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
