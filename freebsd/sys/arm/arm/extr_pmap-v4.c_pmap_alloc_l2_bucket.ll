; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_alloc_l2_bucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_alloc_l2_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32, %struct.l2_dtable*, i32 }
%struct.l2_dtable = type { i64, %struct.l2_bucket* }
%struct.TYPE_6__ = type { %struct.l2_dtable** }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@l2table_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@l2zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2_bucket* (%struct.TYPE_6__*, i32)* @pmap_alloc_l2_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2_bucket* @pmap_alloc_l2_bucket(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.l2_bucket*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2_dtable*, align 8
  %7 = alloca %struct.l2_bucket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2_dtable*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @L1_IDX(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_6__* %12)
  %14 = load i32, i32* @RA_WLOCKED, align 4
  %15 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.l2_dtable**, %struct.l2_dtable*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @L2_IDX(i32 %19)
  %21 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %18, i64 %20
  %22 = load %struct.l2_dtable*, %struct.l2_dtable** %21, align 8
  store %struct.l2_dtable* %22, %struct.l2_dtable** %6, align 8
  %23 = icmp eq %struct.l2_dtable* %22, null
  br i1 %23, label %24, label %70

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 @PMAP_UNLOCK(%struct.TYPE_6__* %25)
  %27 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %28 = load i32, i32* @l2table_zone, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call %struct.l2_dtable* @uma_zalloc(i32 %28, i32 %29)
  store %struct.l2_dtable* %30, %struct.l2_dtable** %6, align 8
  %31 = icmp eq %struct.l2_dtable* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @PMAP_LOCK(%struct.TYPE_6__* %34)
  store %struct.l2_bucket* null, %struct.l2_bucket** %3, align 8
  br label %144

36:                                               ; preds = %24
  %37 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call i32 @PMAP_LOCK(%struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.l2_dtable**, %struct.l2_dtable*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @L2_IDX(i32 %43)
  %45 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %42, i64 %44
  %46 = load %struct.l2_dtable*, %struct.l2_dtable** %45, align 8
  %47 = icmp ne %struct.l2_dtable* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %36
  %49 = load i32, i32* @l2table_zone, align 4
  %50 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %51 = call i32 @uma_zfree(i32 %49, %struct.l2_dtable* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.l2_dtable**, %struct.l2_dtable*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @L2_IDX(i32 %55)
  %57 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %54, i64 %56
  %58 = load %struct.l2_dtable*, %struct.l2_dtable** %57, align 8
  store %struct.l2_dtable* %58, %struct.l2_dtable** %6, align 8
  br label %69

59:                                               ; preds = %36
  %60 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %61 = call i32 @bzero(%struct.l2_dtable* %60, i32 16)
  %62 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.l2_dtable**, %struct.l2_dtable*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @L2_IDX(i32 %66)
  %68 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %65, i64 %67
  store %struct.l2_dtable* %62, %struct.l2_dtable** %68, align 8
  br label %69

69:                                               ; preds = %59, %48
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %72 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %71, i32 0, i32 1
  %73 = load %struct.l2_bucket*, %struct.l2_bucket** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @L2_BUCKET(i32 %74)
  %76 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %73, i64 %75
  store %struct.l2_bucket* %76, %struct.l2_bucket** %7, align 8
  %77 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %78 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %77, i32 0, i32 1
  %79 = load %struct.l2_dtable*, %struct.l2_dtable** %78, align 8
  %80 = icmp eq %struct.l2_dtable* %79, null
  br i1 %80, label %81, label %142

81:                                               ; preds = %70
  %82 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %83 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = call i32 @PMAP_UNLOCK(%struct.TYPE_6__* %86)
  %88 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %89 = load i32, i32* @l2zone, align 4
  %90 = load i32, i32* @M_NOWAIT, align 4
  %91 = call %struct.l2_dtable* @uma_zalloc(i32 %89, i32 %90)
  store %struct.l2_dtable* %91, %struct.l2_dtable** %9, align 8
  %92 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = call i32 @PMAP_LOCK(%struct.TYPE_6__* %93)
  %95 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %96 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %95, i32 0, i32 1
  %97 = load %struct.l2_dtable*, %struct.l2_dtable** %96, align 8
  %98 = icmp ne %struct.l2_dtable* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %81
  %100 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %101 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* @l2zone, align 4
  %105 = load %struct.l2_dtable*, %struct.l2_dtable** %9, align 8
  %106 = call i32 @uma_zfree(i32 %104, %struct.l2_dtable* %105)
  %107 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  store %struct.l2_bucket* %107, %struct.l2_bucket** %3, align 8
  br label %144

108:                                              ; preds = %81
  %109 = load %struct.l2_dtable*, %struct.l2_dtable** %9, align 8
  %110 = call i32 @vtophys(%struct.l2_dtable* %109)
  %111 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %112 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.l2_dtable*, %struct.l2_dtable** %9, align 8
  %114 = icmp eq %struct.l2_dtable* %113, null
  br i1 %114, label %115, label %135

115:                                              ; preds = %108
  %116 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %117 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %121 = getelementptr inbounds %struct.l2_dtable, %struct.l2_dtable* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %115
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.l2_dtable**, %struct.l2_dtable*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @L2_IDX(i32 %128)
  %130 = getelementptr inbounds %struct.l2_dtable*, %struct.l2_dtable** %127, i64 %129
  store %struct.l2_dtable* null, %struct.l2_dtable** %130, align 8
  %131 = load i32, i32* @l2table_zone, align 4
  %132 = load %struct.l2_dtable*, %struct.l2_dtable** %6, align 8
  %133 = call i32 @uma_zfree(i32 %131, %struct.l2_dtable* %132)
  br label %134

134:                                              ; preds = %124, %115
  store %struct.l2_bucket* null, %struct.l2_bucket** %3, align 8
  br label %144

135:                                              ; preds = %108
  %136 = load %struct.l2_dtable*, %struct.l2_dtable** %9, align 8
  %137 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %138 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %137, i32 0, i32 1
  store %struct.l2_dtable* %136, %struct.l2_dtable** %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %141 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %135, %70
  %143 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  store %struct.l2_bucket* %143, %struct.l2_bucket** %3, align 8
  br label %144

144:                                              ; preds = %142, %134, %99, %32
  %145 = load %struct.l2_bucket*, %struct.l2_bucket** %3, align 8
  ret %struct.l2_bucket* %145
}

declare dso_local i32 @L1_IDX(i32) #1

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_6__*) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i64 @L2_IDX(i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local %struct.l2_dtable* @uma_zalloc(i32, i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @uma_zfree(i32, %struct.l2_dtable*) #1

declare dso_local i32 @bzero(%struct.l2_dtable*, i32) #1

declare dso_local i64 @L2_BUCKET(i32) #1

declare dso_local i32 @vtophys(%struct.l2_dtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
