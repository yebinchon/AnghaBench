; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify7.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@AE_IFREG = common dso_local global i64 0, align 8
@UID = common dso_local global i32 0, align 4
@GID = common dso_local global i32 0, align 4
@UNAME = common dso_local global i8* null, align 8
@GNAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"dir1/f1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*)* @verify7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify7(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %5 = load %struct.archive*, %struct.archive** %3, align 8
  %6 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %7 = call i64 @archive_entry_filetype(%struct.archive_entry* %6)
  %8 = load i64, i64* @AE_IFREG, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %13 = call i32 @archive_entry_mode(%struct.archive_entry* %12)
  %14 = and i32 %13, 511
  %15 = call i32 @assertEqualInt(i32 %14, i32 420)
  %16 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %17 = call i32 @archive_entry_uid(%struct.archive_entry* %16)
  %18 = load i32, i32* @UID, align 4
  %19 = call i32 @assertEqualInt(i32 %17, i32 %18)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %21 = call i32 @archive_entry_gid(%struct.archive_entry* %20)
  %22 = load i32, i32* @GID, align 4
  %23 = call i32 @assertEqualInt(i32 %21, i32 %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %25 = call i32 @archive_entry_uname(%struct.archive_entry* %24)
  %26 = load i8*, i8** @UNAME, align 8
  %27 = call i32 @assertEqualString(i32 %25, i8* %26)
  %28 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %29 = call i32 @archive_entry_gname(%struct.archive_entry* %28)
  %30 = load i8*, i8** @GNAME, align 8
  %31 = call i32 @assertEqualString(i32 %29, i8* %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %33 = call i32 @archive_entry_pathname(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualString(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %36 = call i32* @archive_entry_hardlink(%struct.archive_entry* %35)
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %41 = call i32* @archive_entry_symlink(%struct.archive_entry* %40)
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %46 = call i32 @archive_entry_mtime(%struct.archive_entry* %45)
  %47 = call i32 @assertEqualInt(i32 %46, i32 86401)
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
