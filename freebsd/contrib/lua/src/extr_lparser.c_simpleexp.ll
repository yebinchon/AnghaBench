; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_simpleexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lparser.c_simpleexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }

@VKFLT = common dso_local global i32 0, align 4
@VKINT = common dso_local global i32 0, align 4
@VNIL = common dso_local global i32 0, align 4
@VTRUE = common dso_local global i32 0, align 4
@VFALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot use '...' outside a vararg function\00", align 1
@VVARARG = common dso_local global i32 0, align 4
@OP_VARARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*)* @simpleexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simpleexp(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %6 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %85 [
    i32 133, label %10
    i32 131, label %22
    i32 129, label %34
    i32 130, label %43
    i32 128, label %47
    i32 134, label %51
    i32 135, label %55
    i32 123, label %72
    i32 132, label %76
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = load i32, i32* @VKFLT, align 4
  %13 = call i32 @init_exp(%struct.TYPE_26__* %11, i32 %12, i32 0)
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  br label %89

22:                                               ; preds = %2
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = load i32, i32* @VKINT, align 4
  %25 = call i32 @init_exp(%struct.TYPE_26__* %23, i32 %24, i32 0)
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %89

34:                                               ; preds = %2
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @codestring(%struct.TYPE_27__* %35, %struct.TYPE_26__* %36, i32 %41)
  br label %89

43:                                               ; preds = %2
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %45 = load i32, i32* @VNIL, align 4
  %46 = call i32 @init_exp(%struct.TYPE_26__* %44, i32 %45, i32 0)
  br label %89

47:                                               ; preds = %2
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = load i32, i32* @VTRUE, align 4
  %50 = call i32 @init_exp(%struct.TYPE_26__* %48, i32 %49, i32 0)
  br label %89

51:                                               ; preds = %2
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = load i32, i32* @VFALSE, align 4
  %54 = call i32 @init_exp(%struct.TYPE_26__* %52, i32 %53, i32 0)
  br label %89

55:                                               ; preds = %2
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %57, align 8
  store %struct.TYPE_28__* %58, %struct.TYPE_28__** %5, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @check_condition(%struct.TYPE_27__* %59, i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %67 = load i32, i32* @VVARARG, align 4
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = load i32, i32* @OP_VARARG, align 4
  %70 = call i32 @luaK_codeABC(%struct.TYPE_28__* %68, i32 %69, i32 0, i32 1, i32 0)
  %71 = call i32 @init_exp(%struct.TYPE_26__* %66, i32 %67, i32 %70)
  br label %89

72:                                               ; preds = %2
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %75 = call i32 @constructor(%struct.TYPE_27__* %73, %struct.TYPE_26__* %74)
  br label %92

76:                                               ; preds = %2
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %78 = call i32 @luaX_next(%struct.TYPE_27__* %77)
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @body(%struct.TYPE_27__* %79, %struct.TYPE_26__* %80, i32 0, i32 %83)
  br label %92

85:                                               ; preds = %2
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = call i32 @suffixedexp(%struct.TYPE_27__* %86, %struct.TYPE_26__* %87)
  br label %92

89:                                               ; preds = %55, %51, %47, %43, %34, %22, %10
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %91 = call i32 @luaX_next(%struct.TYPE_27__* %90)
  br label %92

92:                                               ; preds = %89, %85, %76, %72
  ret void
}

declare dso_local i32 @init_exp(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @codestring(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @check_condition(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @constructor(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @luaX_next(%struct.TYPE_27__*) #1

declare dso_local i32 @body(%struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @suffixedexp(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
