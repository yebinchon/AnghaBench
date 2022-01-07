; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_set_format_pax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_set_format_pax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32, i32 (%struct.archive_write*)*, i32, i32, i32, i32, %struct.pax* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.pax = type { i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"archive_write_set_format_pax\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't allocate pax data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@WRITE_LIBARCHIVE_XATTR = common dso_local global i32 0, align 4
@WRITE_SCHILY_XATTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pax\00", align 1
@archive_write_pax_options = common dso_local global i32 0, align 4
@archive_write_pax_header = common dso_local global i32 0, align 4
@archive_write_pax_data = common dso_local global i32 0, align 4
@archive_write_pax_close = common dso_local global i32 0, align 4
@archive_write_pax_finish_entry = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"POSIX pax interchange\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_pax(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.pax*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 3
  %14 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %13, align 8
  %15 = icmp ne i32 (%struct.archive_write*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 3
  %19 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %18, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = call i32 %19(%struct.archive_write* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = call i64 @calloc(i32 1, i32 4)
  %24 = inttoptr i64 %23 to %struct.pax*
  store %struct.pax* %24, %struct.pax** %5, align 8
  %25 = load %struct.pax*, %struct.pax** %5, align 8
  %26 = icmp eq %struct.pax* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @archive_set_error(%struct.TYPE_2__* %29, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %22
  %34 = load i32, i32* @WRITE_LIBARCHIVE_XATTR, align 4
  %35 = load i32, i32* @WRITE_SCHILY_XATTR, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.pax*, %struct.pax** %5, align 8
  %38 = getelementptr inbounds %struct.pax, %struct.pax* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pax*, %struct.pax** %5, align 8
  %40 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 8
  store %struct.pax* %39, %struct.pax** %41, align 8
  %42 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %43 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* @archive_write_pax_options, align 4
  %45 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @archive_write_pax_header, align 4
  %48 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %49 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @archive_write_pax_data, align 4
  %51 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @archive_write_pax_close, align 4
  %54 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %55 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %57 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %56, i32 0, i32 3
  store i32 (%struct.archive_write*)* @archive_write_pax_free, i32 (%struct.archive_write*)** %57, align 8
  %58 = load i32, i32* @archive_write_pax_finish_entry, align 4
  %59 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %60 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %62 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %63 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %66 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %33, %27
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @archive_write_pax_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
