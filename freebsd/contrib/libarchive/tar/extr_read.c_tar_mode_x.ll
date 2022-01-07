; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_read.c_tar_mode_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_read.c_tar_mode_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32, i32, i32 }
%struct.archive = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot allocate disk writer object\00", align 1
@OPTFLAG_NUMERIC_OWNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Not found in archive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tar_mode_x(%struct.bsdtar* %0) #0 {
  %2 = alloca %struct.bsdtar*, align 8
  %3 = alloca %struct.archive*, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %2, align 8
  %4 = call %struct.archive* (...) @archive_write_disk_new()
  store %struct.archive* %4, %struct.archive** %3, align 8
  %5 = load %struct.archive*, %struct.archive** %3, align 8
  %6 = icmp eq %struct.archive* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = call i32 @lafe_errc(i32 1, i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %12 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OPTFLAG_NUMERIC_OWNER, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = call i32 @archive_write_disk_set_standard_lookup(%struct.archive* %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %23 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @archive_write_disk_set_options(%struct.archive* %21, i32 %24)
  %26 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = call i32 @read_archive(%struct.bsdtar* %26, i8 signext 120, %struct.archive* %27)
  %29 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %30 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @unmatched_inclusions_warn(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %36 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = call i32 @archive_write_free(%struct.archive* %38)
  ret void
}

declare dso_local %struct.archive* @archive_write_disk_new(...) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

declare dso_local i32 @archive_write_disk_set_standard_lookup(%struct.archive*) #1

declare dso_local i32 @archive_write_disk_set_options(%struct.archive*, i32) #1

declare dso_local i32 @read_archive(%struct.bsdtar*, i8 signext, %struct.archive*) #1

declare dso_local i64 @unmatched_inclusions_warn(i32, i8*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
