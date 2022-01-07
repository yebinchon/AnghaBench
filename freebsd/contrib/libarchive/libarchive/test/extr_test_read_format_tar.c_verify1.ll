; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verify1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verify1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }

@AE_IFLNK = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"tim\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hardlink\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*)* @verify1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify1(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %2, align 8
  %3 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %4 = call i64 @archive_entry_filetype(%struct.archive_entry* %3)
  %5 = load i64, i64* @AE_IFLNK, align 8
  %6 = icmp ne i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %10 = call i64 @archive_entry_filetype(%struct.archive_entry* %9)
  %11 = load i64, i64* @AE_IFDIR, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %16 = call i32 @archive_entry_mode(%struct.archive_entry* %15)
  %17 = and i32 %16, 511
  %18 = call i32 @assertEqualInt(i32 %17, i32 420)
  %19 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %20 = call i32 @archive_entry_uid(%struct.archive_entry* %19)
  %21 = call i32 @assertEqualInt(i32 %20, i32 1000)
  %22 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %23 = call i32 @archive_entry_gid(%struct.archive_entry* %22)
  %24 = call i32 @assertEqualInt(i32 %23, i32 1000)
  %25 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %26 = call i32 @archive_entry_uname(%struct.archive_entry* %25)
  %27 = call i32 @assertEqualString(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %29 = call i32 @archive_entry_gname(%struct.archive_entry* %28)
  %30 = call i32 @assertEqualString(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %32 = call i32 @archive_entry_pathname(%struct.archive_entry* %31)
  %33 = call i32 @assertEqualString(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %35 = call i32 @archive_entry_hardlink(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualString(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %38 = call i32* @archive_entry_symlink(%struct.archive_entry* %37)
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %43 = call i32 @archive_entry_mtime(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 %43, i32 1184388530)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i32, i8*) #1

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
