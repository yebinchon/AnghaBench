; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_cpy_no_passthrough.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_cpy_no_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@current_regcache = common dso_local global %struct.regcache* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_cpy_no_passthrough(%struct.regcache* %0, %struct.regcache* %1) #0 {
  %3 = alloca %struct.regcache*, align 8
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %3, align 8
  store %struct.regcache* %1, %struct.regcache** %4, align 8
  %6 = load %struct.regcache*, %struct.regcache** %4, align 8
  %7 = icmp ne %struct.regcache* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.regcache*, %struct.regcache** %3, align 8
  %10 = icmp ne %struct.regcache* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load %struct.regcache*, %struct.regcache** %4, align 8
  %16 = getelementptr inbounds %struct.regcache, %struct.regcache* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.regcache*, %struct.regcache** %3, align 8
  %21 = getelementptr inbounds %struct.regcache, %struct.regcache* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @gdb_assert(i32 %26)
  %28 = load %struct.regcache*, %struct.regcache** %3, align 8
  %29 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  %30 = icmp ne %struct.regcache* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @gdb_assert(i32 %31)
  %33 = load %struct.regcache*, %struct.regcache** %3, align 8
  %34 = getelementptr inbounds %struct.regcache, %struct.regcache* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.regcache*, %struct.regcache** %4, align 8
  %37 = getelementptr inbounds %struct.regcache, %struct.regcache* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.regcache*, %struct.regcache** %3, align 8
  %40 = getelementptr inbounds %struct.regcache, %struct.regcache* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %35, i32 %38, i32 %43)
  %45 = load %struct.regcache*, %struct.regcache** %3, align 8
  %46 = getelementptr inbounds %struct.regcache, %struct.regcache* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.regcache*, %struct.regcache** %4, align 8
  %49 = getelementptr inbounds %struct.regcache, %struct.regcache* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.regcache*, %struct.regcache** %3, align 8
  %52 = getelementptr inbounds %struct.regcache, %struct.regcache* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memcpy(i32 %47, i32 %50, i32 %55)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
