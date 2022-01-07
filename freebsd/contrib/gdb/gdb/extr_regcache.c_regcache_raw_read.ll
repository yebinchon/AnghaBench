; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@registers_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_raw_read(%struct.regcache* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.regcache*, %struct.regcache** %4, align 8
  %8 = icmp ne %struct.regcache* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ false, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.regcache*, %struct.regcache** %4, align 8
  %21 = getelementptr inbounds %struct.regcache, %struct.regcache* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br label %26

26:                                               ; preds = %18, %12
  %27 = phi i1 [ false, %12 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @gdb_assert(i32 %28)
  %30 = load %struct.regcache*, %struct.regcache** %4, align 8
  %31 = getelementptr inbounds %struct.regcache, %struct.regcache* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load %struct.regcache*, %struct.regcache** %4, align 8
  %38 = getelementptr inbounds %struct.regcache, %struct.regcache* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load %struct.regcache*, %struct.regcache** %4, align 8
  %43 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  %44 = icmp eq %struct.regcache* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @gdb_assert(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @legacy_read_register_gen(i32 %47, i8* %48)
  br label %91

50:                                               ; preds = %36, %26
  %51 = load %struct.regcache*, %struct.regcache** %4, align 8
  %52 = getelementptr inbounds %struct.regcache, %struct.regcache* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %50
  %56 = load %struct.regcache*, %struct.regcache** %4, align 8
  %57 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  %58 = icmp eq %struct.regcache* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @gdb_assert(i32 %59)
  %61 = load i32, i32* @registers_ptid, align 4
  %62 = load i32, i32* @inferior_ptid, align 4
  %63 = call i32 @ptid_equal(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = call i32 (...) @registers_changed()
  %67 = load i32, i32* @inferior_ptid, align 4
  store i32 %67, i32* @registers_ptid, align 4
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @register_cached(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @target_fetch_registers(i32 %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %50
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.regcache*, %struct.regcache** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @register_buffer(%struct.regcache* %78, i32 %79)
  %81 = load %struct.regcache*, %struct.regcache** %4, align 8
  %82 = getelementptr inbounds %struct.regcache, %struct.regcache* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i8* %77, i32 %80, i32 %89)
  br label %91

91:                                               ; preds = %76, %41
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @legacy_read_register_gen(i32, i8*) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @register_cached(i32) #1

declare dso_local i32 @target_fetch_registers(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @register_buffer(%struct.regcache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
