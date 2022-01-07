; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@current_regcache = common dso_local global %struct.regcache* null, align 8
@registers_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regcache_raw_write(%struct.regcache* %0, i32 %1, i8* %2) #0 {
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
  %21 = getelementptr inbounds %struct.regcache, %struct.regcache* %20, i32 0, i32 1
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
  %31 = getelementptr inbounds %struct.regcache, %struct.regcache* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @gdb_assert(i32 %35)
  %37 = load %struct.regcache*, %struct.regcache** %4, align 8
  %38 = getelementptr inbounds %struct.regcache, %struct.regcache* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %26
  %44 = load %struct.regcache*, %struct.regcache** %4, align 8
  %45 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  %46 = icmp eq %struct.regcache* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @gdb_assert(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @legacy_write_register_gen(i32 %49, i8* %50)
  br label %116

52:                                               ; preds = %26
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @CANNOT_STORE_REGISTER(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %116

57:                                               ; preds = %52
  %58 = load %struct.regcache*, %struct.regcache** %4, align 8
  %59 = load %struct.regcache*, %struct.regcache** @current_regcache, align 8
  %60 = icmp eq %struct.regcache* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @gdb_assert(i32 %61)
  %63 = load i32, i32* @registers_ptid, align 4
  %64 = load i32, i32* @inferior_ptid, align 4
  %65 = call i32 @ptid_equal(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = call i32 (...) @registers_changed()
  %69 = load i32, i32* @inferior_ptid, align 4
  store i32 %69, i32* @registers_ptid, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.regcache*, %struct.regcache** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @regcache_valid_p(%struct.regcache* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.regcache*, %struct.regcache** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @register_buffer(%struct.regcache* %76, i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.regcache*, %struct.regcache** %4, align 8
  %81 = getelementptr inbounds %struct.regcache, %struct.regcache* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @memcmp(i32 %78, i8* %79, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %116

92:                                               ; preds = %75, %70
  %93 = call i32 (...) @target_prepare_to_store()
  %94 = load %struct.regcache*, %struct.regcache** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @register_buffer(%struct.regcache* %94, i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.regcache*, %struct.regcache** %4, align 8
  %99 = getelementptr inbounds %struct.regcache, %struct.regcache* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32 %96, i8* %97, i32 %106)
  %108 = load %struct.regcache*, %struct.regcache** %4, align 8
  %109 = getelementptr inbounds %struct.regcache, %struct.regcache* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @target_store_registers(i32 %114)
  br label %116

116:                                              ; preds = %92, %91, %56, %43
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @legacy_write_register_gen(i32, i8*) #1

declare dso_local i64 @CANNOT_STORE_REGISTER(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i64 @regcache_valid_p(%struct.regcache*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @register_buffer(%struct.regcache*, i32) #1

declare dso_local i32 @target_prepare_to_store(...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @target_store_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
