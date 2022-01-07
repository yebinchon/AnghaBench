; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_extract_set_skip_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_extract_set_skip_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32, i8*, i8* }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"archive_read_extract_set_skip_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_read_extract_set_skip_file(%struct.archive* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_read*
  store %struct.archive_read* %9, %struct.archive_read** %7, align 8
  %10 = load i64, i64* @ARCHIVE_OK, align 8
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %14 = call i64 @__archive_check_magic(%struct.archive* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @__archive_check_magic(%struct.archive*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
