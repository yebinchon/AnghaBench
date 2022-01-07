; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c___register_chrdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c___register_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.linux_cdev = type { i32, %struct.file_operations* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__register_chrdev(i32 %0, i32 %1, i32 %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.linux_cdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.file_operations* %4, %struct.file_operations** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  br label %15

15:                                               ; preds = %39, %5
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %17, %18
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = call %struct.linux_cdev* (...) @cdev_alloc()
  store %struct.linux_cdev* %22, %struct.linux_cdev** %11, align 8
  %23 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %24 = load %struct.linux_cdev*, %struct.linux_cdev** %11, align 8
  %25 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %24, i32 0, i32 1
  store %struct.file_operations* %23, %struct.file_operations** %25, align 8
  %26 = load %struct.linux_cdev*, %struct.linux_cdev** %11, align 8
  %27 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %26, i32 0, i32 0
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @kobject_set_name(i32* %27, i8* %28)
  %30 = load %struct.linux_cdev*, %struct.linux_cdev** %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @makedev(i32 %31, i32 %32)
  %34 = call i32 @cdev_add(%struct.linux_cdev* %30, i32 %33, i32 1)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %42

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %15

42:                                               ; preds = %37, %15
  %43 = load i32, i32* %12, align 4
  ret i32 %43
}

declare dso_local %struct.linux_cdev* @cdev_alloc(...) #1

declare dso_local i32 @kobject_set_name(i32*, i8*) #1

declare dso_local i32 @cdev_add(%struct.linux_cdev*, i32, i32) #1

declare dso_local i32 @makedev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
