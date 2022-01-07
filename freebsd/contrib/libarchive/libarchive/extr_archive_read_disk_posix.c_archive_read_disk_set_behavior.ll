; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_set_behavior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_set_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_read_disk_honor_nodump\00", align 1
@ARCHIVE_READDISK_RESTORE_ATIME = common dso_local global i32 0, align 4
@needsRestoreTimes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_set_behavior(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read_disk*, align 8
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %8, %struct.archive_read_disk** %5, align 8
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %13 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %16 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ARCHIVE_READDISK_RESTORE_ATIME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = call i32 @archive_read_disk_set_atime_restored(%struct.archive* %22)
  store i32 %23, i32* %6, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %26 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @needsRestoreTimes, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %33 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %24
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_read_disk_set_atime_restored(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
