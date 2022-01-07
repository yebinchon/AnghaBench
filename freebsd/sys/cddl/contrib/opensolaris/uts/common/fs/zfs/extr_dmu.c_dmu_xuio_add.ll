; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_xuio_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_xuio_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_xuio_add(%struct.TYPE_10__* %0, %struct.TYPE_13__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call %struct.TYPE_12__* @XUIO_XUZC_PRIV(%struct.TYPE_10__* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %11, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = call i64 @arc_buf_lsize(%struct.TYPE_13__* %31)
  %33 = icmp ule i64 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.iovec*, %struct.iovec** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i64 %40
  store %struct.iovec* %41, %struct.iovec** %9, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load %struct.iovec*, %struct.iovec** %9, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.iovec*, %struct.iovec** %9, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %58
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %59, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_12__* @XUIO_XUZC_PRIV(%struct.TYPE_10__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @arc_buf_lsize(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
