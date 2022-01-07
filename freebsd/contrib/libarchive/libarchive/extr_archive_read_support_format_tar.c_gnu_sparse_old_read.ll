; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_old_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_old_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.archive_entry_header_gnutar = type { i64*, %struct.gnu_sparse* }
%struct.gnu_sparse = type { i32 }
%struct.extended = type { [21 x %struct.gnu_sparse], [1 x i8], [7 x i8] }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Truncated tar archive detected while reading sparse file data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry_header_gnutar*, i64*)* @gnu_sparse_old_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_sparse_old_read(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry_header_gnutar* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry_header_gnutar*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.extended*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry_header_gnutar* %2, %struct.archive_entry_header_gnutar** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %14 = load %struct.tar*, %struct.tar** %7, align 8
  %15 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %8, align 8
  %16 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %15, i32 0, i32 1
  %17 = load %struct.gnu_sparse*, %struct.gnu_sparse** %16, align 8
  %18 = call i64 @gnu_sparse_old_parse(%struct.archive_read* %13, %struct.tar* %14, %struct.gnu_sparse* %17, i32 4)
  %19 = load i64, i64* @ARCHIVE_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %5, align 4
  br label %91

23:                                               ; preds = %4
  %24 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %8, align 8
  %25 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* @ARCHIVE_OK, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %91

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %68, %33
  %35 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = call i32 @tar_flush_unconsumed(%struct.archive_read* %35, i64* %36)
  %38 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %39 = call i8* @__archive_read_ahead(%struct.archive_read* %38, i32 512, i32* %10)
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %43, i32* %5, align 4
  br label %91

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 512
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %49 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %48, i32 0, i32 0
  %50 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %51 = call i32 @archive_set_error(i32* %49, i32 %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %52, i32* %5, align 4
  br label %91

53:                                               ; preds = %44
  %54 = load i64*, i64** %9, align 8
  store i64 512, i64* %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = bitcast i8* %55 to %struct.extended*
  store %struct.extended* %56, %struct.extended** %12, align 8
  %57 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %58 = load %struct.tar*, %struct.tar** %7, align 8
  %59 = load %struct.extended*, %struct.extended** %12, align 8
  %60 = getelementptr inbounds %struct.extended, %struct.extended* %59, i32 0, i32 0
  %61 = getelementptr inbounds [21 x %struct.gnu_sparse], [21 x %struct.gnu_sparse]* %60, i64 0, i64 0
  %62 = call i64 @gnu_sparse_old_parse(%struct.archive_read* %57, %struct.tar* %58, %struct.gnu_sparse* %61, i32 21)
  %63 = load i64, i64* @ARCHIVE_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %66, i32* %5, align 4
  br label %91

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.extended*, %struct.extended** %12, align 8
  %70 = getelementptr inbounds %struct.extended, %struct.extended* %69, i32 0, i32 1
  %71 = getelementptr inbounds [1 x i8], [1 x i8]* %70, i64 0, i64 0
  %72 = load i8, i8* %71, align 4
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %34, label %75

75:                                               ; preds = %68
  %76 = load %struct.tar*, %struct.tar** %7, align 8
  %77 = getelementptr inbounds %struct.tar, %struct.tar* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = icmp ne %struct.TYPE_2__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.tar*, %struct.tar** %7, align 8
  %82 = getelementptr inbounds %struct.tar, %struct.tar* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tar*, %struct.tar** %7, align 8
  %87 = getelementptr inbounds %struct.tar, %struct.tar* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %75
  %89 = load i64, i64* @ARCHIVE_OK, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %65, %47, %42, %30, %21
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @gnu_sparse_old_parse(%struct.archive_read*, %struct.tar*, %struct.gnu_sparse*, i32) #1

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
