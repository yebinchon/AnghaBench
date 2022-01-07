; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_metadata_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_metadata_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.bsdtar = type { i32 }

@OPTFLAG_INTERACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"add '%s'\00", align 1
@OPTFLAG_NO_SUBDIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, %struct.archive_entry*)* @metadata_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_filter(%struct.archive* %0, i8* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.bsdtar*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.bsdtar*
  store %struct.bsdtar* %10, %struct.bsdtar** %8, align 8
  %11 = load %struct.bsdtar*, %struct.bsdtar** %8, align 8
  %12 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OPTFLAG_INTERACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %19 = call i32 @archive_entry_pathname(%struct.archive_entry* %18)
  %20 = call i32 @yes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %38

23:                                               ; preds = %17, %3
  %24 = load %struct.bsdtar*, %struct.bsdtar** %8, align 8
  %25 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OPTFLAG_NO_SUBDIRS, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.archive*, %struct.archive** %5, align 8
  %32 = call i64 @archive_read_disk_can_descend(%struct.archive* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.archive*, %struct.archive** %5, align 8
  %36 = call i32 @archive_read_disk_descend(%struct.archive* %35)
  br label %37

37:                                               ; preds = %34, %30, %23
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @yes(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_read_disk_can_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
