; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_write_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_write_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_raw_write_unsigned(%struct.regcache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.regcache*, %struct.regcache** %4, align 8
  %9 = icmp ne %struct.regcache* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.regcache*, %struct.regcache** %4, align 8
  %17 = getelementptr inbounds %struct.regcache, %struct.regcache* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i1 [ false, %3 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @gdb_assert(i32 %24)
  %26 = load %struct.regcache*, %struct.regcache** %4, align 8
  %27 = getelementptr inbounds %struct.regcache, %struct.regcache* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @alloca(i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.regcache*, %struct.regcache** %4, align 8
  %38 = getelementptr inbounds %struct.regcache, %struct.regcache* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @store_unsigned_integer(i8* %36, i32 %45, i32 %46)
  %48 = load %struct.regcache*, %struct.regcache** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @regcache_raw_write(%struct.regcache* %48, i32 %49, i8* %50)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @regcache_raw_write(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
