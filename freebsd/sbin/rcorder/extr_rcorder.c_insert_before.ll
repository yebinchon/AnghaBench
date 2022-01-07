; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_insert_before.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/rcorder/extr_rcorder.c_insert_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i64, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i32* }

@bl_list = common dso_local global %struct.TYPE_11__* null, align 8
@provide_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"file `%s' is before unknown provision `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @insert_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_before() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  br label %7

7:                                                ; preds = %68, %0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %72

10:                                               ; preds = %7
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = call i32* @make_fake_provision(%struct.TYPE_14__* %16)
  store i32* %17, i32** %2, align 8
  %18 = load i32, i32* @provide_hash, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @Hash_CreateEntry(i32 %18, i32 %21, i32* %6)
  store i32* %22, i32** %1, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %10
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %25, %10
  %36 = load i32*, i32** %1, align 8
  %37 = call %struct.TYPE_12__* @Hash_GetValue(i32* %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %3, align 8
  br label %38

38:                                               ; preds = %64, %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %64

47:                                               ; preds = %41
  %48 = call %struct.TYPE_13__* @emalloc(i32 16)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %4, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %63, align 8
  br label %64

64:                                               ; preds = %47, %46
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %3, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bl_list, align 8
  %70 = call i32 @free(%struct.TYPE_11__* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** @bl_list, align 8
  br label %7

72:                                               ; preds = %7
  ret void
}

declare dso_local i32* @make_fake_provision(%struct.TYPE_14__*) #1

declare dso_local i32* @Hash_CreateEntry(i32, i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @Hash_GetValue(i32*) #1

declare dso_local %struct.TYPE_13__* @emalloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
