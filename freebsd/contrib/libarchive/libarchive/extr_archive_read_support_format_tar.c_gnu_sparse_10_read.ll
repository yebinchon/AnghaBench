; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_10_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_10_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i64 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, i64*)* @gnu_sparse_10_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_sparse_10_read(%struct.archive_read* %0, %struct.tar* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.tar*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.tar* %1, %struct.tar** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.tar*, %struct.tar** %6, align 8
  %15 = call i32 @gnu_clear_sparse_list(%struct.tar* %14)
  %16 = load %struct.tar*, %struct.tar** %6, align 8
  %17 = getelementptr inbounds %struct.tar, %struct.tar* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %20 = load %struct.tar*, %struct.tar** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i64 @gnu_sparse_10_atol(%struct.archive_read* %19, %struct.tar* %20, i64* %13, i64* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %4, align 4
  br label %95

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %35 = load %struct.tar*, %struct.tar** %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call i64 @gnu_sparse_10_atol(%struct.archive_read* %34, %struct.tar* %35, i64* %13, i64* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %41, i32* %4, align 4
  br label %95

42:                                               ; preds = %33
  %43 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %44 = load %struct.tar*, %struct.tar** %6, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = call i64 @gnu_sparse_10_atol(%struct.archive_read* %43, %struct.tar* %44, i64* %13, i64* %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %50, i32* %4, align 4
  br label %95

51:                                               ; preds = %42
  %52 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %53 = load %struct.tar*, %struct.tar** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @gnu_add_sparse_entry(%struct.archive_read* %52, %struct.tar* %53, i64 %54, i64 %55)
  %57 = load i64, i64* @ARCHIVE_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %60, i32* %4, align 4
  br label %95

61:                                               ; preds = %51
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = call i32 @tar_flush_unconsumed(%struct.archive_read* %63, i64* %64)
  %66 = load %struct.tar*, %struct.tar** %6, align 8
  %67 = getelementptr inbounds %struct.tar, %struct.tar* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sub nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 0, %72
  %74 = and i32 511, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %80, i32* %4, align 4
  br label %95

81:                                               ; preds = %62
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @__archive_read_consume(%struct.archive_read* %83, i64 %84)
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %88, i32* %4, align 4
  br label %95

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %87, %79, %59, %49, %40, %26
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @gnu_clear_sparse_list(%struct.tar*) #1

declare dso_local i64 @gnu_sparse_10_atol(%struct.archive_read*, %struct.tar*, i64*, i64*) #1

declare dso_local i64 @gnu_add_sparse_entry(%struct.archive_read*, %struct.tar*, i64, i64) #1

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
