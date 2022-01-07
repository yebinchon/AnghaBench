; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_ere.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_ere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64 }

@RECLIMIT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@REG_EMPTY = common dso_local global i32 0, align 4
@OCH_ = common dso_local global i32 0, align 4
@OOR1 = common dso_local global i32 0, align 4
@OOR2 = common dso_local global i32 0, align 4
@O_CH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32, i64)* @p_ere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_ere(%struct.parse* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %11, align 4
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @RECLIMIT, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.parse*, %struct.parse** %4, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_ESPACE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %3
  %24 = load i64, i64* @REG_ESPACE, align 8
  %25 = load %struct.parse*, %struct.parse** %4, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %97

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %67, %27
  %29 = call i64 (...) @HERE()
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %44, %28
  %31 = call i64 (...) @MORE()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = call signext i8 (...) @PEEK()
  store i8 %34, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 124
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br label %42

42:                                               ; preds = %37, %33, %30
  %43 = phi i1 [ false, %33 ], [ false, %30 ], [ %41, %37 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load %struct.parse*, %struct.parse** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @p_ere_exp(%struct.parse* %45, i64 %46)
  br label %30

48:                                               ; preds = %42
  %49 = call i64 (...) @HERE()
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @REG_EMPTY, align 4
  %54 = call i32 @REQUIRE(i32 %52, i32 %53)
  %55 = call i32 @EAT(i8 signext 124)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %77

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @OCH_, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @INSERT(i32 %62, i64 %63)
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* @OOR1, align 4
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @ASTERN(i32 %68, i64 %69)
  %71 = call i64 (...) @THERE()
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @AHEAD(i64 %72)
  %74 = call i64 (...) @HERE()
  store i64 %74, i64* %9, align 8
  %75 = load i32, i32* @OOR2, align 4
  %76 = call i32 @EMIT(i32 %75, i32 0)
  br label %28

77:                                               ; preds = %57
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @AHEAD(i64 %81)
  %83 = load i32, i32* @O_CH, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @ASTERN(i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = call i64 (...) @MORE()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @SEE(i32 %90)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ true, %86 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %97

97:                                               ; preds = %93, %23
  ret void
}

declare dso_local i64 @HERE(...) #1

declare dso_local i64 @MORE(...) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i32 @p_ere_exp(%struct.parse*, i64) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @EAT(i8 signext) #1

declare dso_local i32 @INSERT(i32, i64) #1

declare dso_local i32 @ASTERN(i32, i64) #1

declare dso_local i64 @THERE(...) #1

declare dso_local i32 @AHEAD(i64) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
