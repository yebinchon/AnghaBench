; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_get_data_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_get_data_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i32 0, align 4
@ARC_BUFC_METADATA = common dso_local global i64 0, align 8
@ARC_BUFC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*)* @arc_get_data_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arc_get_data_buf(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @arc_buf_type(i32* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @B_TRUE, align 4
  %15 = call i32 @arc_get_data_impl(i32* %11, i32 %12, i8* %13, i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @zio_buf_alloc(i32 %20)
  store i8* %21, i8** %4, align 8
  br label %30

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ARC_BUFC_DATA, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @zio_data_buf_alloc(i32 %28)
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i64 @arc_buf_type(i32*) #1

declare dso_local i32 @arc_get_data_impl(i32*, i32, i8*, i32) #1

declare dso_local i8* @zio_buf_alloc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @zio_data_buf_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
