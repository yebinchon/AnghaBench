; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_archive_write_disk_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_archive_write_disk_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32, i32, i32 }
%struct.archive_write_disk = type { i32, %struct.archive, i32, i32, i32, i32 }

@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive* @archive_write_disk_new() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_write_disk*, align 8
  %3 = call i64 @calloc(i32 1, i32 32)
  %4 = inttoptr i64 %3 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %4, %struct.archive_write_disk** %2, align 8
  %5 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %6 = icmp eq %struct.archive_write_disk* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.archive* null, %struct.archive** %1, align 8
  br label %38

8:                                                ; preds = %0
  %9 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %10 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %11 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.archive, %struct.archive* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %14 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %15 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.archive, %struct.archive* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = call i32 (...) @archive_write_disk_vtable()
  %18 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %19 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.archive, %struct.archive* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = call i32 @time(i32* null)
  %22 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %23 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = call i32 @umask(i32 0)
  %25 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %26 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = call i32 @umask(i32 %24)
  %28 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %29 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %28, i32 0, i32 2
  %30 = call i32* @archive_string_ensure(i32* %29, i32 512)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %34 = call i32 @free(%struct.archive_write_disk* %33)
  store %struct.archive* null, %struct.archive** %1, align 8
  br label %38

35:                                               ; preds = %8
  %36 = load %struct.archive_write_disk*, %struct.archive_write_disk** %2, align 8
  %37 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %36, i32 0, i32 1
  store %struct.archive* %37, %struct.archive** %1, align 8
  br label %38

38:                                               ; preds = %35, %32, %7
  %39 = load %struct.archive*, %struct.archive** %1, align 8
  ret %struct.archive* %39
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_write_disk_vtable(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @archive_string_ensure(i32*, i32) #1

declare dso_local i32 @free(%struct.archive_write_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
