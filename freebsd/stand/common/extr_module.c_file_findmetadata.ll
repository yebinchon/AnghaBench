; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_findmetadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_findmetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_metadata = type { i32, %struct.file_metadata* }
%struct.preloaded_file = type { %struct.file_metadata* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %0, i32 %1) #0 {
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_metadata*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %7 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %6, i32 0, i32 0
  %8 = load %struct.file_metadata*, %struct.file_metadata** %7, align 8
  store %struct.file_metadata* %8, %struct.file_metadata** %5, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.file_metadata*, %struct.file_metadata** %5, align 8
  %11 = icmp ne %struct.file_metadata* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.file_metadata*, %struct.file_metadata** %5, align 8
  %14 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.file_metadata*, %struct.file_metadata** %5, align 8
  %22 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %21, i32 0, i32 1
  %23 = load %struct.file_metadata*, %struct.file_metadata** %22, align 8
  store %struct.file_metadata* %23, %struct.file_metadata** %5, align 8
  br label %9

24:                                               ; preds = %18, %9
  %25 = load %struct.file_metadata*, %struct.file_metadata** %5, align 8
  ret %struct.file_metadata* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
