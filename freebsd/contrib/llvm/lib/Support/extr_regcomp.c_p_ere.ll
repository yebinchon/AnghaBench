; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_ere.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_ere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }

@REG_EMPTY = common dso_local global i32 0, align 4
@OCH_ = common dso_local global i32 0, align 4
@OOR1 = common dso_local global i32 0, align 4
@OOR2 = common dso_local global i32 0, align 4
@O_CH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32)* @p_ere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_ere(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = call i64 (...) @HERE()
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %26, %10
  %13 = call i64 (...) @MORE()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = call signext i8 (...) @PEEK()
  store i8 %16, i8* %5, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 124
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %19, %15, %12
  %25 = phi i1 [ false, %15 ], [ false, %12 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load %struct.parse*, %struct.parse** %3, align 8
  %28 = call i32 @p_ere_exp(%struct.parse* %27)
  br label %12

29:                                               ; preds = %24
  %30 = call i64 (...) @HERE()
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @REG_EMPTY, align 4
  %35 = call i32 @REQUIRE(i32 %33, i32 %34)
  %36 = call i32 @EAT(i8 signext 124)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %58

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @OCH_, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @INSERT(i32 %43, i64 %44)
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* @OOR1, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @ASTERN(i32 %49, i64 %50)
  %52 = call i64 (...) @THERE()
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @AHEAD(i64 %53)
  %55 = call i64 (...) @HERE()
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* @OOR2, align 4
  %57 = call i32 @EMIT(i32 %56, i32 0)
  br label %10

58:                                               ; preds = %38
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @AHEAD(i64 %62)
  %64 = load i32, i32* @O_CH, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @ASTERN(i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = call i64 (...) @MORE()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @SEE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ true, %67 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  ret void
}

declare dso_local i64 @HERE(...) #1

declare dso_local i64 @MORE(...) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i32 @p_ere_exp(%struct.parse*) #1

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
