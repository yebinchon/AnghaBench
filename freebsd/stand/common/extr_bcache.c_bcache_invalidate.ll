; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_bcache_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_bcache_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalidate blk %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcache*, i32)* @bcache_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcache_invalidate(%struct.bcache* %0, i32 %1) #0 {
  %3 = alloca %struct.bcache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bcache* %0, %struct.bcache** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcache*, %struct.bcache** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @BHASH(%struct.bcache* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.bcache*, %struct.bcache** %3, align 8
  %10 = getelementptr inbounds %struct.bcache, %struct.bcache* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.bcache*, %struct.bcache** %3, align 8
  %20 = getelementptr inbounds %struct.bcache, %struct.bcache* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.bcache*, %struct.bcache** %3, align 8
  %26 = getelementptr inbounds %struct.bcache, %struct.bcache* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %18, %2
  ret void
}

declare dso_local i64 @BHASH(%struct.bcache*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
