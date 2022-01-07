; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_copy_stat.c_archive_entry_copy_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_copy_stat.c_archive_entry_copy_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_copy_stat(%struct.archive_entry* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.stat*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %5 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %6 = load %struct.stat*, %struct.stat** %4, align 8
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 24
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @archive_entry_set_atime(%struct.archive_entry* %5, i32 %8, i32 0)
  %10 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %11 = load %struct.stat*, %struct.stat** %4, align 8
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 23
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %10, i32 %13, i32 0)
  %15 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %16 = load %struct.stat*, %struct.stat** %4, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 22
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %15, i32 %18, i32 0)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %21 = call i32 @archive_entry_unset_birthtime(%struct.archive_entry* %20)
  %22 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %23 = load %struct.stat*, %struct.stat** %4, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 19
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @archive_entry_set_dev(%struct.archive_entry* %22, i32 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = load %struct.stat*, %struct.stat** %4, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 18
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @archive_entry_set_gid(%struct.archive_entry* %27, i32 %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %33 = load %struct.stat*, %struct.stat** %4, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @archive_entry_set_uid(%struct.archive_entry* %32, i32 %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %38 = load %struct.stat*, %struct.stat** %4, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @archive_entry_set_ino(%struct.archive_entry* %37, i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %43 = load %struct.stat*, %struct.stat** %4, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %42, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %48 = load %struct.stat*, %struct.stat** %4, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %47, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %53 = load %struct.stat*, %struct.stat** %4, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @archive_entry_set_size(%struct.archive_entry* %52, i32 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %58 = load %struct.stat*, %struct.stat** %4, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @archive_entry_set_mode(%struct.archive_entry* %57, i32 %60)
  ret void
}

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_unset_birthtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_rdev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
