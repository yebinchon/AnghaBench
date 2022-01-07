; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_removemetadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_removemetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.file_metadata* }
%struct.file_metadata = type { %struct.file_metadata* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_removemetadata(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca %struct.file_metadata*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  %5 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %6 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %5, i32 0, i32 0
  %7 = load %struct.file_metadata*, %struct.file_metadata** %6, align 8
  store %struct.file_metadata* %7, %struct.file_metadata** %3, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  %10 = icmp ne %struct.file_metadata* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  %13 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %12, i32 0, i32 0
  %14 = load %struct.file_metadata*, %struct.file_metadata** %13, align 8
  store %struct.file_metadata* %14, %struct.file_metadata** %4, align 8
  %15 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  %16 = call i32 @free(%struct.file_metadata* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  store %struct.file_metadata* %18, %struct.file_metadata** %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %21 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %20, i32 0, i32 0
  store %struct.file_metadata* null, %struct.file_metadata** %21, align 8
  ret void
}

declare dso_local i32 @free(%struct.file_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
