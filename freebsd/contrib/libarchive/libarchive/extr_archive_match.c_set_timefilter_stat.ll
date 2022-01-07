; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.stat = type { i32 }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, i32, %struct.stat*)* @set_timefilter_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timefilter_stat(%struct.archive_match* %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.stat* %2, %struct.stat** %7, align 8
  %13 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %13, %struct.archive_entry** %8, align 8
  %14 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %15 = icmp eq %struct.archive_entry* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %18 = call i32 @error_nomem(%struct.archive_match* %17)
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %21 = load %struct.stat*, %struct.stat** %7, align 8
  %22 = call i32 @archive_entry_copy_stat(%struct.archive_entry* %20, %struct.stat* %21)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %24 = call i32 @archive_entry_ctime(%struct.archive_entry* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %26 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %28 = call i32 @archive_entry_mtime(%struct.archive_entry* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %30 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %32 = call i32 @archive_entry_free(%struct.archive_entry* %31)
  %33 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @set_timefilter(%struct.archive_match* %33, i32 %34, i32 %35, i64 %36, i32 %37, i64 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %19, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i32 @archive_entry_copy_stat(%struct.archive_entry*, %struct.stat*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @set_timefilter(%struct.archive_match*, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
