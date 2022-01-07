; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_get_filesize_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_get_filesize_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct._buf = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.vattr = type { i64 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._buf*, i64*)* @kobj_get_filesize_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kobj_get_filesize_vnode(%struct._buf* %0, i64* %1) #0 {
  %3 = alloca %struct._buf*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vattr, align 8
  %7 = alloca i32, align 4
  store %struct._buf* %0, %struct._buf** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct._buf*, %struct._buf** %3, align 8
  %9 = getelementptr inbounds %struct._buf, %struct._buf* %8, i32 0, i32 0
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = load i32, i32* @LK_SHARED, align 4
  %13 = load i32, i32* @LK_RETRY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @vn_lock(%struct.vnode* %11, i32 %14)
  %16 = load %struct.vnode*, %struct.vnode** %5, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @VOP_GETATTR(%struct.vnode* %16, %struct.vattr* %6, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = call i32 @VOP_UNLOCK(%struct.vnode* %21, i32 0)
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %4, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
