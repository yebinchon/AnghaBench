; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_set_standard_lookup.c_archive_read_disk_set_standard_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_set_standard_lookup.c_archive_read_disk_set_standard_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.name_cache = type { i8*, %struct.archive* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't allocate uname/gname lookup cache\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@name_cache_size = common dso_local global i8* null, align 8
@lookup_gname = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@lookup_uname = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_set_standard_lookup(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.name_cache*, align 8
  %5 = alloca %struct.name_cache*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = call %struct.name_cache* @malloc(i32 16)
  store %struct.name_cache* %6, %struct.name_cache** %4, align 8
  %7 = call %struct.name_cache* @malloc(i32 16)
  store %struct.name_cache* %7, %struct.name_cache** %5, align 8
  %8 = load %struct.name_cache*, %struct.name_cache** %4, align 8
  %9 = icmp eq %struct.name_cache* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %12 = icmp eq %struct.name_cache* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10, %1
  %14 = load %struct.archive*, %struct.archive** %3, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = call i32 @archive_set_error(%struct.archive* %14, i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.name_cache*, %struct.name_cache** %4, align 8
  %18 = call i32 @free(%struct.name_cache* %17)
  %19 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %20 = call i32 @free(%struct.name_cache* %19)
  %21 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %10
  %23 = load %struct.name_cache*, %struct.name_cache** %4, align 8
  %24 = call i32 @memset(%struct.name_cache* %23, i32 0, i32 16)
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = load %struct.name_cache*, %struct.name_cache** %4, align 8
  %27 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %26, i32 0, i32 1
  store %struct.archive* %25, %struct.archive** %27, align 8
  %28 = load i8*, i8** @name_cache_size, align 8
  %29 = load %struct.name_cache*, %struct.name_cache** %4, align 8
  %30 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %32 = call i32 @memset(%struct.name_cache* %31, i32 0, i32 16)
  %33 = load %struct.archive*, %struct.archive** %3, align 8
  %34 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %35 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %34, i32 0, i32 1
  store %struct.archive* %33, %struct.archive** %35, align 8
  %36 = load i8*, i8** @name_cache_size, align 8
  %37 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %38 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %41 = load i32, i32* @lookup_gname, align 4
  %42 = load i32, i32* @cleanup, align 4
  %43 = call i32 @archive_read_disk_set_gname_lookup(%struct.archive* %39, %struct.name_cache* %40, i32 %41, i32 %42)
  %44 = load %struct.archive*, %struct.archive** %3, align 8
  %45 = load %struct.name_cache*, %struct.name_cache** %4, align 8
  %46 = load i32, i32* @lookup_uname, align 4
  %47 = load i32, i32* @cleanup, align 4
  %48 = call i32 @archive_read_disk_set_uname_lookup(%struct.archive* %44, %struct.name_cache* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %22, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.name_cache* @malloc(i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @free(%struct.name_cache*) #1

declare dso_local i32 @memset(%struct.name_cache*, i32, i32) #1

declare dso_local i32 @archive_read_disk_set_gname_lookup(%struct.archive*, %struct.name_cache*, i32, i32) #1

declare dso_local i32 @archive_read_disk_set_uname_lookup(%struct.archive*, %struct.name_cache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
