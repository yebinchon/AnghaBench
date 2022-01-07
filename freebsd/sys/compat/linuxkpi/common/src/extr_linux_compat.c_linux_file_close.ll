; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.thread = type { i32 }
%struct.linux_file = type { i32*, i32*, i32, i32 }
%struct.file_operations = type { i32 (i32*, %struct.linux_file*)* }
%struct.linux_cdev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"File refcount(%d) is not zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.thread*)* @linux_file_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_close(%struct.file* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_file*, align 8
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca %struct.linux_cdev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.linux_file*
  store %struct.linux_file* %12, %struct.linux_file** %5, align 8
  %13 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %14 = call i64 @file_count(%struct.linux_file* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %18 = call i64 @file_count(%struct.linux_file* %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  store i32 0, i32* %8, align 4
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %25 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call i32 @linux_set_current(%struct.thread* %26)
  %28 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %29 = call i32 @linux_poll_wait_dequeue(%struct.linux_file* %28)
  %30 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %31 = call i32 @linux_get_fop(%struct.linux_file* %30, %struct.file_operations** %6, %struct.linux_cdev** %7)
  %32 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %33 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %32, i32 0, i32 0
  %34 = load i32 (i32*, %struct.linux_file*)*, i32 (i32*, %struct.linux_file*)** %33, align 8
  %35 = icmp ne i32 (i32*, %struct.linux_file*)* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %2
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %40 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %39, i32 0, i32 0
  %41 = load i32 (i32*, %struct.linux_file*)*, i32 (i32*, %struct.linux_file*)** %40, align 8
  %42 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %43 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %46 = call i32 %41(i32* %44, %struct.linux_file* %45)
  %47 = call i32 @OPW(%struct.file* %37, %struct.thread* %38, i32 %46)
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %36, %2
  %50 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %51 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %50, i32 0, i32 2
  %52 = call i32 @funsetown(i32* %51)
  %53 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %54 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %59 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @vdrop(i32* %60)
  br label %62

62:                                               ; preds = %57, %49
  %63 = load %struct.linux_cdev*, %struct.linux_cdev** %7, align 8
  %64 = call i32 @linux_drop_fop(%struct.linux_cdev* %63)
  %65 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %66 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %71 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @linux_cdev_deref(i32* %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.linux_file*, %struct.linux_file** %5, align 8
  %76 = call i32 @kfree(%struct.linux_file* %75)
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @file_count(%struct.linux_file*) #1

declare dso_local i32 @linux_set_current(%struct.thread*) #1

declare dso_local i32 @linux_poll_wait_dequeue(%struct.linux_file*) #1

declare dso_local i32 @linux_get_fop(%struct.linux_file*, %struct.file_operations**, %struct.linux_cdev**) #1

declare dso_local i32 @OPW(%struct.file*, %struct.thread*, i32) #1

declare dso_local i32 @funsetown(i32*) #1

declare dso_local i32 @vdrop(i32*) #1

declare dso_local i32 @linux_drop_fop(%struct.linux_cdev*) #1

declare dso_local i32 @linux_cdev_deref(i32*) #1

declare dso_local i32 @kfree(%struct.linux_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
