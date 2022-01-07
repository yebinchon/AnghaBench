; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_current_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_current_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixup_entry = type { i32 }
%struct.archive_write_disk = type { %struct.fixup_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fixup_entry* (%struct.archive_write_disk*, i8*)* @current_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fixup_entry* @current_fixup(%struct.archive_write_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_write_disk*, align 8
  %4 = alloca i8*, align 8
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %5, i32 0, i32 0
  %7 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %8 = icmp eq %struct.fixup_entry* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.fixup_entry* @new_fixup(%struct.archive_write_disk* %10, i8* %11)
  %13 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %14 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %13, i32 0, i32 0
  store %struct.fixup_entry* %12, %struct.fixup_entry** %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %17 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %16, i32 0, i32 0
  %18 = load %struct.fixup_entry*, %struct.fixup_entry** %17, align 8
  ret %struct.fixup_entry* %18
}

declare dso_local %struct.fixup_entry* @new_fixup(%struct.archive_write_disk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
