; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_archive_write_disk_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_archive_write_disk_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_disk = type { i32, i32 (i32, i8*, i32)*, i32 }

@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"archive_write_disk_gid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_disk_gid(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_write_disk*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.archive*, %struct.archive** %5, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %10, %struct.archive_write_disk** %8, align 8
  %11 = load %struct.archive_write_disk*, %struct.archive_write_disk** %8, align 8
  %12 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %11, i32 0, i32 2
  %13 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %15 = call i32 @archive_check_magic(i32* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.archive_write_disk*, %struct.archive_write_disk** %8, align 8
  %17 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %16, i32 0, i32 1
  %18 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %17, align 8
  %19 = icmp ne i32 (i32, i8*, i32)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %8, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 1
  %23 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %22, align 8
  %24 = load %struct.archive_write_disk*, %struct.archive_write_disk** %8, align 8
  %25 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %23(i32 %26, i8* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
