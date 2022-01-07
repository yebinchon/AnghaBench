; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_register_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_register_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { %struct.file_info* }
%struct.file_info = type { %struct.file_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*, %struct.file_info*)* @register_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_file(%struct.iso9660* %0, %struct.file_info* %1) #0 {
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca %struct.file_info*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %3, align 8
  store %struct.file_info* %1, %struct.file_info** %4, align 8
  %5 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %6 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %5, i32 0, i32 0
  %7 = load %struct.file_info*, %struct.file_info** %6, align 8
  %8 = load %struct.file_info*, %struct.file_info** %4, align 8
  %9 = getelementptr inbounds %struct.file_info, %struct.file_info* %8, i32 0, i32 0
  store %struct.file_info* %7, %struct.file_info** %9, align 8
  %10 = load %struct.file_info*, %struct.file_info** %4, align 8
  %11 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %12 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %11, i32 0, i32 0
  store %struct.file_info* %10, %struct.file_info** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
