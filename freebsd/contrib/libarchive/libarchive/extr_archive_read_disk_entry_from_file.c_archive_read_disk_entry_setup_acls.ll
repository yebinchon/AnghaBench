; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_entry_from_file.c_archive_read_disk_entry_setup_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_entry_from_file.c_archive_read_disk_entry_setup_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_entry_setup_acls(%struct.archive_read_disk* %0, %struct.archive_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.archive_read_disk*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32*, align 8
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
