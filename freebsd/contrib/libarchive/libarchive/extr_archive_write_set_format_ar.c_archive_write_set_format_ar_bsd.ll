; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_set_format_ar_bsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ar.c_archive_write_set_format_ar_bsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"archive_write_set_format_ar_bsd\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_AR_BSD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ar (BSD)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_ar_bsd(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_write*
  store %struct.archive_write* %6, %struct.archive_write** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %9 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %10 = call i32 @archive_check_magic(%struct.archive* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = call i32 @archive_write_set_format_ar(%struct.archive_write* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @ARCHIVE_FORMAT_AR_BSD, align 4
  %18 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %19 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  br label %24

24:                                               ; preds = %16, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_write_set_format_ar(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
