; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @arc_alloc_buf(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @spa_load_guid(i32* %11)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @arc_hdr_alloc(i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @HDR_LOCK(i32* %18)
  %20 = call i32 @MUTEX_HELD(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  store i32* null, i32** %10, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @B_FALSE, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = call i32 @arc_buf_alloc_impl(i32* %25, i8* %26, i32 %27, i32 %28, i32** %10)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @arc_buf_thaw(i32* %31)
  %33 = load i32*, i32** %10, align 8
  ret i32* %33
}

declare dso_local i32* @arc_hdr_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @spa_load_guid(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32) #1

declare dso_local i32 @HDR_LOCK(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @arc_buf_alloc_impl(i32*, i8*, i32, i32, i32**) #1

declare dso_local i32 @arc_buf_thaw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
