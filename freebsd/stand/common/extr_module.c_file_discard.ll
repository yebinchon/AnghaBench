; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_file_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.preloaded_file*, %struct.preloaded_file*, %struct.preloaded_file*, %struct.preloaded_file*, %struct.preloaded_file*, %struct.preloaded_file*, %struct.preloaded_file*, %struct.preloaded_file* }
%struct.file_metadata = type { %struct.file_metadata*, %struct.file_metadata*, %struct.file_metadata*, %struct.file_metadata*, %struct.file_metadata*, %struct.file_metadata*, %struct.file_metadata*, %struct.file_metadata* }
%struct.kernel_module = type { %struct.kernel_module*, %struct.kernel_module*, %struct.kernel_module*, %struct.kernel_module*, %struct.kernel_module*, %struct.kernel_module*, %struct.kernel_module*, %struct.kernel_module* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_discard(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca %struct.file_metadata*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca %struct.kernel_module*, align 8
  %6 = alloca %struct.kernel_module*, align 8
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  %7 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %8 = icmp eq %struct.preloaded_file* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %12 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %11, i32 0, i32 7
  %13 = load %struct.preloaded_file*, %struct.preloaded_file** %12, align 8
  %14 = bitcast %struct.preloaded_file* %13 to %struct.file_metadata*
  store %struct.file_metadata* %14, %struct.file_metadata** %3, align 8
  br label %15

15:                                               ; preds = %18, %10
  %16 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  %17 = icmp ne %struct.file_metadata* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  store %struct.file_metadata* %19, %struct.file_metadata** %4, align 8
  %20 = load %struct.file_metadata*, %struct.file_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %20, i32 0, i32 6
  %22 = load %struct.file_metadata*, %struct.file_metadata** %21, align 8
  store %struct.file_metadata* %22, %struct.file_metadata** %3, align 8
  %23 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %24 = bitcast %struct.file_metadata* %23 to %struct.preloaded_file*
  %25 = call i32 @free(%struct.preloaded_file* %24)
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %28 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %27, i32 0, i32 5
  %29 = load %struct.preloaded_file*, %struct.preloaded_file** %28, align 8
  %30 = bitcast %struct.preloaded_file* %29 to %struct.kernel_module*
  store %struct.kernel_module* %30, %struct.kernel_module** %5, align 8
  br label %31

31:                                               ; preds = %34, %26
  %32 = load %struct.kernel_module*, %struct.kernel_module** %5, align 8
  %33 = icmp ne %struct.kernel_module* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.kernel_module*, %struct.kernel_module** %5, align 8
  %36 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %35, i32 0, i32 4
  %37 = load %struct.kernel_module*, %struct.kernel_module** %36, align 8
  %38 = bitcast %struct.kernel_module* %37 to %struct.preloaded_file*
  %39 = call i32 @free(%struct.preloaded_file* %38)
  %40 = load %struct.kernel_module*, %struct.kernel_module** %5, align 8
  store %struct.kernel_module* %40, %struct.kernel_module** %6, align 8
  %41 = load %struct.kernel_module*, %struct.kernel_module** %5, align 8
  %42 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %41, i32 0, i32 3
  %43 = load %struct.kernel_module*, %struct.kernel_module** %42, align 8
  store %struct.kernel_module* %43, %struct.kernel_module** %5, align 8
  %44 = load %struct.kernel_module*, %struct.kernel_module** %6, align 8
  %45 = bitcast %struct.kernel_module* %44 to %struct.preloaded_file*
  %46 = call i32 @free(%struct.preloaded_file* %45)
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %49 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %48, i32 0, i32 2
  %50 = load %struct.preloaded_file*, %struct.preloaded_file** %49, align 8
  %51 = call i32 @free(%struct.preloaded_file* %50)
  %52 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %53 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %52, i32 0, i32 1
  %54 = load %struct.preloaded_file*, %struct.preloaded_file** %53, align 8
  %55 = call i32 @free(%struct.preloaded_file* %54)
  %56 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %57 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %56, i32 0, i32 0
  %58 = load %struct.preloaded_file*, %struct.preloaded_file** %57, align 8
  %59 = call i32 @free(%struct.preloaded_file* %58)
  %60 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %61 = call i32 @free(%struct.preloaded_file* %60)
  br label %62

62:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @free(%struct.preloaded_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
