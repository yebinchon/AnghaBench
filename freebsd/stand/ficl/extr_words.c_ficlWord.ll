; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlWord.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64* }

@nPAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ficlWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ficlWord(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  %10 = call i64 (...) @POPINT()
  %11 = trunc i64 %10 to i8
  store i8 %11, i8* %4, align 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = load i8, i8* %4, align 1
  %14 = call i32 @vmParseStringEx(%struct.TYPE_7__* %12, i8 signext %13, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @SI_COUNT(i32 %15)
  %17 = load i32, i32* @nPAD, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @nPAD, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @SI_SETLEN(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SI_COUNT(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SI_PTR(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @SI_COUNT(i32 %36)
  %38 = call i32 @strncpy(i64* %33, i32 %35, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @strcat(i64* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = call i32 @PUSHPTR(%struct.TYPE_8__* %50)
  ret void
}

declare dso_local i64 @POPINT(...) #1

declare dso_local i32 @vmParseStringEx(%struct.TYPE_7__*, i8 signext, i32) #1

declare dso_local i32 @SI_COUNT(i32) #1

declare dso_local i32 @SI_SETLEN(i32, i32) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

declare dso_local i32 @SI_PTR(i32) #1

declare dso_local i32 @strcat(i64*, i8*) #1

declare dso_local i32 @PUSHPTR(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
