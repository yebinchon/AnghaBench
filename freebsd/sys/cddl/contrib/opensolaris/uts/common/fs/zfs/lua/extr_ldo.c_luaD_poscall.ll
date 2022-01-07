; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_ldo.c_luaD_poscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_ldo.c_luaD_poscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@LUA_MASKRET = common dso_local global i32 0, align 4
@LUA_MASKLINE = common dso_local global i32 0, align 4
@LUA_HOOKRET = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaD_poscall(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LUA_MASKRET, align 4
  %17 = load i32, i32* @LUA_MASKLINE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LUA_MASKRET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @savestack(%struct.TYPE_12__* %29, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = load i32, i32* @LUA_HOOKRET, align 4
  %34 = call i32 @luaD_hook(%struct.TYPE_12__* %32, i32 %33, i32 -1)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @restorestack(%struct.TYPE_12__* %35, i32 %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %28, %21
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %38, %2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %5, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %8, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %59, align 8
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %81, %48
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br label %70

70:                                               ; preds = %64, %61
  %71 = phi i1 [ false, %61 ], [ %69, %64 ]
  br i1 %71, label %72, label %84

72:                                               ; preds = %70
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %5, align 8
  %76 = trunc i64 %74 to i32
  %77 = load i64, i64* %4, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %4, align 8
  %79 = trunc i64 %77 to i32
  %80 = call i32 @setobjs2s(%struct.TYPE_12__* %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %61

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %7, align 4
  %88 = icmp sgt i32 %86, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %5, align 8
  %92 = trunc i64 %90 to i32
  %93 = call i32 @setnilvalue(i32 %92)
  br label %85

94:                                               ; preds = %85
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @LUA_MULTRET, align 4
  %100 = sub nsw i32 %98, %99
  ret i32 %100
}

declare dso_local i32 @savestack(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @luaD_hook(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @restorestack(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @setnilvalue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
