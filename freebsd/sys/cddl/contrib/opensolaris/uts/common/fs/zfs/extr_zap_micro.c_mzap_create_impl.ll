; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_mzap_create_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_mzap_create_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }

@FTAG = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@ZBT_MICRO = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mzap_create_impl(i32* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @FTAG, align 4
  %17 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %18 = call i32 @dmu_buf_hold(i32* %14, i32 %15, i32 0, i32 %16, %struct.TYPE_8__** %11, i32 %17)
  %19 = call i32 @VERIFY0(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @dmu_buf_will_dirty(%struct.TYPE_8__* %20, i32* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %12, align 8
  %26 = load i32, i32* @ZBT_MICRO, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = ptrtoint %struct.TYPE_8__* %29 to i64
  %31 = load i32*, i32** %10, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = xor i64 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = xor i64 %33, %36
  %38 = or i64 %37, 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %5
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @RW_WRITER, align 4
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = load i32, i32* @B_FALSE, align 4
  %53 = call i32 @zap_lockdir_impl(%struct.TYPE_8__* %47, i32 %48, i32* %49, i32 %50, i32 %51, i32 %52, i32** %13)
  %54 = call i32 @VERIFY0(i32 %53)
  %55 = load i32, i32* @FTAG, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @mzap_upgrade(i32** %13, i32 %55, i32* %56, i64 %57)
  %59 = call i32 @VERIFY0(i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @zap_unlockdir(i32* %60, i32 %61)
  br label %67

63:                                               ; preds = %5
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %46
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_buf_hold(i32*, i32, i32, i32, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @zap_lockdir_impl(%struct.TYPE_8__*, i32, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @mzap_upgrade(i32**, i32, i32*, i64) #1

declare dso_local i32 @zap_unlockdir(i32*, i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
