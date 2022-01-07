; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_disk_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_disk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_READDISK_RESTORE_ATIME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't allocate tar data\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @_archive_read_disk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_disk_open(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_read_disk*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.archive*, %struct.archive** %4, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %8, %struct.archive_read_disk** %6, align 8
  %9 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %10 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %15 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %19 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ARCHIVE_READDISK_RESTORE_ATIME, align 4
  %22 = and i32 %20, %21
  %23 = call i32* @tree_reopen(i32* %16, i8* %17, i32 %22)
  %24 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %25 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  br label %39

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %29 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %32 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ARCHIVE_READDISK_RESTORE_ATIME, align 4
  %35 = and i32 %33, %34
  %36 = call i32* @tree_open(i8* %27, i32 %30, i32 %35)
  %37 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %38 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %13
  %40 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %41 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %46 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %45, i32 0, i32 1
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @archive_set_error(%struct.TYPE_2__* %46, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %50 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %51 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %39
  %55 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %56 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %57 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %44
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32* @tree_reopen(i32*, i8*, i32) #1

declare dso_local i32* @tree_open(i8*, i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
