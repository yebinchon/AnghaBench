; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_uname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_uname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { i8* (i32, i32)*, i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_read_disk_uname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @archive_read_disk_uname(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read_disk*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.archive*, %struct.archive** %4, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %8, %struct.archive_read_disk** %6, align 8
  %9 = load i64, i64* @ARCHIVE_OK, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %13 = call i64 @__archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %18 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %17, i32 0, i32 0
  %19 = load i8* (i32, i32)*, i8* (i32, i32)** %18, align 8
  %20 = icmp eq i8* (i32, i32)* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %31

22:                                               ; preds = %16
  %23 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %24 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %23, i32 0, i32 0
  %25 = load i8* (i32, i32)*, i8* (i32, i32)** %24, align 8
  %26 = load %struct.archive_read_disk*, %struct.archive_read_disk** %6, align 8
  %27 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* %25(i32 %28, i32 %29)
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %22, %21, %15
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @__archive_check_magic(%struct.archive*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
