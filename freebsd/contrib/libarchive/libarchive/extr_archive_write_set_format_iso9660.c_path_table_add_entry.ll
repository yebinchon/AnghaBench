; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_path_table_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_path_table_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_table = type { i32, %struct.isoent** }
%struct.isoent = type { %struct.isoent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path_table*, %struct.isoent*)* @path_table_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_table_add_entry(%struct.path_table* %0, %struct.isoent* %1) #0 {
  %3 = alloca %struct.path_table*, align 8
  %4 = alloca %struct.isoent*, align 8
  store %struct.path_table* %0, %struct.path_table** %3, align 8
  store %struct.isoent* %1, %struct.isoent** %4, align 8
  %5 = load %struct.isoent*, %struct.isoent** %4, align 8
  %6 = getelementptr inbounds %struct.isoent, %struct.isoent* %5, i32 0, i32 0
  store %struct.isoent* null, %struct.isoent** %6, align 8
  %7 = load %struct.isoent*, %struct.isoent** %4, align 8
  %8 = load %struct.path_table*, %struct.path_table** %3, align 8
  %9 = getelementptr inbounds %struct.path_table, %struct.path_table* %8, i32 0, i32 1
  %10 = load %struct.isoent**, %struct.isoent*** %9, align 8
  store %struct.isoent* %7, %struct.isoent** %10, align 8
  %11 = load %struct.isoent*, %struct.isoent** %4, align 8
  %12 = getelementptr inbounds %struct.isoent, %struct.isoent* %11, i32 0, i32 0
  %13 = load %struct.path_table*, %struct.path_table** %3, align 8
  %14 = getelementptr inbounds %struct.path_table, %struct.path_table* %13, i32 0, i32 1
  store %struct.isoent** %12, %struct.isoent*** %14, align 8
  %15 = load %struct.path_table*, %struct.path_table** %3, align 8
  %16 = getelementptr inbounds %struct.path_table, %struct.path_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
