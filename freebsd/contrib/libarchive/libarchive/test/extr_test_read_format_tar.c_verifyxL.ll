; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verifyxL.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verifyxL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }

@AE_IFLNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tim\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.2 = private unnamed_addr constant [438 x i8] c"this_is_a_very_long_symlink_body_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz_abcdefghijklmnopqrstuvwxyz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*)* @verifyxL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verifyxL(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %2, align 8
  %3 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %4 = call i32 @archive_entry_filetype(%struct.archive_entry* %3)
  %5 = load i32, i32* @AE_IFLNK, align 4
  %6 = call i32 @assertEqualInt(i32 %4, i32 %5)
  %7 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %8 = call i32 @archive_entry_mode(%struct.archive_entry* %7)
  %9 = and i32 %8, 511
  %10 = call i32 @assertEqualInt(i32 %9, i32 493)
  %11 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %12 = call i32 @archive_entry_uid(%struct.archive_entry* %11)
  %13 = call i32 @assertEqualInt(i32 %12, i32 1000)
  %14 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %15 = call i32 @archive_entry_gid(%struct.archive_entry* %14)
  %16 = call i32 @assertEqualInt(i32 %15, i32 1000)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %18 = call i32 @archive_entry_uname(%struct.archive_entry* %17)
  %19 = call i32 @assertEqualString(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %21 = call i32 @archive_entry_gname(%struct.archive_entry* %20)
  %22 = call i32 @assertEqualString(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %24 = call i32 @archive_entry_pathname(%struct.archive_entry* %23)
  %25 = call i32 @assertEqualString(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %27 = call i32 @archive_entry_symlink(%struct.archive_entry* %26)
  %28 = call i32 @assertEqualString(i32 %27, i8* getelementptr inbounds ([438 x i8], [438 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %30 = call i32* @archive_entry_hardlink(%struct.archive_entry* %29)
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %35 = call i32 @archive_entry_mtime(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualInt(i32 %35, i32 1184390648)
  ret void
}

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i32, i8*) #1

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
