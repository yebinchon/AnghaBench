; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_supply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64* }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@registers_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_raw_supply(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.regcache*, %struct.regcache** %4, align 8
  %10 = icmp ne %struct.regcache* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.regcache*, %struct.regcache** %4, align 8
  %18 = getelementptr inbounds %struct.regcache, %struct.regcache* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br label %23

23:                                               ; preds = %15, %3
  %24 = phi i1 [ false, %3 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load %struct.regcache*, %struct.regcache** %4, align 8
  %28 = getelementptr inbounds %struct.regcache, %struct.regcache* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @gdb_assert(i32 %32)
  %34 = load %struct.regcache*, %struct.regcache** %4, align 8
  %35 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  %36 = icmp eq %struct.regcache* %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load i32, i32* @registers_ptid, align 4
  %39 = load i32, i32* @inferior_ptid, align 4
  %40 = call i32 @ptid_equal(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = call i32 (...) @registers_changed()
  %44 = load i32, i32* @inferior_ptid, align 4
  store i32 %44, i32* @registers_ptid, align 4
  br label %45

45:                                               ; preds = %42, %37, %23
  %46 = load %struct.regcache*, %struct.regcache** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @register_buffer(%struct.regcache* %46, i32 %47)
  store i8* %48, i8** %7, align 8
  %49 = load %struct.regcache*, %struct.regcache** %4, align 8
  %50 = getelementptr inbounds %struct.regcache, %struct.regcache* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  br label %69

65:                                               ; preds = %45
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @memset(i8* %66, i32 0, i64 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.regcache*, %struct.regcache** %4, align 8
  %71 = getelementptr inbounds %struct.regcache, %struct.regcache* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 1, i32* %75, align 4
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i8* @register_buffer(%struct.regcache*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
