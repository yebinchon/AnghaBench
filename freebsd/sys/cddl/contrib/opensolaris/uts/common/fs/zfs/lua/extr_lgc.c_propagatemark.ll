; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_propagatemark.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lgc.c_propagatemark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32*, i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_25__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @propagatemark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagatemark(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @isgray(i32* %13)
  %15 = call i32 @lua_assert(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @gray2black(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_25__* @gch(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %87 [
    i32 129, label %22
    i32 131, label %33
    i32 132, label %44
    i32 128, label %55
    i32 130, label %76
  ]

22:                                               ; preds = %1
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_27__* @gco2t(i32* %23)
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %5, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %32 = call i64 @traversetable(%struct.TYPE_26__* %30, %struct.TYPE_27__* %31)
  store i64 %32, i64* %3, align 8
  br label %89

33:                                               ; preds = %1
  %34 = load i32*, i32** %4, align 8
  %35 = call %struct.TYPE_29__* @gco2lcl(i32* %34)
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %6, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %43 = call i64 @traverseLclosure(%struct.TYPE_26__* %41, %struct.TYPE_29__* %42)
  store i64 %43, i64* %3, align 8
  br label %89

44:                                               ; preds = %1
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_30__* @gco2ccl(i32* %45)
  store %struct.TYPE_30__* %46, %struct.TYPE_30__** %7, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %54 = call i64 @traverseCclosure(%struct.TYPE_26__* %52, %struct.TYPE_30__* %53)
  store i64 %54, i64* %3, align 8
  br label %89

55:                                               ; preds = %1
  %56 = load i32*, i32** %4, align 8
  %57 = call %struct.TYPE_24__* @gco2th(i32* %56)
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %8, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @black2gray(i32* %71)
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %75 = call i64 @traversestack(%struct.TYPE_26__* %73, %struct.TYPE_24__* %74)
  store i64 %75, i64* %3, align 8
  br label %89

76:                                               ; preds = %1
  %77 = load i32*, i32** %4, align 8
  %78 = call %struct.TYPE_28__* @gco2p(i32* %77)
  store %struct.TYPE_28__* %78, %struct.TYPE_28__** %9, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %86 = call i64 @traverseproto(%struct.TYPE_26__* %84, %struct.TYPE_28__* %85)
  store i64 %86, i64* %3, align 8
  br label %89

87:                                               ; preds = %1
  %88 = call i32 @lua_assert(i32 0)
  br label %97

89:                                               ; preds = %76, %55, %44, %33, %22
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  br label %97

97:                                               ; preds = %89, %87
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isgray(i32*) #1

declare dso_local i32 @gray2black(i32*) #1

declare dso_local %struct.TYPE_25__* @gch(i32*) #1

declare dso_local %struct.TYPE_27__* @gco2t(i32*) #1

declare dso_local i64 @traversetable(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @gco2lcl(i32*) #1

declare dso_local i64 @traverseLclosure(%struct.TYPE_26__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @gco2ccl(i32*) #1

declare dso_local i64 @traverseCclosure(%struct.TYPE_26__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_24__* @gco2th(i32*) #1

declare dso_local i32 @black2gray(i32*) #1

declare dso_local i64 @traversestack(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_28__* @gco2p(i32*) #1

declare dso_local i64 @traverseproto(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
