; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgetwln.c_fgetwln_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgetwln.c_fgetwln_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@__SERR = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@GROW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fgetwln_l(%struct.TYPE_10__* noalias %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @FIX_LOCALE(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i32 @ORIENT(%struct.TYPE_10__* %15, i32 1)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @__SERR, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @__SERR, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %68, %3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__fgetwc(%struct.TYPE_10__* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @WEOF, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = mul i64 %35, 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %36, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 512
  %46 = mul i64 %45, 4
  %47 = call i64 @__slbexpand(%struct.TYPE_10__* %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @__SERR, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %94

55:                                               ; preds = %42, %34
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %56, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %69

68:                                               ; preds = %55
  br label %28

69:                                               ; preds = %67, %28
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = call i64 @__sferror(%struct.TYPE_10__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %94

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %94

83:                                               ; preds = %74
  %84 = load i64, i64* %9, align 8
  %85 = load i64*, i64** %5, align 8
  store i64 %84, i64* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %94, %83
  %92 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %93 = load i32*, i32** %7, align 8
  ret i32* %93

94:                                               ; preds = %82, %73, %49
  %95 = load i64*, i64** %5, align 8
  store i64 0, i64* %95, align 8
  store i32* null, i32** %7, align 8
  br label %91
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_10__*) #1

declare dso_local i32 @ORIENT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @__fgetwc(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @__slbexpand(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @__sferror(%struct.TYPE_10__*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
