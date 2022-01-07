; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_kobject_add_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_kobject_add_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kobj_type*, %struct.kobject* }
%struct.kobj_type = type { %struct.attribute** }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobject*)* @kobject_add_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kobject_add_complete(%struct.kobject* %0, %struct.kobject* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute**, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.kobject* %1, %struct.kobject** %4, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = load %struct.kobject*, %struct.kobject** %3, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 1
  store %struct.kobject* %8, %struct.kobject** %10, align 8
  %11 = load %struct.kobject*, %struct.kobject** %3, align 8
  %12 = call i32 @sysfs_create_dir(%struct.kobject* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %2
  %16 = load %struct.kobject*, %struct.kobject** %3, align 8
  %17 = getelementptr inbounds %struct.kobject, %struct.kobject* %16, i32 0, i32 0
  %18 = load %struct.kobj_type*, %struct.kobj_type** %17, align 8
  %19 = icmp ne %struct.kobj_type* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %15
  %21 = load %struct.kobject*, %struct.kobject** %3, align 8
  %22 = getelementptr inbounds %struct.kobject, %struct.kobject* %21, i32 0, i32 0
  %23 = load %struct.kobj_type*, %struct.kobj_type** %22, align 8
  %24 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %23, i32 0, i32 0
  %25 = load %struct.attribute**, %struct.attribute*** %24, align 8
  %26 = icmp ne %struct.attribute** %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load %struct.kobject*, %struct.kobject** %3, align 8
  %29 = getelementptr inbounds %struct.kobject, %struct.kobject* %28, i32 0, i32 0
  %30 = load %struct.kobj_type*, %struct.kobj_type** %29, align 8
  store %struct.kobj_type* %30, %struct.kobj_type** %5, align 8
  %31 = load %struct.kobj_type*, %struct.kobj_type** %5, align 8
  %32 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %31, i32 0, i32 0
  %33 = load %struct.attribute**, %struct.attribute*** %32, align 8
  store %struct.attribute** %33, %struct.attribute*** %7, align 8
  br label %34

34:                                               ; preds = %47, %27
  %35 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %36 = load %struct.attribute*, %struct.attribute** %35, align 8
  %37 = icmp ne %struct.attribute* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.kobject*, %struct.kobject** %3, align 8
  %40 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %41 = load %struct.attribute*, %struct.attribute** %40, align 8
  %42 = call i32 @sysfs_create_file(%struct.kobject* %39, %struct.attribute* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %50

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %49 = getelementptr inbounds %struct.attribute*, %struct.attribute** %48, i32 1
  store %struct.attribute** %49, %struct.attribute*** %7, align 8
  br label %34

50:                                               ; preds = %45, %34
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.kobject*, %struct.kobject** %3, align 8
  %55 = call i32 @sysfs_remove_dir(%struct.kobject* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %20, %15, %2
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @sysfs_create_dir(%struct.kobject*) #1

declare dso_local i32 @sysfs_create_file(%struct.kobject*, %struct.attribute*) #1

declare dso_local i32 @sysfs_remove_dir(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
