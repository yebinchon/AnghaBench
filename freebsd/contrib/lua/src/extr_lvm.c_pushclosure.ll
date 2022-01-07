; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lvm.c_pushclosure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lvm.c_pushclosure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__**, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.TYPE_12__**, i64, i64)* @pushclosure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushclosure(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__** %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.TYPE_14__* @luaF_newLclosure(i32* %21, i32 %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %14, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %30 = call i32 @setclLvalue(i32* %27, i64 %28, %struct.TYPE_14__* %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %87, %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %45, %51
  %53 = call %struct.TYPE_12__* @luaF_findupval(i32* %44, i64 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %56, i64 %58
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %59, align 8
  br label %76

60:                                               ; preds = %35
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %61, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %72, i64 %74
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %75, align 8
  br label %76

76:                                               ; preds = %60, %43
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %79, i64 %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %31

90:                                               ; preds = %31
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = call i32 @isblack(%struct.TYPE_13__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  ret void
}

declare dso_local %struct.TYPE_14__* @luaF_newLclosure(i32*, i32) #1

declare dso_local i32 @setclLvalue(i32*, i64, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @luaF_findupval(i32*, i64) #1

declare dso_local i32 @isblack(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
