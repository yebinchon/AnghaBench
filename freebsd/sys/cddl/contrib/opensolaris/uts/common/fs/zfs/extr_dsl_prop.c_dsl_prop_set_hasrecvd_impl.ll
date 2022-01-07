; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_set_hasrecvd_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_set_hasrecvd_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTAG = common dso_local global i32 0, align 4
@SPA_VERSION_RECVD_PROPS = common dso_local global i64 0, align 8
@ZPROP_HAS_RECVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @dsl_prop_set_hasrecvd_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_prop_set_hasrecvd_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @FTAG, align 4
  %10 = call i32 @spa_open(i8* %8, i32** %6, i32 %9)
  %11 = call i32 @VERIFY0(i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @spa_version(i32* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @FTAG, align 4
  %16 = call i32 @spa_close(i32* %14, i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SPA_VERSION_RECVD_PROPS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @ZPROP_HAS_RECVD, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dsl_prop_set_int(i8* %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @dsl_prop_set_int(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
