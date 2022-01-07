; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_vtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c_archive_write_vtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_vtable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@archive_write_vtable.av = internal global %struct.archive_vtable zeroinitializer, align 4
@archive_write_vtable.inited = internal global i32 0, align 4
@_archive_write_close = common dso_local global i32 0, align 4
@_archive_filter_bytes = common dso_local global i32 0, align 4
@_archive_filter_code = common dso_local global i32 0, align 4
@_archive_filter_name = common dso_local global i32 0, align 4
@_archive_write_filter_count = common dso_local global i32 0, align 4
@_archive_write_free = common dso_local global i32 0, align 4
@_archive_write_header = common dso_local global i32 0, align 4
@_archive_write_finish_entry = common dso_local global i32 0, align 4
@_archive_write_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_vtable* ()* @archive_write_vtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_vtable* @archive_write_vtable() #0 {
  %1 = load i32, i32* @archive_write_vtable.inited, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @_archive_write_close, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 8), align 4
  %5 = load i32, i32* @_archive_filter_bytes, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 7), align 4
  %6 = load i32, i32* @_archive_filter_code, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 6), align 4
  %7 = load i32, i32* @_archive_filter_name, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 5), align 4
  %8 = load i32, i32* @_archive_write_filter_count, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 4), align 4
  %9 = load i32, i32* @_archive_write_free, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 3), align 4
  %10 = load i32, i32* @_archive_write_header, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 2), align 4
  %11 = load i32, i32* @_archive_write_finish_entry, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 1), align 4
  %12 = load i32, i32* @_archive_write_data, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.archive_vtable, %struct.archive_vtable* @archive_write_vtable.av, i32 0, i32 0), align 4
  store i32 1, i32* @archive_write_vtable.inited, align 4
  br label %13

13:                                               ; preds = %3, %0
  ret %struct.archive_vtable* @archive_write_vtable.av
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
