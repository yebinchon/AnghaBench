; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_file_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.stat = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.linux_file = type { %struct.vnode* }
%struct.vnode = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @linux_file_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_file_stat(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.linux_file*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.linux_file*
  store %struct.linux_file* %16, %struct.linux_file** %10, align 8
  %17 = load %struct.linux_file*, %struct.linux_file** %10, align 8
  %18 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %17, i32 0, i32 0
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  %20 = icmp eq %struct.vnode* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %5, align 4
  br label %43

23:                                               ; preds = %4
  %24 = load %struct.linux_file*, %struct.linux_file** %10, align 8
  %25 = getelementptr inbounds %struct.linux_file, %struct.linux_file* %24, i32 0, i32 0
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  store %struct.vnode* %26, %struct.vnode** %11, align 8
  %27 = load %struct.vnode*, %struct.vnode** %11, align 8
  %28 = load i32, i32* @LK_SHARED, align 4
  %29 = load i32, i32* @LK_RETRY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @vn_lock(%struct.vnode* %27, i32 %30)
  %32 = load %struct.vnode*, %struct.vnode** %11, align 8
  %33 = load %struct.stat*, %struct.stat** %7, align 8
  %34 = load %struct.thread*, %struct.thread** %9, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NOCRED, align 4
  %38 = load %struct.thread*, %struct.thread** %9, align 8
  %39 = call i32 @vn_stat(%struct.vnode* %32, %struct.stat* %33, i32 %36, i32 %37, %struct.thread* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.vnode*, %struct.vnode** %11, align 8
  %41 = call i32 @VOP_UNLOCK(%struct.vnode* %40, i32 0)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %23, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vn_stat(%struct.vnode*, %struct.stat*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
