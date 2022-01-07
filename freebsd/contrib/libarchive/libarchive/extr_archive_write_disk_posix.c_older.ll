; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_older.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_older.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stat*, %struct.archive_entry*)* @older to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @older(%struct.stat* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  store %struct.stat* %0, %struct.stat** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %6 = load %struct.stat*, %struct.stat** %4, align 8
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @to_int64_time(i32 %8)
  %10 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %11 = call i32 @archive_entry_mtime(%struct.archive_entry* %10)
  %12 = call i64 @to_int64_time(i32 %11)
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.stat*, %struct.stat** %4, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @to_int64_time(i32 %18)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %21 = call i32 @archive_entry_mtime(%struct.archive_entry* %20)
  %22 = call i64 @to_int64_time(i32 %21)
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @to_int64_time(i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
