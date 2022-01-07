; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_bre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_bre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OBOL = common dso_local global i32 0, align 4
@USEBOL = common dso_local global i32 0, align 4
@OEOL = common dso_local global i32 0, align 4
@USEEOL = common dso_local global i32 0, align 4
@REG_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32, i32)* @p_bre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_bre(%struct.parse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i64 (...) @HERE()
  store i64 %10, i64* %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i64 @EAT(i8 signext 94)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32, i32* @OBOL, align 4
  %15 = call i32 @EMIT(i32 %14, i32 0)
  %16 = load i32, i32* @USEBOL, align 4
  %17 = load %struct.parse*, %struct.parse** %4, align 8
  %18 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.parse*, %struct.parse** %4, align 8
  %24 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %13, %3
  br label %30

30:                                               ; preds = %41, %29
  %31 = call i64 (...) @MORE()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @SEETWO(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load %struct.parse*, %struct.parse** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @p_simp_re(%struct.parse* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %30

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = call i32 @DROP(i32 1)
  %50 = load i32, i32* @OEOL, align 4
  %51 = call i32 @EMIT(i32 %50, i32 0)
  %52 = load i32, i32* @USEEOL, align 4
  %53 = load %struct.parse*, %struct.parse** %4, align 8
  %54 = getelementptr inbounds %struct.parse, %struct.parse* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load %struct.parse*, %struct.parse** %4, align 8
  %60 = getelementptr inbounds %struct.parse, %struct.parse* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %48, %45
  %66 = call i64 (...) @HERE()
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @REG_EMPTY, align 4
  %71 = call i32 @REQUIRE(i32 %69, i32 %70)
  ret void
}

declare dso_local i64 @HERE(...) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i64 @MORE(...) #1

declare dso_local i32 @SEETWO(i32, i32) #1

declare dso_local i32 @p_simp_re(%struct.parse*, i32) #1

declare dso_local i32 @DROP(i32) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
