; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_open_file_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_open_file_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@FREAD = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @kobj_open_file_vnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kobj_open_file_vnode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.nameidata, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %8, %struct.thread** %4, align 8
  %9 = call i32 (...) @pwd_ensure_dirs()
  %10 = load i32, i32* @FREAD, align 4
  %11 = load i32, i32* @O_NOFOLLOW, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @LOOKUP, align 4
  %14 = load i32, i32* @UIO_SYSSPACE, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = call i32 @NDINIT(%struct.nameidata* %5, i32 %13, i32 0, i32 %14, i8* %15, %struct.thread* %16)
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vn_open_cred(%struct.nameidata* %5, i32* %7, i32 0, i32 0, i32 %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %27 = call i32 @NDFREE(%struct.nameidata* %5, i32 %26)
  %28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @VOP_UNLOCK(i8* %29, i32 0)
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @pwd_ensure_dirs(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @vn_open_cred(%struct.nameidata*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_UNLOCK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
