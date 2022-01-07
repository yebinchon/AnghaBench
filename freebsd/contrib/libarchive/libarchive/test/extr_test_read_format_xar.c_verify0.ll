; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@AE_IFREG = common dso_local global i64 0, align 8
@UID = common dso_local global i32 0, align 4
@GID = common dso_local global i32 0, align 4
@UNAME = common dso_local global i8* null, align 8
@GNAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"hellohellohello\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*)* @verify0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify0(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %9 = call i64 @archive_entry_filetype(%struct.archive_entry* %8)
  %10 = load i64, i64* @AE_IFREG, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %15 = call i32 @archive_entry_mode(%struct.archive_entry* %14)
  %16 = and i32 %15, 511
  %17 = call i32 @assertEqualInt(i32 %16, i32 420)
  %18 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %19 = call i32 @archive_entry_uid(%struct.archive_entry* %18)
  %20 = load i32, i32* @UID, align 4
  %21 = call i32 @assertEqualInt(i32 %19, i32 %20)
  %22 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %23 = call i32 @archive_entry_gid(%struct.archive_entry* %22)
  %24 = load i32, i32* @GID, align 4
  %25 = call i32 @assertEqualInt(i32 %23, i32 %24)
  %26 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %27 = call i32 @archive_entry_uname(%struct.archive_entry* %26)
  %28 = load i8*, i8** @UNAME, align 8
  %29 = call i32 @assertEqualString(i32 %27, i8* %28)
  %30 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %31 = call i32 @archive_entry_gname(%struct.archive_entry* %30)
  %32 = load i8*, i8** @GNAME, align 8
  %33 = call i32 @assertEqualString(i32 %31, i8* %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %35 = call i32 @archive_entry_pathname(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualString(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %38 = call i32* @archive_entry_hardlink(%struct.archive_entry* %37)
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = call i32* @archive_entry_symlink(%struct.archive_entry* %42)
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = call i32 @archive_entry_mtime(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 %48, i32 86401)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %51 = call i32 @archive_entry_size(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 %51, i32 16)
  %53 = load %struct.archive*, %struct.archive** %3, align 8
  %54 = call i32 @archive_read_data_block(%struct.archive* %53, i8** %5, i64* %6, i64* %7)
  %55 = call i32 @assertEqualInt(i32 %54, i32 0)
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @assertEqualInt(i32 %57, i32 16)
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @assertEqualInt(i32 %60, i32 0)
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @assertEqualMem(i8* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
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

declare dso_local i32* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
