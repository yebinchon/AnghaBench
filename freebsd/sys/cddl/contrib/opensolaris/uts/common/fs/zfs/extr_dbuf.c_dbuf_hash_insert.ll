; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_hash_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_10__*, i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64 }

@dbuf_hash_table = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DB_EVICTING = common dso_local global i64 0, align 8
@hash_collisions = common dso_local global i32 0, align 4
@hash_chains = common dso_local global i32 0, align 4
@hash_chain_max = common dso_local global i32 0, align 4
@dbuf_hash_count = common dso_local global i32 0, align 4
@hash_elements_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*)* @dbuf_hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @dbuf_hash_insert(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* @dbuf_hash_table, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @dbuf_hash(i32* %26, i64 %27, i32 %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  store i64 %35, i64* %10, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32* @DBUF_HASH_MUTEX(%struct.TYPE_11__* %36, i64 %37)
  %39 = call i32 @mutex_enter(i32* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %77, %1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @DBUF_EQUAL(%struct.TYPE_10__* %50, i32* %51, i64 %52, i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = call i32 @mutex_enter(i32* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DB_EVICTING, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32* @DBUF_HASH_MUTEX(%struct.TYPE_11__* %67, i64 %68)
  %70 = call i32 @mutex_exit(i32* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %2, align 8
  br label %124

72:                                               ; preds = %57
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = call i32 @mutex_exit(i32* %74)
  br label %76

76:                                               ; preds = %72, %49
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %46

83:                                               ; preds = %46
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load i32, i32* @hash_collisions, align 4
  %88 = call i32 @DBUF_STAT_BUMP(i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @hash_chains, align 4
  %93 = call i32 @DBUF_STAT_BUMP(i32 %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* @hash_chain_max, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @DBUF_STAT_MAX(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %83
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = call i32 @mutex_enter(i32* %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %104, i64 %105
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %114
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32* @DBUF_HASH_MUTEX(%struct.TYPE_11__* %116, i64 %117)
  %119 = call i32 @mutex_exit(i32* %118)
  %120 = call i32 @atomic_inc_64(i32* @dbuf_hash_count)
  %121 = load i32, i32* @hash_elements_max, align 4
  %122 = load i32, i32* @dbuf_hash_count, align 4
  %123 = call i32 @DBUF_STAT_MAX(i32 %121, i32 %122)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %124

124:                                              ; preds = %98, %66
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %125
}

declare dso_local i64 @dbuf_hash(i32*, i64, i32, i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @DBUF_HASH_MUTEX(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @DBUF_EQUAL(%struct.TYPE_10__*, i32*, i64, i32, i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @DBUF_STAT_BUMP(i32) #1

declare dso_local i32 @DBUF_STAT_MAX(i32, i32) #1

declare dso_local i32 @atomic_inc_64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
