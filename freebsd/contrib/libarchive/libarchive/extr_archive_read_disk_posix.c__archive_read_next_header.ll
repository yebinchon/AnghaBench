; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_next_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_next_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_read_disk = type { %struct.archive_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive_entry**)* @_archive_read_next_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_next_header(%struct.archive* %0, %struct.archive_entry** %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read_disk*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry** %1, %struct.archive_entry*** %4, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %8, %struct.archive_read_disk** %6, align 8
  %9 = load %struct.archive_entry**, %struct.archive_entry*** %4, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %9, align 8
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %12 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %11, i32 0, i32 0
  %13 = load %struct.archive_entry*, %struct.archive_entry** %12, align 8
  %14 = call i32 @_archive_read_next_header2(%struct.archive* %10, %struct.archive_entry* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %16 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %15, i32 0, i32 0
  %17 = load %struct.archive_entry*, %struct.archive_entry** %16, align 8
  %18 = load %struct.archive_entry**, %struct.archive_entry*** %4, align 8
  store %struct.archive_entry* %17, %struct.archive_entry** %18, align 8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @_archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
