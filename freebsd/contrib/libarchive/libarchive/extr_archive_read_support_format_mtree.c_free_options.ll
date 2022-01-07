; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_free_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_free_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_option = type { %struct.mtree_option*, %struct.mtree_option* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_option*)* @free_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_options(%struct.mtree_option* %0) #0 {
  %2 = alloca %struct.mtree_option*, align 8
  %3 = alloca %struct.mtree_option*, align 8
  store %struct.mtree_option* %0, %struct.mtree_option** %2, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load %struct.mtree_option*, %struct.mtree_option** %2, align 8
  %6 = icmp ne %struct.mtree_option* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load %struct.mtree_option*, %struct.mtree_option** %2, align 8
  %9 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %8, i32 0, i32 1
  %10 = load %struct.mtree_option*, %struct.mtree_option** %9, align 8
  store %struct.mtree_option* %10, %struct.mtree_option** %3, align 8
  %11 = load %struct.mtree_option*, %struct.mtree_option** %2, align 8
  %12 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %11, i32 0, i32 0
  %13 = load %struct.mtree_option*, %struct.mtree_option** %12, align 8
  %14 = call i32 @free(%struct.mtree_option* %13)
  %15 = load %struct.mtree_option*, %struct.mtree_option** %2, align 8
  %16 = call i32 @free(%struct.mtree_option* %15)
  br label %17

17:                                               ; preds = %7
  %18 = load %struct.mtree_option*, %struct.mtree_option** %3, align 8
  store %struct.mtree_option* %18, %struct.mtree_option** %2, align 8
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.mtree_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
