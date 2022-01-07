; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_metadata_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_metadata_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_metadata = type { i32, %struct.file_metadata* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_metadata* @metadata_next(%struct.file_metadata* %0, i32 %1) #0 {
  %3 = alloca %struct.file_metadata*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca i32, align 4
  store %struct.file_metadata* %0, %struct.file_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %7 = icmp eq %struct.file_metadata* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.file_metadata* null, %struct.file_metadata** %3, align 8
  br label %25

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %22, %9
  %11 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %12 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %11, i32 0, i32 1
  %13 = load %struct.file_metadata*, %struct.file_metadata** %12, align 8
  store %struct.file_metadata* %13, %struct.file_metadata** %4, align 8
  %14 = icmp ne %struct.file_metadata* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %17 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %23

22:                                               ; preds = %15
  br label %10

23:                                               ; preds = %21, %10
  %24 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  store %struct.file_metadata* %24, %struct.file_metadata** %3, align 8
  br label %25

25:                                               ; preds = %23, %8
  %26 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  ret %struct.file_metadata* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
