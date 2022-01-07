; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_mmap_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_mmap_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i32 }
%struct.file_operations = type { i32 }

@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_COPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32, i32*, i32*, %struct.file*, i32*, %struct.file_operations*, i32*)* @linux_file_mmap_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_mmap_sub(%struct.thread* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.file* %5, i32* %6, %struct.file_operations* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.file_operations*, align 8
  %19 = alloca i32*, align 8
  store %struct.thread* %0, %struct.thread** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.file* %5, %struct.file** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.file_operations* %7, %struct.file_operations** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VM_PROT_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @VM_PROT_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EACCES, align 4
  store i32 %31, i32* %10, align 4
  br label %51

32:                                               ; preds = %25, %9
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAP_PRIVATE, align 4
  %36 = load i32, i32* @MAP_COPY, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %10, align 4
  br label %51

42:                                               ; preds = %32
  %43 = load %struct.file*, %struct.file** %16, align 8
  %44 = load %struct.file_operations*, %struct.file_operations** %18, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.thread*, %struct.thread** %11, align 8
  %50 = call i32 @linux_file_mmap_single(%struct.file* %43, %struct.file_operations* %44, i32* %45, i32 %46, i32* %47, i32 %48, %struct.thread* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %42, %40, %30
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @linux_file_mmap_single(%struct.file*, %struct.file_operations*, i32*, i32, i32*, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
