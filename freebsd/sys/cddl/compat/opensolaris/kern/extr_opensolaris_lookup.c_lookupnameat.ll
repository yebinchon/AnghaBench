; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_lookup.c_lookupnameat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_lookup.c_lookupnameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32* }

@LOOKUP = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookupnameat(i8* %0, i32 %1, i32 %2, i32** %3, i32** %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nameidata, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32**, i32*** %10, align 8
  %17 = icmp eq i32** %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @vref(i32* %20)
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @VOP_ISLOCKED(i32* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @VOP_UNLOCK(i32* %24, i32 0)
  %26 = load i32, i32* @LOOKUP, align 4
  %27 = load i32, i32* @LOCKLEAF, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @curthread, align 4
  %34 = call i32 @NDINIT_ATVP(%struct.nameidata* %13, i32 %26, i32 %29, i32 %30, i8* %31, i32* %32, i32 %33)
  %35 = call i32 @namei(%struct.nameidata* %13)
  store i32 %35, i32* %14, align 4
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32**, i32*** %11, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %40 = call i32 @NDFREE(%struct.nameidata* %13, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @LK_RETRY, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @vn_lock(i32* %41, i32 %44)
  %46 = load i32, i32* %14, align 4
  ret i32 %46
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vref(i32*) #1

declare dso_local i32 @VOP_ISLOCKED(i32*) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

declare dso_local i32 @NDINIT_ATVP(%struct.nameidata*, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vn_lock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
