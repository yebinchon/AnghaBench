; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_pushclosure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lvm.c_pushclosure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32**, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32**, i64, i64)* @pushclosure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushclosure(i32* %0, %struct.TYPE_12__* %1, i32** %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.TYPE_13__* @luaF_newLclosure(i32* %21, i32 %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %14, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = call i32 @setclLvalue(i32* %28, i64 %29, %struct.TYPE_13__* %30)
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %80, %5
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %46, %52
  %54 = call i32* @luaF_findupval(i32* %45, i64 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* %54, i32** %61, align 8
  br label %79

62:                                               ; preds = %36
  %63 = load i32**, i32*** %8, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32*, i32** %63, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %71, i32** %78, align 8
  br label %79

79:                                               ; preds = %62, %44
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %32

83:                                               ; preds = %32
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %87 = call i32 @luaC_barrierproto(i32* %84, %struct.TYPE_12__* %85, %struct.TYPE_13__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %90, align 8
  ret void
}

declare dso_local %struct.TYPE_13__* @luaF_newLclosure(i32*, i32) #1

declare dso_local i32 @setclLvalue(i32*, i64, %struct.TYPE_13__*) #1

declare dso_local i32* @luaF_findupval(i32*, i64) #1

declare dso_local i32 @luaC_barrierproto(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
