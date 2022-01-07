; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_new_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_new_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixup_entry = type { i32, i64, %struct.fixup_entry* }
%struct.archive_write_disk = type { %struct.fixup_entry*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't allocate memory for a fixup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fixup_entry* (%struct.archive_write_disk*, i8*)* @new_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fixup_entry* @new_fixup(%struct.archive_write_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.fixup_entry*, align 8
  %4 = alloca %struct.archive_write_disk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fixup_entry*, align 8
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @calloc(i32 1, i32 24)
  %8 = inttoptr i64 %7 to %struct.fixup_entry*
  store %struct.fixup_entry* %8, %struct.fixup_entry** %6, align 8
  %9 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %10 = icmp eq %struct.fixup_entry* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %12, i32 0, i32 1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = call i32 @archive_set_error(i32* %13, i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.fixup_entry* null, %struct.fixup_entry** %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %17, i32 0, i32 0
  %19 = load %struct.fixup_entry*, %struct.fixup_entry** %18, align 8
  %20 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %21 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %20, i32 0, i32 2
  store %struct.fixup_entry* %19, %struct.fixup_entry** %21, align 8
  %22 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %23 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %24 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %23, i32 0, i32 0
  store %struct.fixup_entry* %22, %struct.fixup_entry** %24, align 8
  %25 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %26 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strdup(i8* %27)
  %29 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  %30 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.fixup_entry*, %struct.fixup_entry** %6, align 8
  store %struct.fixup_entry* %31, %struct.fixup_entry** %3, align 8
  br label %32

32:                                               ; preds = %16, %11
  %33 = load %struct.fixup_entry*, %struct.fixup_entry** %3, align 8
  ret %struct.fixup_entry* %33
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
