; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i64, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Can't restore time\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64)* @set_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_times(%struct.archive_write_disk* %0, i32 %1, i32 %2, i8* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.archive_write_disk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i8* %3, i8** %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i64 %11, i64* %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %24, align 8
  %29 = load i64, i64* %25, align 8
  %30 = load i64, i64* %20, align 8
  %31 = load i64, i64* %21, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i8*, i8** %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* %22, align 8
  %38 = load i64, i64* %23, align 8
  %39 = call i32 @set_time(i32 %32, i32 %33, i8* %34, i64 %35, i64 %36, i64 %37, i64 %38)
  store i32 %39, i32* %27, align 4
  %40 = load i32, i32* %26, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %12
  %43 = load i32, i32* %27, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %12
  %46 = load %struct.archive_write_disk*, %struct.archive_write_disk** %14, align 8
  %47 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %46, i32 0, i32 1
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @archive_set_error(i32* %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %50, i32* %13, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i32 @set_time(i32, i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
