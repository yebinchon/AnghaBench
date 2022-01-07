; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_getdents_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_getdents_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i64 }
%struct.file = type { %struct.vnode* }

@cap_read_rights = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32)* @linux_getdents_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_getdents_error(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @getvnode(%struct.thread* %11, i32 %12, i32* @cap_read_rights, %struct.file** %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.file*, %struct.file** %9, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %8, align 8
  %22 = load %struct.vnode*, %struct.vnode** %8, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VDIR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.file*, %struct.file** %9, align 8
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = call i32 @fdrop(%struct.file* %28, %struct.thread* %29)
  %31 = load i32, i32* @ENOTDIR, align 4
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %18
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = load %struct.thread*, %struct.thread** %5, align 8
  %35 = call i32 @fdrop(%struct.file* %33, %struct.thread* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %27, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
