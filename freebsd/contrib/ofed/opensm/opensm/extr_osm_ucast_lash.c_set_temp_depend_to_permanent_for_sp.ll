; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_set_temp_depend_to_permanent_for_sp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_set_temp_depend_to_permanent_for_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__****, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @set_temp_depend_to_permanent_for_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_temp_depend_to_permanent_for_sp(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_10__****, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %15, align 8
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__****, %struct.TYPE_10__***** %18, align 8
  store %struct.TYPE_10__**** %19, %struct.TYPE_10__***** %10, align 8
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @get_next_switch(%struct.TYPE_9__* %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %90, %4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %91

40:                                               ; preds = %36
  %41 = load %struct.TYPE_10__****, %struct.TYPE_10__***** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__***, %struct.TYPE_10__**** %41, i64 %43
  %45 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__**, %struct.TYPE_10__*** %45, i64 %47
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %13, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @CL_ASSERT(i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %40
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %68

65:                                               ; preds = %40
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %68
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @get_next_switch(%struct.TYPE_9__* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %85, %68
  br label %36

91:                                               ; preds = %36
  ret void
}

declare dso_local i32 @get_next_switch(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
