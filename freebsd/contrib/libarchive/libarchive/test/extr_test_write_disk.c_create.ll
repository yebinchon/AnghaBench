; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AE_IFDIR = common dso_local global i64 0, align 8
@S_ISGID = common dso_local global i32 0, align 4
@MODE_MASK = common dso_local global i32 0, align 4
@UMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*, i8*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create(%struct.archive_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.archive* (...) @archive_write_disk_new()
  store %struct.archive* %7, %struct.archive** %5, align 8
  %8 = icmp ne %struct.archive* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.archive*, %struct.archive** %5, align 8
  %14 = load %struct.archive*, %struct.archive** %5, align 8
  %15 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %16 = call i32 @archive_write_header(%struct.archive* %14, %struct.archive_entry* %15)
  %17 = call i32 @assertEqualIntA(%struct.archive* %13, i32 0, i32 %16)
  %18 = load %struct.archive*, %struct.archive** %5, align 8
  %19 = load %struct.archive*, %struct.archive** %5, align 8
  %20 = call i32 @archive_write_finish_entry(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %18, i32 0, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = call i32 @archive_write_free(%struct.archive* %22)
  %24 = call i32 @assertEqualInt(i32 0, i32 %23)
  %25 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %26 = call i32 @archive_entry_pathname(%struct.archive_entry* %25)
  %27 = call i64 @stat(i32 %26, %struct.stat* %6)
  %28 = icmp eq i64 0, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %34 = call i64 @archive_entry_filetype(%struct.archive_entry* %33)
  %35 = load i64, i64* @AE_IFDIR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @S_ISGID, align 4
  %39 = xor i32 %38, -1
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %2
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MODE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %49 = call i32 @archive_entry_mode(%struct.archive_entry* %48)
  %50 = load i32, i32* @UMASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* @MODE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @assertEqualInt(i32 %47, i32 %54)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_disk_new(...) #1

declare dso_local i32 @failure(i8*, i8*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
