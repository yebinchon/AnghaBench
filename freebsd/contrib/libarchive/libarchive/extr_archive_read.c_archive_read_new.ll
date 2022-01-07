; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32, i32, i32 }
%struct.archive_read = type { %struct.archive, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive* @archive_read_new() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_read*, align 8
  %3 = call i64 @calloc(i32 1, i32 40)
  %4 = inttoptr i64 %3 to %struct.archive_read*
  store %struct.archive_read* %4, %struct.archive_read** %2, align 8
  %5 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %6 = icmp eq %struct.archive_read* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.archive* null, %struct.archive** %1, align 8
  br label %34

8:                                                ; preds = %0
  %9 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %10 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.archive, %struct.archive* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %14 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.archive, %struct.archive* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 0
  %19 = call i32 @archive_entry_new2(%struct.archive* %18)
  %20 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = call i32 (...) @archive_read_vtable()
  %23 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.archive, %struct.archive* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 0
  store %struct.archive* %33, %struct.archive** %1, align 8
  br label %34

34:                                               ; preds = %8, %7
  %35 = load %struct.archive*, %struct.archive** %1, align 8
  ret %struct.archive* %35
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_entry_new2(%struct.archive*) #1

declare dso_local i32 @archive_read_vtable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
