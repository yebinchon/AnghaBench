; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_ltable.c_luaH_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_ltable.c_luaH_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaH_next(i32* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @findindex(i32* %9, %struct.TYPE_6__* %10, i64 %11)
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @ttisnil(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  %32 = call i32 @setivalue(i64 %29, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @setobj2s(i32* %33, i64 %35, i32* %41)
  store i32 1, i32* %4, align 4
  br label %87

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %83, %47
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @cast_int(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = call i64 @sizenode(%struct.TYPE_6__* %56)
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @gnode(%struct.TYPE_6__* %60, i32 %61)
  %63 = call i32* @gval(i32 %62)
  %64 = call i32 @ttisnil(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @gnode(%struct.TYPE_6__* %69, i32 %70)
  %72 = call i32* @gkey(i32 %71)
  %73 = call i32 @setobj2s(i32* %67, i64 %68, i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @gnode(%struct.TYPE_6__* %77, i32 %78)
  %80 = call i32* @gval(i32 %79)
  %81 = call i32 @setobj2s(i32* %74, i64 %76, i32* %80)
  store i32 1, i32* %4, align 4
  br label %87

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %53

86:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %66, %28
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @findindex(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32 @setivalue(i64, i32) #1

declare dso_local i32 @setobj2s(i32*, i64, i32*) #1

declare dso_local i64 @cast_int(i32) #1

declare dso_local i64 @sizenode(%struct.TYPE_6__*) #1

declare dso_local i32* @gval(i32) #1

declare dso_local i32 @gnode(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @gkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
