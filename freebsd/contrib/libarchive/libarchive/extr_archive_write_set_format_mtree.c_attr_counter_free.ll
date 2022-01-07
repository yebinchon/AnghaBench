; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_counter = type { %struct.attr_counter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.attr_counter**)* @attr_counter_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attr_counter_free(%struct.attr_counter** %0) #0 {
  %2 = alloca %struct.attr_counter**, align 8
  %3 = alloca %struct.attr_counter*, align 8
  %4 = alloca %struct.attr_counter*, align 8
  store %struct.attr_counter** %0, %struct.attr_counter*** %2, align 8
  %5 = load %struct.attr_counter**, %struct.attr_counter*** %2, align 8
  %6 = load %struct.attr_counter*, %struct.attr_counter** %5, align 8
  %7 = icmp eq %struct.attr_counter* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.attr_counter**, %struct.attr_counter*** %2, align 8
  %11 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  store %struct.attr_counter* %11, %struct.attr_counter** %3, align 8
  br label %12

12:                                               ; preds = %15, %9
  %13 = load %struct.attr_counter*, %struct.attr_counter** %3, align 8
  %14 = icmp ne %struct.attr_counter* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.attr_counter*, %struct.attr_counter** %3, align 8
  %17 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %16, i32 0, i32 0
  %18 = load %struct.attr_counter*, %struct.attr_counter** %17, align 8
  store %struct.attr_counter* %18, %struct.attr_counter** %4, align 8
  %19 = load %struct.attr_counter*, %struct.attr_counter** %3, align 8
  %20 = call i32 @free(%struct.attr_counter* %19)
  %21 = load %struct.attr_counter*, %struct.attr_counter** %4, align 8
  store %struct.attr_counter* %21, %struct.attr_counter** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.attr_counter**, %struct.attr_counter*** %2, align 8
  store %struct.attr_counter* null, %struct.attr_counter** %23, align 8
  br label %24

24:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @free(%struct.attr_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
