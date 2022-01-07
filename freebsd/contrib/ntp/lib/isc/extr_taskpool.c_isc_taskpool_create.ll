; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_taskpool.c_isc_taskpool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_taskpool.c_isc_taskpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"taskpool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_taskpool_create(i32* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_5__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ugt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @INSIST(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @alloc_pool(i32* %19, i32* %20, i32 %21, i32 %22, %struct.TYPE_5__** %13)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @ISC_R_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %6, align 8
  br label %66

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i64 @isc_task_create(i32* %35, i32 %36, i32* %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @ISC_R_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = call i32 @isc_taskpool_destroy(%struct.TYPE_5__** %13)
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %6, align 8
  br label %66

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @isc_task_setname(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %30

62:                                               ; preds = %30
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %64, align 8
  %65 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %62, %47, %27
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @alloc_pool(i32*, i32*, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @isc_task_create(i32*, i32, i32*) #1

declare dso_local i32 @isc_taskpool_destroy(%struct.TYPE_5__**) #1

declare dso_local i32 @isc_task_setname(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
