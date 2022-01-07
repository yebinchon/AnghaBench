; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_cmd_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_cmd_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { i32*, %struct.wordent*, %struct.wordent* }
%struct.varent = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@STRret = common dso_local global i32* null, align 8
@aliases = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%S: \09 aliased to \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_expand(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [3 x %struct.wordent], align 16
  %6 = alloca %struct.varent*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 1
  %10 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.wordent, %struct.wordent* %10, i32 0, i32 2
  store %struct.wordent* %9, %struct.wordent** %11, align 16
  %12 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 2
  %13 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 1
  %14 = getelementptr inbounds %struct.wordent, %struct.wordent* %13, i32 0, i32 2
  store %struct.wordent* %12, %struct.wordent** %14, align 8
  %15 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 0
  %16 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 2
  %17 = getelementptr inbounds %struct.wordent, %struct.wordent* %16, i32 0, i32 2
  store %struct.wordent* %15, %struct.wordent** %17, align 16
  %18 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 2
  %19 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.wordent, %struct.wordent* %19, i32 0, i32 1
  store %struct.wordent* %18, %struct.wordent** %20, align 8
  %21 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 1
  %23 = getelementptr inbounds %struct.wordent, %struct.wordent* %22, i32 0, i32 1
  store %struct.wordent* %21, %struct.wordent** %23, align 8
  %24 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 1
  %25 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 2
  %26 = getelementptr inbounds %struct.wordent, %struct.wordent* %25, i32 0, i32 1
  store %struct.wordent* %24, %struct.wordent** %26, align 8
  %27 = load i32*, i32** @STRNULL, align 8
  %28 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.wordent, %struct.wordent* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 16
  %30 = load i32*, i32** @STRret, align 8
  %31 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 2
  %32 = getelementptr inbounds %struct.wordent, %struct.wordent* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 16
  %33 = load i32*, i32** %3, align 8
  %34 = call %struct.varent* @adrof1(i32* %33, i32* @aliases)
  store %struct.varent* %34, %struct.varent** %6, align 8
  %35 = icmp ne %struct.varent* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %2
  %37 = load %struct.varent*, %struct.varent** %6, align 8
  %38 = getelementptr inbounds %struct.varent, %struct.varent* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i32**, i32*** %4, align 8
  %43 = icmp eq i32** %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = call i32 @CGETS(i32 22, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @xprintf(i32 %45, i32* %46)
  %48 = load %struct.varent*, %struct.varent** %6, align 8
  %49 = getelementptr inbounds %struct.varent, %struct.varent* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @blkpr(i32* %50)
  %52 = call i32 @xputchar(i8 signext 10)
  br label %59

53:                                               ; preds = %41
  %54 = load %struct.varent*, %struct.varent** %6, align 8
  %55 = getelementptr inbounds %struct.varent, %struct.varent* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32* @blkexpand(i32* %56)
  %58 = load i32**, i32*** %4, align 8
  store i32* %57, i32** %58, align 8
  br label %59

59:                                               ; preds = %53, %44
  br label %67

60:                                               ; preds = %36, %2
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 1
  %63 = getelementptr inbounds %struct.wordent, %struct.wordent* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = getelementptr inbounds [3 x %struct.wordent], [3 x %struct.wordent]* %5, i64 0, i64 0
  %65 = load i32**, i32*** %4, align 8
  %66 = call i32 @tellmewhat(%struct.wordent* %64, i32** %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %59
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.varent* @adrof1(i32*, i32*) #1

declare dso_local i32 @xprintf(i32, i32*) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @blkpr(i32*) #1

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32* @blkexpand(i32*) #1

declare dso_local i32 @tellmewhat(%struct.wordent*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
