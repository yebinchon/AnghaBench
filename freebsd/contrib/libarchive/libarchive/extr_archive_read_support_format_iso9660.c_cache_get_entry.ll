; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_cache_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_cache_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { %struct.file_info* }
%struct.iso9660 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.file_info*, %struct.file_info** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_info* (%struct.iso9660*)* @cache_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_info* @cache_get_entry(%struct.iso9660* %0) #0 {
  %2 = alloca %struct.iso9660*, align 8
  %3 = alloca %struct.file_info*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %2, align 8
  %4 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %5 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.file_info*, %struct.file_info** %6, align 8
  store %struct.file_info* %7, %struct.file_info** %3, align 8
  %8 = icmp ne %struct.file_info* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.file_info*, %struct.file_info** %3, align 8
  %11 = getelementptr inbounds %struct.file_info, %struct.file_info* %10, i32 0, i32 0
  %12 = load %struct.file_info*, %struct.file_info** %11, align 8
  %13 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %14 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.file_info* %12, %struct.file_info** %15, align 8
  %16 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %17 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.file_info*, %struct.file_info** %18, align 8
  %20 = icmp eq %struct.file_info* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %23 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %26 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.file_info** %24, %struct.file_info*** %27, align 8
  br label %28

28:                                               ; preds = %21, %9
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.file_info*, %struct.file_info** %3, align 8
  ret %struct.file_info* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
