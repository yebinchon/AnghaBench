; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_initpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_initpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@initialize_pair = common dso_local global i32* null, align 8
@TRACE_ATTRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"initializing pair: pair = %d, fg=(%d,%d,%d), bg=(%d,%d,%d)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"initialize_pair\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @drv_initpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_initpair(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @AssertTCB()
  %13 = call i32 (...) @SetSP()
  %14 = load i32*, i32** @initialize_pair, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %111

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @InPalette(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %111

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @InPalette(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %111

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = call %struct.TYPE_3__* @InfoOf(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %10, align 8
  %30 = load i32, i32* @TRACE_ATTRS, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @TR(i32 %30, i8* %69)
  %71 = load i32*, i32** @initialize_pair, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @TPARM_7(i32* %71, i32 %72, i32 %78, i32 %84, i32 %90, i32 %96, i32 %102, i32 %108)
  %110 = call i32 @NCURSES_PUTP2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %24, %20, %16, %4
  ret void
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @SetSP(...) #1

declare dso_local i64 @InPalette(i32) #1

declare dso_local %struct.TYPE_3__* @InfoOf(i32*) #1

declare dso_local i32 @TR(i32, i8*) #1

declare dso_local i32 @NCURSES_PUTP2(i8*, i32) #1

declare dso_local i32 @TPARM_7(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
