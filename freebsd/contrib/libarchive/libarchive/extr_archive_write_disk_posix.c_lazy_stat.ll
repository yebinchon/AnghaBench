; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_lazy_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_lazy_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i64, i32, i32, i32*, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Couldn't stat file\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @lazy_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lazy_stat(%struct.archive_write_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_disk*, align 8
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  %4 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %5 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %9, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %15 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %14, i32 0, i32 2
  %16 = call i64 @lstat(i32 %13, i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %20 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %19, i32 0, i32 2
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %10
  %25 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %26 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %25, i32 0, i32 1
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @archive_set_error(i32* %26, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %18, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @lstat(i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
