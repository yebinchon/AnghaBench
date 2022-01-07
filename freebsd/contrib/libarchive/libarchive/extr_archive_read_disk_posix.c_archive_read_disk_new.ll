; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32, i32, i32 }
%struct.archive_read_disk = type { %struct.archive, i32, i32, i32, i32, i32, i32, i32 }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@trivial_lookup_uname = common dso_local global i32 0, align 4
@trivial_lookup_gname = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_MAC_COPYFILE = common dso_local global i32 0, align 4
@open_on_current_dir = common dso_local global i32 0, align 4
@tree_current_dir_fd = common dso_local global i32 0, align 4
@tree_enter_working_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive* @archive_read_disk_new() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_read_disk*, align 8
  %3 = call i64 @calloc(i32 1, i32 40)
  %4 = inttoptr i64 %3 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %4, %struct.archive_read_disk** %2, align 8
  %5 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %6 = icmp eq %struct.archive_read_disk* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.archive* null, %struct.archive** %1, align 8
  br label %46

8:                                                ; preds = %0
  %9 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %10 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %11 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.archive, %struct.archive* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %14 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %15 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.archive, %struct.archive* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = call i32 (...) @archive_read_disk_vtable()
  %18 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %19 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.archive, %struct.archive* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %22 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %21, i32 0, i32 0
  %23 = call i32 @archive_entry_new2(%struct.archive* %22)
  %24 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %25 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @trivial_lookup_uname, align 4
  %27 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %28 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @trivial_lookup_gname, align 4
  %30 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %31 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ARCHIVE_READDISK_MAC_COPYFILE, align 4
  %33 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %34 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @open_on_current_dir, align 4
  %36 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %37 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @tree_current_dir_fd, align 4
  %39 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %40 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @tree_enter_working_dir, align 4
  %42 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %43 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.archive_read_disk*, %struct.archive_read_disk** %2, align 8
  %45 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %44, i32 0, i32 0
  store %struct.archive* %45, %struct.archive** %1, align 8
  br label %46

46:                                               ; preds = %8, %7
  %47 = load %struct.archive*, %struct.archive** %1, align 8
  ret %struct.archive* %47
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_read_disk_vtable(...) #1

declare dso_local i32 @archive_entry_new2(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
