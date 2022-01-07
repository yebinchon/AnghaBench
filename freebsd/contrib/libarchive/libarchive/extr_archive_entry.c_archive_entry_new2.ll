; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_new2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_new2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, %struct.archive* }
%struct.archive = type { i32 }

@AE_SYMLINK_TYPE_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_entry* @archive_entry_new2(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %5 = call i64 @calloc(i32 1, i32 16)
  %6 = inttoptr i64 %5 to %struct.archive_entry*
  store %struct.archive_entry* %6, %struct.archive_entry** %4, align 8
  %7 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %8 = icmp eq %struct.archive_entry* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.archive_entry* null, %struct.archive_entry** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %13 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %12, i32 0, i32 1
  store %struct.archive* %11, %struct.archive** %13, align 8
  %14 = load i32, i32* @AE_SYMLINK_TYPE_UNDEFINED, align 4
  %15 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %16 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  store %struct.archive_entry* %17, %struct.archive_entry** %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  ret %struct.archive_entry* %19
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
