; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c___archive_write_close_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c___archive_write_close_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { {}*, %struct.archive_write_filter* }

@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_write_close_filter(%struct.archive_write_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_filter*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %3, align 8
  %4 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %5 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %4, i32 0, i32 0
  %6 = bitcast {}** %5 to i32 (%struct.archive_write_filter*)**
  %7 = load i32 (%struct.archive_write_filter*)*, i32 (%struct.archive_write_filter*)** %6, align 8
  %8 = icmp ne i32 (%struct.archive_write_filter*)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %11 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.archive_write_filter*)**
  %13 = load i32 (%struct.archive_write_filter*)*, i32 (%struct.archive_write_filter*)** %12, align 8
  %14 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %15 = call i32 %13(%struct.archive_write_filter* %14)
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %18 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %17, i32 0, i32 1
  %19 = load %struct.archive_write_filter*, %struct.archive_write_filter** %18, align 8
  %20 = icmp ne %struct.archive_write_filter* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %23 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %22, i32 0, i32 1
  %24 = load %struct.archive_write_filter*, %struct.archive_write_filter** %23, align 8
  %25 = call i32 @__archive_write_close_filter(%struct.archive_write_filter* %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %21, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
