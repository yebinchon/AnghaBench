; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_prop.c_dsl_prop_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32 (i8*, i32)*, %struct.TYPE_13__*, %struct.TYPE_16__* }

@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_prop_register(%struct.TYPE_16__* %0, i8* %1, i32 (i8*, i32)** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i32)**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i32)** %2, i32 (i8*, i32)*** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @dsl_pool_config_held(i32* %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @dsl_prop_get_int_ds(%struct.TYPE_16__* %25, i8* %26, i32* %12)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %80

32:                                               ; preds = %4
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call %struct.TYPE_14__* @kmem_alloc(i32 32, i32 %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %14, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %37, align 8
  %38 = load i32 (i8*, i32)**, i32 (i8*, i32)*** %8, align 8
  %39 = bitcast i32 (i8*, i32)** %38 to i32 (i8*, i32)*
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store i32 (i8*, i32)* %39, i32 (i8*, i32)** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = call i32 @mutex_enter(i32* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call %struct.TYPE_13__* @dsl_prop_record_find(%struct.TYPE_15__* %48, i8* %49)
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %13, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %52 = icmp eq %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %32
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct.TYPE_13__* @dsl_prop_record_create(%struct.TYPE_15__* %54, i8* %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %13, align 8
  br label %57

57:                                               ; preds = %53, %32
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %64 = call i32 @list_insert_head(i32* %62, %struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %68 = call i32 @list_insert_head(i32* %66, %struct.TYPE_14__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = call i32 @mutex_exit(i32* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32 (i8*, i32)*, i32 (i8*, i32)** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 %74(i8* %77, i32 %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %57, %30
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local i32 @dsl_prop_get_int_ds(%struct.TYPE_16__*, i8*, i32*) #1

declare dso_local %struct.TYPE_14__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_13__* @dsl_prop_record_find(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_13__* @dsl_prop_record_create(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
