; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_uuencode.c_archive_write_add_filter_uuencode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_uuencode.c_archive_write_add_filter_uuencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 }
%struct.archive_write_filter = type { i8*, i32, i32, i32, i32, i32, i32, %struct.private_uuencode*, i32 }
%struct.private_uuencode = type { i32, i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"archive_write_add_filter_uu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Can't allocate data for uuencode filter\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"uuencode\00", align 1
@ARCHIVE_FILTER_UU = common dso_local global i32 0, align 4
@archive_filter_uuencode_open = common dso_local global i32 0, align 4
@archive_filter_uuencode_options = common dso_local global i32 0, align 4
@archive_filter_uuencode_write = common dso_local global i32 0, align 4
@archive_filter_uuencode_close = common dso_local global i32 0, align 4
@archive_filter_uuencode_free = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_uuencode(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca %struct.private_uuencode*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_write*
  store %struct.archive_write* %8, %struct.archive_write** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %9)
  store %struct.archive_write_filter* %10, %struct.archive_write_filter** %5, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 0
  %13 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %15 = call i32 @archive_check_magic(i32* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = call i64 @calloc(i32 1, i32 8)
  %17 = inttoptr i64 %16 to %struct.private_uuencode*
  store %struct.private_uuencode* %17, %struct.private_uuencode** %6, align 8
  %18 = load %struct.private_uuencode*, %struct.private_uuencode** %6, align 8
  %19 = icmp eq %struct.private_uuencode* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %22 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @archive_set_error(i32 %23, i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %1
  %28 = load %struct.private_uuencode*, %struct.private_uuencode** %6, align 8
  %29 = getelementptr inbounds %struct.private_uuencode, %struct.private_uuencode* %28, i32 0, i32 1
  %30 = call i32 @archive_strcpy(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.private_uuencode*, %struct.private_uuencode** %6, align 8
  %32 = getelementptr inbounds %struct.private_uuencode, %struct.private_uuencode* %31, i32 0, i32 0
  store i32 420, i32* %32, align 4
  %33 = load %struct.private_uuencode*, %struct.private_uuencode** %6, align 8
  %34 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %35 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %34, i32 0, i32 7
  store %struct.private_uuencode* %33, %struct.private_uuencode** %35, align 8
  %36 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %37 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @ARCHIVE_FILTER_UU, align 4
  %39 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %40 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @archive_filter_uuencode_open, align 4
  %42 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %43 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @archive_filter_uuencode_options, align 4
  %45 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %46 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @archive_filter_uuencode_write, align 4
  %48 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %49 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @archive_filter_uuencode_close, align 4
  %51 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %52 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @archive_filter_uuencode_free, align 4
  %54 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %55 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %27, %20
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32, i32, i8*) #1

declare dso_local i32 @archive_strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
