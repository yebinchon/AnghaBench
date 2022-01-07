; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c___register_chrdev_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c___register_chrdev_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.linux_cdev = type { i32, %struct.file_operations* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__register_chrdev_p(i32 %0, i32 %1, i32 %2, i8* %3, %struct.file_operations* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.file_operations*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.linux_cdev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store %struct.file_operations* %4, %struct.file_operations** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %19, align 4
  br label %21

21:                                               ; preds = %48, %8
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add i32 %23, %24
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = call %struct.linux_cdev* (...) @cdev_alloc()
  store %struct.linux_cdev* %28, %struct.linux_cdev** %17, align 8
  %29 = load %struct.file_operations*, %struct.file_operations** %13, align 8
  %30 = load %struct.linux_cdev*, %struct.linux_cdev** %17, align 8
  %31 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %30, i32 0, i32 1
  store %struct.file_operations* %29, %struct.file_operations** %31, align 8
  %32 = load %struct.linux_cdev*, %struct.linux_cdev** %17, align 8
  %33 = getelementptr inbounds %struct.linux_cdev, %struct.linux_cdev* %32, i32 0, i32 0
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @kobject_set_name(i32* %33, i8* %34)
  %36 = load %struct.linux_cdev*, %struct.linux_cdev** %17, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @makedev(i32 %37, i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @cdev_add_ext(%struct.linux_cdev* %36, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %51

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %19, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %19, align 4
  br label %21

51:                                               ; preds = %46, %21
  %52 = load i32, i32* %18, align 4
  ret i32 %52
}

declare dso_local %struct.linux_cdev* @cdev_alloc(...) #1

declare dso_local i32 @kobject_set_name(i32*, i8*) #1

declare dso_local i32 @cdev_add_ext(%struct.linux_cdev*, i32, i32, i32, i32) #1

declare dso_local i32 @makedev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
