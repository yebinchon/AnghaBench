; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prscan.c_PrPopDirective.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prscan.c_PrPopDirective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }

@AslGbl_DirectiveStack = common dso_local global %struct.TYPE_4__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@AslGbl_IfDepth = common dso_local global i32 0, align 4
@AslGbl_IgnoringThisCodeBlock = common dso_local global i64 0, align 8
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Pr(%.4u) - [%u %s] %*s Popped [#%s %s]: IgnoreFlag now = %s\0A\00", align 1
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@AslGbl_DirectiveInfo = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @PrPopDirective to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrPopDirective() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AslGbl_DirectiveStack, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @AE_ERROR, align 4
  store i32 %7, i32* %1, align 4
  br label %42

8:                                                ; preds = %0
  %9 = load i32, i32* @AslGbl_IfDepth, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @AslGbl_IfDepth, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* @AslGbl_IgnoringThisCodeBlock, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** @AslGbl_DirectiveStack, align 8
  %17 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %18 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %19 = load i32, i32* @AslGbl_IfDepth, align 4
  %20 = load i64, i64* @AslGbl_IgnoringThisCodeBlock, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* @AslGbl_IfDepth, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AslGbl_DirectiveInfo, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @AslGbl_IgnoringThisCodeBlock, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %40 = call i32 @DbgPrint(i32 %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* %23, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %35, i8* %39)
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %8, %6
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @DbgPrint(i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
