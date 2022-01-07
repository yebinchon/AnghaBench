; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_insert_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_insert_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.preloaded_file* }

@preloaded_files = common dso_local global %struct.preloaded_file* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.preloaded_file*)* @file_insert_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_insert_tail(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca %struct.preloaded_file*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  %4 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %5 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %4, i32 0, i32 0
  store %struct.preloaded_file* null, %struct.preloaded_file** %5, align 8
  %6 = load %struct.preloaded_file*, %struct.preloaded_file** @preloaded_files, align 8
  %7 = icmp eq %struct.preloaded_file* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  store %struct.preloaded_file* %9, %struct.preloaded_file** @preloaded_files, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.preloaded_file*, %struct.preloaded_file** @preloaded_files, align 8
  store %struct.preloaded_file* %11, %struct.preloaded_file** %3, align 8
  br label %12

12:                                               ; preds = %18, %10
  %13 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %14 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %13, i32 0, i32 0
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %14, align 8
  %16 = icmp ne %struct.preloaded_file* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %20 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %19, i32 0, i32 0
  %21 = load %struct.preloaded_file*, %struct.preloaded_file** %20, align 8
  store %struct.preloaded_file* %21, %struct.preloaded_file** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %24 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %25 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %24, i32 0, i32 0
  store %struct.preloaded_file* %23, %struct.preloaded_file** %25, align 8
  br label %26

26:                                               ; preds = %22, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
