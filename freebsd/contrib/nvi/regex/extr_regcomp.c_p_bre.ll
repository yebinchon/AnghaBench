; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_bre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_bre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RECLIMIT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@OBOL = common dso_local global i32 0, align 4
@USEBOL = common dso_local global i32 0, align 4
@OEOL = common dso_local global i32 0, align 4
@USEEOL = common dso_local global i32 0, align 4
@REG_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32, i32, i64)* @p_bre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_bre(%struct.parse* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.parse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @RECLIMIT, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.parse*, %struct.parse** %5, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_ESPACE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %4
  %24 = load i64, i64* @REG_ESPACE, align 8
  %25 = load %struct.parse*, %struct.parse** %5, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %91

27:                                               ; preds = %17
  %28 = call i64 (...) @HERE()
  store i64 %28, i64* %9, align 8
  %29 = call i64 @EAT(i8 signext 94)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, i32* @OBOL, align 4
  %33 = call i32 @EMIT(i32 %32, i32 0)
  %34 = load i32, i32* @USEBOL, align 4
  %35 = load %struct.parse*, %struct.parse** %5, align 8
  %36 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load %struct.parse*, %struct.parse** %5, align 8
  %42 = getelementptr inbounds %struct.parse, %struct.parse* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %31, %27
  br label %48

48:                                               ; preds = %59, %47
  %49 = call i64 (...) @MORE()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @SEETWO(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i1 [ false, %48 ], [ %56, %51 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = load %struct.parse*, %struct.parse** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @p_simp_re(%struct.parse* %60, i32 %61, i64 %62)
  store i32 %63, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %48

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = call i32 @DROP(i32 1)
  %69 = load i32, i32* @OEOL, align 4
  %70 = call i32 @EMIT(i32 %69, i32 0)
  %71 = load i32, i32* @USEEOL, align 4
  %72 = load %struct.parse*, %struct.parse** %5, align 8
  %73 = getelementptr inbounds %struct.parse, %struct.parse* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load %struct.parse*, %struct.parse** %5, align 8
  %79 = getelementptr inbounds %struct.parse, %struct.parse* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %67, %64
  %85 = call i64 (...) @HERE()
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* @REG_EMPTY, align 4
  %90 = call i32 @REQUIRE(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %23
  ret void
}

declare dso_local i64 @HERE(...) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i64 @MORE(...) #1

declare dso_local i32 @SEETWO(i32, i32) #1

declare dso_local i32 @p_simp_re(%struct.parse*, i32, i64) #1

declare dso_local i32 @DROP(i32) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
