; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_file.c_file_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_file.c_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_FILE_data = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i8*, i64)* @file_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_write(%struct.archive* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.write_FILE_data*, align 8
  %11 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.write_FILE_data*
  store %struct.write_FILE_data* %13, %struct.write_FILE_data** %10, align 8
  br label %14

14:                                               ; preds = %27, %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.write_FILE_data*, %struct.write_FILE_data** %10, align 8
  %18 = getelementptr inbounds %struct.write_FILE_data, %struct.write_FILE_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @fwrite(i8* %15, i32 1, i64 %16, i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %14

28:                                               ; preds = %23
  %29 = load %struct.archive*, %struct.archive** %6, align 8
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @archive_set_error(%struct.archive* %29, i64 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %35

32:                                               ; preds = %14
  %33 = load i64, i64* %11, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
