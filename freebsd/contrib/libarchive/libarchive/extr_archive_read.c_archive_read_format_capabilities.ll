; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_format_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_format_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.archive_read*)* }

@ARCHIVE_READ_FORMAT_CAPS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_format_capabilities(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %5 = load %struct.archive*, %struct.archive** %3, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_read*
  store %struct.archive_read* %6, %struct.archive_read** %4, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %8 = icmp ne %struct.archive_read* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.archive_read*)*, i32 (%struct.archive_read*)** %18, align 8
  %20 = icmp ne i32 (%struct.archive_read*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %23 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.archive_read*)*, i32 (%struct.archive_read*)** %25, align 8
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = call i32 %26(%struct.archive_read* %27)
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %14, %9, %1
  %30 = load i32, i32* @ARCHIVE_READ_FORMAT_CAPS_NONE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
