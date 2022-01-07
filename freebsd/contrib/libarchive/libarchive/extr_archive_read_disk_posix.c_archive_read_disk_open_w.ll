; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_open_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_open_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.archive_string = type { i32 }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ARCHIVE_STATE_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"archive_read_disk_open_w\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't convert a path to a char string\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_open_w(%struct.archive* %0, i32* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.archive_read_disk*, align 8
  %6 = alloca %struct.archive_string, align 4
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %9, %struct.archive_read_disk** %5, align 8
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_CLOSED, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %17 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %16, i32 0, i32 0
  %18 = call i32 @archive_clear_error(%struct.TYPE_3__* %17)
  %19 = call i32 @archive_string_init(%struct.archive_string* %6)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @wcslen(i32* %21)
  %23 = call i64 @archive_string_append_from_wcs(%struct.archive_string* %6, i32* %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %31 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %30, i32 0, i32 0
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = call i32 @archive_set_error(%struct.TYPE_3__* %31, i64 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %36 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %35, i32 0, i32 0
  %37 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %38 = call i32 @archive_set_error(%struct.TYPE_3__* %36, i64 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %41 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %42 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %2
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_archive_read_disk_open(%struct.archive* %46, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = call i32 @archive_string_free(%struct.archive_string* %6)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_3__*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i64 @archive_string_append_from_wcs(%struct.archive_string*, i32*, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_3__*, i64, i8*) #1

declare dso_local i32 @_archive_read_disk_open(%struct.archive*, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
