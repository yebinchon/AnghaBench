; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_table_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_table_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"storing %llx at index %llx\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32*)* @zap_table_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_table_store(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = call i32 @FZAP_BLOCK_SHIFT(%struct.TYPE_11__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = call i32 @RW_LOCK_HELD(i32* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 3
  %39 = ashr i32 %36, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 3
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %40, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @FTAG, align 4
  %60 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %61 = call i32 @dmu_buf_hold(i32 %48, i32 %51, i32 %58, i32 %59, %struct.TYPE_12__** %15, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %5
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %6, align 4
  br label %146

66:                                               ; preds = %5
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @dmu_buf_will_dirty(%struct.TYPE_12__* %67, i32* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %134

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %75, 2
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 3
  %80 = ashr i32 %77, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, 3
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %81, %85
  store i32 %86, i32* %19, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* @FTAG, align 4
  %101 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %102 = call i32 @dmu_buf_hold(i32 %89, i32 %92, i32 %99, i32 %100, %struct.TYPE_12__** %20, i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %74
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %107 = load i32, i32* @FTAG, align 4
  %108 = call i32 @dmu_buf_rele(%struct.TYPE_12__* %106, i32 %107)
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %6, align 4
  br label %146

110:                                              ; preds = %74
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @dmu_buf_will_dirty(%struct.TYPE_12__* %111, i32* %112)
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %114, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %122, i32* %130, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %132 = load i32, i32* @FTAG, align 4
  %133 = call i32 @dmu_buf_rele(%struct.TYPE_12__* %131, i32 %132)
  br label %134

134:                                              ; preds = %110, %66
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %135, i32* %142, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %144 = load i32, i32* @FTAG, align 4
  %145 = call i32 @dmu_buf_rele(%struct.TYPE_12__* %143, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %134, %105, %64
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i32 @FZAP_BLOCK_SHIFT(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local i32 @dprintf(i8*, i32, i32) #1

declare dso_local i32 @dmu_buf_hold(i32, i32, i32, i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
