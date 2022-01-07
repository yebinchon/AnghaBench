; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_stat.c_archive_entry_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_stat.c_archive_entry_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.archive_entry = type { i32, %struct.stat* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stat* @archive_entry_stat(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.stat*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.stat*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  %5 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 1
  %7 = load %struct.stat*, %struct.stat** %6, align 8
  %8 = icmp eq %struct.stat* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = call %struct.stat* @calloc(i32 1, i32 136)
  %11 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %12 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %11, i32 0, i32 1
  store %struct.stat* %10, %struct.stat** %12, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %14 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %13, i32 0, i32 1
  %15 = load %struct.stat*, %struct.stat** %14, align 8
  %16 = icmp eq %struct.stat* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store %struct.stat* null, %struct.stat** %2, align 8
  br label %81

18:                                               ; preds = %9
  %19 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %20 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %23 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %27, i32 0, i32 1
  %29 = load %struct.stat*, %struct.stat** %28, align 8
  store %struct.stat* %29, %struct.stat** %2, align 8
  br label %81

30:                                               ; preds = %21
  %31 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %32 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %31, i32 0, i32 1
  %33 = load %struct.stat*, %struct.stat** %32, align 8
  store %struct.stat* %33, %struct.stat** %4, align 8
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = call i32 @archive_entry_atime(%struct.archive_entry* %34)
  %36 = load %struct.stat*, %struct.stat** %4, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 27
  store i32 %35, i32* %37, align 8
  %38 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %39 = call i32 @archive_entry_ctime(%struct.archive_entry* %38)
  %40 = load %struct.stat*, %struct.stat** %4, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 25
  store i32 %39, i32* %41, align 8
  %42 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %43 = call i32 @archive_entry_mtime(%struct.archive_entry* %42)
  %44 = load %struct.stat*, %struct.stat** %4, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 24
  store i32 %43, i32* %45, align 4
  %46 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %47 = call i32 @archive_entry_dev(%struct.archive_entry* %46)
  %48 = load %struct.stat*, %struct.stat** %4, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 23
  store i32 %47, i32* %49, align 8
  %50 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %51 = call i64 @archive_entry_gid(%struct.archive_entry* %50)
  %52 = load %struct.stat*, %struct.stat** %4, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 22
  store i64 %51, i64* %53, align 8
  %54 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %55 = call i64 @archive_entry_uid(%struct.archive_entry* %54)
  %56 = load %struct.stat*, %struct.stat** %4, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 21
  store i64 %55, i64* %57, align 8
  %58 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %59 = call i64 @archive_entry_ino64(%struct.archive_entry* %58)
  %60 = load %struct.stat*, %struct.stat** %4, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 20
  store i64 %59, i64* %61, align 8
  %62 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %63 = call i32 @archive_entry_nlink(%struct.archive_entry* %62)
  %64 = load %struct.stat*, %struct.stat** %4, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %64, i32 0, i32 19
  store i32 %63, i32* %65, align 4
  %66 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %67 = call i32 @archive_entry_rdev(%struct.archive_entry* %66)
  %68 = load %struct.stat*, %struct.stat** %4, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 18
  store i32 %67, i32* %69, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %71 = call i64 @archive_entry_size(%struct.archive_entry* %70)
  %72 = load %struct.stat*, %struct.stat** %4, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 17
  store i64 %71, i64* %73, align 8
  %74 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %75 = call i32 @archive_entry_mode(%struct.archive_entry* %74)
  %76 = load %struct.stat*, %struct.stat** %4, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %76, i32 0, i32 16
  store i32 %75, i32* %77, align 8
  %78 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %79 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.stat*, %struct.stat** %4, align 8
  store %struct.stat* %80, %struct.stat** %2, align 8
  br label %81

81:                                               ; preds = %30, %26, %17
  %82 = load %struct.stat*, %struct.stat** %2, align 8
  ret %struct.stat* %82
}

declare dso_local %struct.stat* @calloc(i32, i32) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_dev(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ino64(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_rdev(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
