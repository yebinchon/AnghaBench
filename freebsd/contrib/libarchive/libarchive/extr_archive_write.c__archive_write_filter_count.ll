; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_filter_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write.c__archive_write_filter_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { %struct.archive_write_filter* }
%struct.archive_write_filter = type { %struct.archive_write_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_write_filter_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_filter_count(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %2, align 8
  %6 = load %struct.archive*, %struct.archive** %2, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %3, align 8
  %8 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %9 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %8, i32 0, i32 0
  %10 = load %struct.archive_write_filter*, %struct.archive_write_filter** %9, align 8
  store %struct.archive_write_filter* %10, %struct.archive_write_filter** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %13 = icmp ne %struct.archive_write_filter* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %17, i32 0, i32 0
  %19 = load %struct.archive_write_filter*, %struct.archive_write_filter** %18, align 8
  store %struct.archive_write_filter* %19, %struct.archive_write_filter** %4, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
