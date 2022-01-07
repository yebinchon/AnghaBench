; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_xar.c_verify5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@AE_IFDIR = common dso_local global i32 0, align 4
@UID = common dso_local global i32 0, align 4
@GID = common dso_local global i32 0, align 4
@UNAME = common dso_local global i32 0, align 4
@GNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*)* @verify5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify5(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %5 = load %struct.archive*, %struct.archive** %3, align 8
  %6 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %7 = call i32 @archive_entry_filetype(%struct.archive_entry* %6)
  %8 = load i32, i32* @AE_IFDIR, align 4
  %9 = call i32 @assertEqualInt(i32 %7, i32 %8)
  %10 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %11 = call i32 @archive_entry_mtime(%struct.archive_entry* %10)
  %12 = call i32 @assertEqualInt(i32 %11, i32 86401)
  %13 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %14 = call i32 @archive_entry_mode(%struct.archive_entry* %13)
  %15 = and i32 %14, 511
  %16 = call i32 @assertEqualInt(i32 %15, i32 493)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %18 = call i32 @archive_entry_uid(%struct.archive_entry* %17)
  %19 = load i32, i32* @UID, align 4
  %20 = call i32 @assertEqualInt(i32 %18, i32 %19)
  %21 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %22 = call i32 @archive_entry_gid(%struct.archive_entry* %21)
  %23 = load i32, i32* @GID, align 4
  %24 = call i32 @assertEqualInt(i32 %22, i32 %23)
  %25 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %26 = call i32 @archive_entry_uname(%struct.archive_entry* %25)
  %27 = load i32, i32* @UNAME, align 4
  %28 = call i32 @assertEqualString(i32 %26, i32 %27)
  %29 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %30 = call i32 @archive_entry_gname(%struct.archive_entry* %29)
  %31 = load i32, i32* @GNAME, align 4
  %32 = call i32 @assertEqualString(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i32, i32) #1

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
