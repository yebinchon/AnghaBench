; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_excluded_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_excluded_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.bsdtar = type { i32 }

@OPTFLAG_NO_SUBDIRS = common dso_local global i32 0, align 4
@OPTFLAG_INTERACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"add '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i8*, %struct.archive_entry*)* @excluded_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @excluded_callback(%struct.archive* %0, i8* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.bsdtar*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.bsdtar*
  store %struct.bsdtar* %9, %struct.bsdtar** %7, align 8
  %10 = load %struct.bsdtar*, %struct.bsdtar** %7, align 8
  %11 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OPTFLAG_NO_SUBDIRS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.archive*, %struct.archive** %4, align 8
  %19 = call i32 @archive_read_disk_can_descend(%struct.archive* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %38

22:                                               ; preds = %17
  %23 = load %struct.bsdtar*, %struct.bsdtar** %7, align 8
  %24 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OPTFLAG_INTERACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %31 = call i32 @archive_entry_pathname(%struct.archive_entry* %30)
  %32 = call i32 @yes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %29, %22
  %36 = load %struct.archive*, %struct.archive** %4, align 8
  %37 = call i32 @archive_read_disk_descend(%struct.archive* %36)
  br label %38

38:                                               ; preds = %35, %34, %21, %16
  ret void
}

declare dso_local i32 @archive_read_disk_can_descend(%struct.archive*) #1

declare dso_local i32 @yes(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
