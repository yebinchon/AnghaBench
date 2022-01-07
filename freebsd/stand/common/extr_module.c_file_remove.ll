; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.preloaded_file* }

@preloaded_files = common dso_local global %struct.preloaded_file* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.preloaded_file*)* @file_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_remove(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca %struct.preloaded_file*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  %4 = load %struct.preloaded_file*, %struct.preloaded_file** @preloaded_files, align 8
  %5 = icmp eq %struct.preloaded_file* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = load %struct.preloaded_file*, %struct.preloaded_file** @preloaded_files, align 8
  %9 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %10 = icmp eq %struct.preloaded_file* %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %13 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %12, i32 0, i32 0
  %14 = load %struct.preloaded_file*, %struct.preloaded_file** %13, align 8
  store %struct.preloaded_file* %14, %struct.preloaded_file** @preloaded_files, align 8
  br label %39

15:                                               ; preds = %7
  %16 = load %struct.preloaded_file*, %struct.preloaded_file** @preloaded_files, align 8
  store %struct.preloaded_file* %16, %struct.preloaded_file** %3, align 8
  br label %17

17:                                               ; preds = %35, %15
  %18 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %19 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %18, i32 0, i32 0
  %20 = load %struct.preloaded_file*, %struct.preloaded_file** %19, align 8
  %21 = icmp ne %struct.preloaded_file* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %24 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %23, i32 0, i32 0
  %25 = load %struct.preloaded_file*, %struct.preloaded_file** %24, align 8
  %26 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %27 = icmp eq %struct.preloaded_file* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %30 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %29, i32 0, i32 0
  %31 = load %struct.preloaded_file*, %struct.preloaded_file** %30, align 8
  %32 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %33 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %32, i32 0, i32 0
  store %struct.preloaded_file* %31, %struct.preloaded_file** %33, align 8
  br label %39

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %37 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %36, i32 0, i32 0
  %38 = load %struct.preloaded_file*, %struct.preloaded_file** %37, align 8
  store %struct.preloaded_file* %38, %struct.preloaded_file** %3, align 8
  br label %17

39:                                               ; preds = %6, %11, %28, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
