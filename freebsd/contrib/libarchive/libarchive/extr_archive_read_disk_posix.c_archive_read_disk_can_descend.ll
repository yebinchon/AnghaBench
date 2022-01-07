; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_can_descend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_can_descend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { %struct.tree* }
%struct.tree = type { i64, i64 }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"archive_read_disk_can_descend\00", align 1
@TREE_REGULAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_can_descend(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_read_disk*, align 8
  %4 = alloca %struct.tree*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %6, %struct.archive_read_disk** %3, align 8
  %7 = load %struct.archive_read_disk*, %struct.archive_read_disk** %3, align 8
  %8 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %7, i32 0, i32 0
  %9 = load %struct.tree*, %struct.tree** %8, align 8
  store %struct.tree* %9, %struct.tree** %4, align 8
  %10 = load %struct.archive*, %struct.archive** %2, align 8
  %11 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.tree*, %struct.tree** %4, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TREE_REGULAR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.tree*, %struct.tree** %4, align 8
  %23 = getelementptr inbounds %struct.tree, %struct.tree* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %1
  %27 = phi i1 [ false, %1 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
