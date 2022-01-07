; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_read_file_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_read_file_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct._buf = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.uio = type { i8*, i32, i32, i32, %struct.thread*, i32, i32, i64, %struct.uio* }
%struct.iovec = type { i8*, i32, i32, i32, %struct.thread*, i32, i32, i64, %struct.iovec* }

@curthread = common dso_local global %struct.thread* null, align 8
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobj_read_file_vnode(%struct._buf* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct._buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.uio, align 8
  %12 = alloca %struct.iovec, align 8
  %13 = alloca i32, align 4
  store %struct._buf* %0, %struct._buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct._buf*, %struct._buf** %5, align 8
  %15 = getelementptr inbounds %struct._buf, %struct._buf* %14, i32 0, i32 0
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %9, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %10, align 8
  %18 = bitcast %struct.iovec* %12 to %struct.uio*
  %19 = call i32 @bzero(%struct.uio* %18, i32 56)
  %20 = call i32 @bzero(%struct.uio* %11, i32 56)
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = bitcast %struct.iovec* %12 to %struct.uio*
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 8
  store %struct.uio* %25, %struct.uio** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 7
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @UIO_SYSSPACE, align 4
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 6
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @UIO_READ, align 4
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load %struct.thread*, %struct.thread** %10, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 4
  store %struct.thread* %37, %struct.thread** %38, align 8
  %39 = load %struct.vnode*, %struct.vnode** %9, align 8
  %40 = load i32, i32* @LK_SHARED, align 4
  %41 = load i32, i32* @LK_RETRY, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @vn_lock(%struct.vnode* %39, i32 %42)
  %44 = load %struct.vnode*, %struct.vnode** %9, align 8
  %45 = load i32, i32* @IO_UNIT, align 4
  %46 = load i32, i32* @IO_SYNC, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.thread*, %struct.thread** %10, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @VOP_READ(%struct.vnode* %44, %struct.uio* %11, i32 %47, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.vnode*, %struct.vnode** %9, align 8
  %53 = call i32 @VOP_UNLOCK(%struct.vnode* %52, i32 0)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %4
  br label %62

57:                                               ; preds = %4
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sub i32 %58, %60
  br label %62

62:                                               ; preds = %57, %56
  %63 = phi i32 [ -1, %56 ], [ %61, %57 ]
  ret i32 %63
}

declare dso_local i32 @bzero(%struct.uio*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
