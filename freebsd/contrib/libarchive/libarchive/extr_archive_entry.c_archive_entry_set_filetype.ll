; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_set_filetype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_set_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@AE_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_set_filetype(%struct.archive_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @AE_IFMT, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %10 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %8
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @AE_IFMT, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
