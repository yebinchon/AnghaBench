; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_set_standard_lookup.c_archive_write_disk_set_standard_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_set_standard_lookup.c_archive_write_disk_set_standard_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.bucket = type { i32 }

@cache_size = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@lookup_gid = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@lookup_uid = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_disk_set_standard_lookup(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.bucket*, align 8
  %5 = alloca %struct.bucket*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load i32, i32* @cache_size, align 4
  %7 = call %struct.bucket* @calloc(i32 %6, i32 4)
  store %struct.bucket* %7, %struct.bucket** %4, align 8
  %8 = load i32, i32* @cache_size, align 4
  %9 = call %struct.bucket* @calloc(i32 %8, i32 4)
  store %struct.bucket* %9, %struct.bucket** %5, align 8
  %10 = load %struct.bucket*, %struct.bucket** %4, align 8
  %11 = icmp eq %struct.bucket* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.bucket*, %struct.bucket** %5, align 8
  %14 = icmp eq %struct.bucket* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12, %1
  %16 = load %struct.bucket*, %struct.bucket** %4, align 8
  %17 = call i32 @free(%struct.bucket* %16)
  %18 = load %struct.bucket*, %struct.bucket** %5, align 8
  %19 = call i32 @free(%struct.bucket* %18)
  %20 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %12
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = load %struct.bucket*, %struct.bucket** %5, align 8
  %24 = load i32, i32* @lookup_gid, align 4
  %25 = load i32, i32* @cleanup, align 4
  %26 = call i32 @archive_write_disk_set_group_lookup(%struct.archive* %22, %struct.bucket* %23, i32 %24, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = load %struct.bucket*, %struct.bucket** %4, align 8
  %29 = load i32, i32* @lookup_uid, align 4
  %30 = load i32, i32* @cleanup, align 4
  %31 = call i32 @archive_write_disk_set_user_lookup(%struct.archive* %27, %struct.bucket* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %21, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.bucket* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.bucket*) #1

declare dso_local i32 @archive_write_disk_set_group_lookup(%struct.archive*, %struct.bucket*, i32, i32) #1

declare dso_local i32 @archive_write_disk_set_user_lookup(%struct.archive*, %struct.bucket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
