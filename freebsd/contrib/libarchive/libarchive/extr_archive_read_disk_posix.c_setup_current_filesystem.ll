; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_setup_current_filesystem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_setup_current_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { i32, %struct.tree* }
%struct.tree = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i64 0, align 8
@_PC_NAME_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_disk*)* @setup_current_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_current_filesystem(%struct.archive_read_disk* %0) #0 {
  %2 = alloca %struct.archive_read_disk*, align 8
  %3 = alloca %struct.tree*, align 8
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %2, align 8
  %4 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %4, i32 0, i32 1
  %6 = load %struct.tree*, %struct.tree** %5, align 8
  store %struct.tree* %6, %struct.tree** %3, align 8
  %7 = load %struct.tree*, %struct.tree** %3, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.tree*, %struct.tree** %3, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.tree*, %struct.tree** %3, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.tree*, %struct.tree** %3, align 8
  %20 = call i32 @get_xfer_size(%struct.tree* %19, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.tree*, %struct.tree** %3, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 -1, i32* %24, align 8
  %25 = load %struct.tree*, %struct.tree** %3, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 -1, i32* %28, align 4
  %29 = load %struct.tree*, %struct.tree** %3, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 -1, i32* %32, align 8
  %33 = load %struct.tree*, %struct.tree** %3, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 -1, i32* %36, align 4
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %37
}

declare dso_local i32 @get_xfer_size(%struct.tree*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
