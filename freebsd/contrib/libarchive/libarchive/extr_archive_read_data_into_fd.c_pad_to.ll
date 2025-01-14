; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_data_into_fd.c_pad_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_data_into_fd.c_pad_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Seek error\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i32, i32, i64, i8*, i64, i64)* @pad_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_to(%struct.archive* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %15, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* @SEEK_CUR, align 4
  %26 = call i64 @lseek(i32 %21, i64 %24, i32 %25)
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.archive*, %struct.archive** %9, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @archive_set_error(%struct.archive* %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %8, align 4
  br label %71

35:                                               ; preds = %20
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %36, i32* %8, align 4
  br label %71

37:                                               ; preds = %7
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %45, %46
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %16, align 8
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* %16, align 8
  %57 = call i64 @write(i32 %54, i8* %55, i64 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.archive*, %struct.archive** %9, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @archive_set_error(%struct.archive* %61, i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %64, i32* %8, align 4
  br label %71

65:                                               ; preds = %53
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %15, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %15, align 8
  br label %38

69:                                               ; preds = %38
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %60, %35, %30
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
