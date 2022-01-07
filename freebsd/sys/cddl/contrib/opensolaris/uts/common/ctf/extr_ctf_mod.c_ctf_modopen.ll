; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/ctf/extr_ctf_mod.c_ctf_modopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/ctf/extr_ctf_mod.c_ctf_modopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.module = type { i64, i64, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i64, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c".SUNW_ctf\00", align 1
@SHT_PROGBITS = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@SHT_SYMTAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@SHT_STRTAB = common dso_local global i32 0, align 4
@mod_lock = common dso_local global i32 0, align 4
@ctf_leave_compressed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ctf_modopen(%struct.module* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* %10, i32** %5, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @SHT_PROGBITS, align 4
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 6
  store i32 %16, i32* %17, align 8
  %18 = load i64, i64* @SHF_ALLOC, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 5
  store i64 %18, i64* %19, align 8
  %20 = load %struct.module*, %struct.module** %4, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load %struct.module*, %struct.module** %4, align 8
  %25 = getelementptr inbounds %struct.module, %struct.module* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @SHT_SYMTAB, align 4
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.module*, %struct.module** %4, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.module*, %struct.module** %4, align 8
  %39 = getelementptr inbounds %struct.module, %struct.module* %38, i32 0, i32 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  store i32 4, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @SHT_STRTAB, align 4
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 6
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.module*, %struct.module** %4, align 8
  %51 = getelementptr inbounds %struct.module, %struct.module* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load %struct.module*, %struct.module** %4, align 8
  %55 = getelementptr inbounds %struct.module, %struct.module* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = call i32 @MUTEX_HELD(i32* @mod_lock)
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call %struct.TYPE_15__* @ctf_bufopen(%struct.TYPE_14__* %6, %struct.TYPE_14__* %7, %struct.TYPE_14__* %8, i32* %64)
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %9, align 8
  %66 = icmp eq %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %14
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %102

68:                                               ; preds = %14
  %69 = load i32, i32* @ctf_leave_compressed, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.module*, %struct.module** %4, align 8
  %76 = getelementptr inbounds %struct.module, %struct.module* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %71
  %80 = load %struct.module*, %struct.module** %4, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @kobj_set_ctf(%struct.module* %80, i64 %83, i32 %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %79, %71, %68
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %3, align 8
  br label %102

102:                                              ; preds = %100, %67
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %103
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_15__* @ctf_bufopen(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @kobj_set_ctf(%struct.module*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
