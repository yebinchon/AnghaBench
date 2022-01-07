; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_build_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_build_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@SA_MAGIC = common dso_local global i64 0, align 8
@SA_BONUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64)* @sa_build_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_build_index(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32* @SA_GET_DB(%struct.TYPE_13__* %10, i64 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @SA_BONUSTYPE_FROM_DB(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call %struct.TYPE_12__* @SA_GET_HDR(%struct.TYPE_13__* %20, i64 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = call i32 @mutex_enter(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @IS_SA_BONUSTYPE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SA_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @BSWAP_32(i64 %43)
  %45 = load i64, i64* @SA_MAGIC, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @VERIFY(i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @sa_byteswap(%struct.TYPE_13__* %49, i64 %50)
  br label %52

52:                                               ; preds = %40, %35, %29, %2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = call i32* @sa_find_idx_tab(%struct.TYPE_14__* %55, i32 %56, %struct.TYPE_12__* %57)
  store i32* %58, i32** %9, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @SA_BONUS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  br label %70

66:                                               ; preds = %52
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = call i32 @mutex_exit(i32* %72)
  ret i32 0
}

declare dso_local i32* @SA_GET_DB(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @SA_BONUSTYPE_FROM_DB(i32*) #1

declare dso_local %struct.TYPE_12__* @SA_GET_HDR(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @IS_SA_BONUSTYPE(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @BSWAP_32(i64) #1

declare dso_local i32 @sa_byteswap(%struct.TYPE_13__*, i64) #1

declare dso_local i32* @sa_find_idx_tab(%struct.TYPE_14__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
