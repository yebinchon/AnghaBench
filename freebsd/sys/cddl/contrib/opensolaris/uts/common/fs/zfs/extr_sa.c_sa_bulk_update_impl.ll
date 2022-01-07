; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_bulk_update_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_bulk_update_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, i32*)*, i64 }

@SA_BONUS = common dso_local global i32 0, align 4
@SA_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32, i32*)* @sa_bulk_update_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_bulk_update_impl(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = load i32, i32* @SA_BONUS, align 4
  %19 = call i32 @SA_GET_DB(%struct.TYPE_13__* %17, i32 %18)
  %20 = call i32 @SA_BONUSTYPE_FROM_DB(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i32 @ASSERT(%struct.TYPE_13__* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = call %struct.TYPE_13__* @MUTEX_HELD(i32* %24)
  %26 = call i32 @ASSERT(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @sa_attr_register_sync(%struct.TYPE_13__* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SA_UPDATE, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @sa_attr_op(%struct.TYPE_13__* %36, i32* %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @IS_SA_BONUSTYPE(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_13__*, i32*)* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 %56(%struct.TYPE_13__* %57, i32* %58)
  br label %60

60:                                               ; preds = %53, %48, %44, %35
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @SA_BONUSTYPE_FROM_DB(i32) #1

declare dso_local i32 @SA_GET_DB(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ASSERT(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @MUTEX_HELD(i32*) #1

declare dso_local i32 @sa_attr_register_sync(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @sa_attr_op(%struct.TYPE_13__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @IS_SA_BONUSTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
