; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_set_matching.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_set_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type opaque
%struct.archive_read_disk = type { void (%struct.archive.0*, i8*, %struct.archive_entry.1*)*, i8*, %struct.archive* }
%struct.archive.0 = type opaque
%struct.archive_entry.1 = type opaque

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_read_disk_set_matching\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_set_matching(%struct.archive* %0, %struct.archive* %1, void (%struct.archive*, i8*, %struct.archive_entry*)* %2, i8* %3) #0 {
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca void (%struct.archive*, i8*, %struct.archive_entry*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.archive_read_disk*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store %struct.archive* %1, %struct.archive** %6, align 8
  store void (%struct.archive*, i8*, %struct.archive_entry*)* %2, void (%struct.archive*, i8*, %struct.archive_entry*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.archive*, %struct.archive** %5, align 8
  %11 = bitcast %struct.archive* %10 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %11, %struct.archive_read_disk** %9, align 8
  %12 = load %struct.archive*, %struct.archive** %5, align 8
  %13 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %15 = call i32 @archive_check_magic(%struct.archive* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.archive*, %struct.archive** %6, align 8
  %17 = load %struct.archive_read_disk*, %struct.archive_read_disk** %9, align 8
  %18 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %17, i32 0, i32 2
  store %struct.archive* %16, %struct.archive** %18, align 8
  %19 = load void (%struct.archive*, i8*, %struct.archive_entry*)*, void (%struct.archive*, i8*, %struct.archive_entry*)** %7, align 8
  %20 = bitcast void (%struct.archive*, i8*, %struct.archive_entry*)* %19 to void (%struct.archive.0*, i8*, %struct.archive_entry.1*)*
  %21 = load %struct.archive_read_disk*, %struct.archive_read_disk** %9, align 8
  %22 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %21, i32 0, i32 0
  store void (%struct.archive.0*, i8*, %struct.archive_entry.1*)* %20, void (%struct.archive.0*, i8*, %struct.archive_entry.1*)** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.archive_read_disk*, %struct.archive_read_disk** %9, align 8
  %25 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %26
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
