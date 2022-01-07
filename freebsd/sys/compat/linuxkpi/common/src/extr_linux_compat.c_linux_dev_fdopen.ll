; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_dev_fdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_dev_fdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.linux_cdev* }
%struct.linux_cdev = type { i32, i32 }
%struct.thread = type { i32 }
%struct.file = type { i32, i32 }
%struct.linux_file = type { i32, i32, %struct.linux_cdev*, %struct.file*, i32, i32, i32, i32* }
%struct.file_operations = type { i32 (i32, %struct.linux_file*)* }

@DTYPE_DEV = common dso_local global i32 0, align 4
@linuxfileops = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)* @linux_dev_fdopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_dev_fdopen(%struct.cdev* %0, i32 %1, %struct.thread* %2, %struct.file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.linux_cdev*, align 8
  %11 = alloca %struct.linux_file*, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  %14 = load %struct.cdev*, %struct.cdev** %6, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.linux_cdev*, %struct.linux_cdev** %15, align 8
  store %struct.linux_cdev* %16, %struct.linux_cdev** %10, align 8
  %17 = call %struct.linux_file* (...) @linux_file_alloc()
  store %struct.linux_file* %17, %struct.linux_file** %11, align 8
  %18 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %19 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %18, i32 0, i32 6
  %20 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %21 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %20, i32 0, i32 7
  store i32* %19, i32** %21, align 8
  %22 = load %struct.linux_cdev*, %struct.linux_cdev** %10, align 8
  %23 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %26 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.file*, %struct.file** %9, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %31 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.file*, %struct.file** %9, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %36 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.file*, %struct.file** %9, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %41 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.file*, %struct.file** %9, align 8
  %43 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %44 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %43, i32 0, i32 3
  store %struct.file* %42, %struct.file** %44, align 8
  %45 = load %struct.linux_cdev*, %struct.linux_cdev** %10, align 8
  %46 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %45, i32 0, i32 0
  %47 = call i32 @refcount_acquire(i32* %46)
  %48 = load %struct.linux_cdev*, %struct.linux_cdev** %10, align 8
  %49 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %50 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %49, i32 0, i32 2
  store %struct.linux_cdev* %48, %struct.linux_cdev** %50, align 8
  %51 = load %struct.thread*, %struct.thread** %8, align 8
  %52 = call i32 @linux_set_current(%struct.thread* %51)
  %53 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %54 = call i32 @linux_get_fop(%struct.linux_file* %53, %struct.file_operations** %12, %struct.linux_cdev** %10)
  %55 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %56 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %55, i32 0, i32 0
  %57 = load i32 (i32, %struct.linux_file*)*, i32 (i32, %struct.linux_file*)** %56, align 8
  %58 = icmp ne i32 (i32, %struct.linux_file*)* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %4
  %60 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %61 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %60, i32 0, i32 0
  %62 = load i32 (i32, %struct.linux_file*)*, i32 (i32, %struct.linux_file*)** %61, align 8
  %63 = load %struct.file*, %struct.file** %9, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %67 = call i32 %62(i32 %65, %struct.linux_file* %66)
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  %72 = load %struct.linux_cdev*, %struct.linux_cdev** %10, align 8
  %73 = call i32 @linux_drop_fop(%struct.linux_cdev* %72)
  %74 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %75 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %74, i32 0, i32 2
  %76 = load %struct.linux_cdev*, %struct.linux_cdev** %75, align 8
  %77 = call i32 @linux_cdev_deref(%struct.linux_cdev* %76)
  %78 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %79 = call i32 @kfree(%struct.linux_file* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %97

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %4
  %83 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %84 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @vhold(i32 %85)
  %87 = load %struct.file*, %struct.file** %9, align 8
  %88 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %89 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DTYPE_DEV, align 4
  %92 = load %struct.linux_file*, %struct.linux_file** %11, align 8
  %93 = call i32 @finit(%struct.file* %87, i32 %90, i32 %91, %struct.linux_file* %92, i32* @linuxfileops)
  %94 = load %struct.linux_cdev*, %struct.linux_cdev** %10, align 8
  %95 = call i32 @linux_drop_fop(%struct.linux_cdev* %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %82, %71
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.linux_file* @linux_file_alloc(...) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

declare dso_local i32 @linux_cdev_deref(%struct.linux_cdev*) #1

declare dso_local i32 @kfree(%struct.linux_file*) #1

declare dso_local i32 @vhold(i32) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.linux_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
