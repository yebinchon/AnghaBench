; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_file = type { i32*, i32* }

@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_file_free(%struct.linux_file* %0) #0 {
  %2 = alloca %struct.linux_file*, align 8
  store %struct.linux_file* %0, %struct.linux_file** %2, align 8
  %3 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %4 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %9 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %14 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @vm_object_deallocate(i32* %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %19 = call i32 @kfree(%struct.linux_file* %18)
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.linux_file*, %struct.linux_file** %2, align 8
  %22 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @curthread, align 4
  %25 = call i32 @_fdrop(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @kfree(%struct.linux_file*) #1

declare dso_local i32 @_fdrop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
