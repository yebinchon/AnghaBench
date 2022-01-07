; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c___archive_write_allocate_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c___archive_write_allocate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { %struct.archive_write_filter*, %struct.archive* }
%struct.archive = type { i32 }
%struct.archive_write = type { %struct.archive_write_filter*, %struct.archive_write_filter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.archive_write_filter*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_write*
  store %struct.archive_write* %6, %struct.archive_write** %3, align 8
  %7 = call %struct.archive_write_filter* @calloc(i32 1, i32 16)
  store %struct.archive_write_filter* %7, %struct.archive_write_filter** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %2, align 8
  %9 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %10 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %9, i32 0, i32 1
  store %struct.archive* %8, %struct.archive** %10, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 1
  %13 = load %struct.archive_write_filter*, %struct.archive_write_filter** %12, align 8
  %14 = icmp eq %struct.archive_write_filter* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %17 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 1
  store %struct.archive_write_filter* %16, %struct.archive_write_filter** %18, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %21 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %21, i32 0, i32 0
  %23 = load %struct.archive_write_filter*, %struct.archive_write_filter** %22, align 8
  %24 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %23, i32 0, i32 0
  store %struct.archive_write_filter* %20, %struct.archive_write_filter** %24, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %27 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 0
  store %struct.archive_write_filter* %26, %struct.archive_write_filter** %28, align 8
  %29 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  ret %struct.archive_write_filter* %29
}

declare dso_local %struct.archive_write_filter* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
