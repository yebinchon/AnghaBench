; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dojobs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dojobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.process* }
%struct.process = type { i32, i64, i64, i32, %struct.process* }
%struct.command = type { i32 }

@NUMBER = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@REASON = common dso_local global i32 0, align 4
@JOBLIST = common dso_local global i32 0, align 4
@chkstop = common dso_local global i32 0, align 4
@STRml = common dso_local global i32 0, align 4
@ERR_JOBS = common dso_local global i32 0, align 4
@FANCY = common dso_local global i32 0, align 4
@JOBDIR = common dso_local global i32 0, align 4
@pmaxindex = common dso_local global i32 0, align 4
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PNEEDNOTE = common dso_local global i32 0, align 4
@PRUNNING = common dso_local global i32 0, align 4
@PSTOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dojobs(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %8 = load i32, i32* @NUMBER, align 4
  %9 = load i32, i32* @NAME, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @REASON, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @JOBLIST, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.command*, %struct.command** %4, align 8
  %16 = call i32 @USE(%struct.command* %15)
  %17 = load i32, i32* @chkstop, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 2, i32* @chkstop, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32**, i32*** %3, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %22, i32*** %3, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32**, i32*** %3, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i32**, i32*** %3, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @STRml, align 4
  %34 = call i32 @eq(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* @ERR_JOBS, align 4
  %38 = call i32 @stderror(i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* @FANCY, align 4
  %41 = load i32, i32* @JOBDIR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %39, %20
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %94, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @pmaxindex, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %46
  %51 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %51, %struct.process** %5, align 8
  br label %52

52:                                               ; preds = %89, %50
  %53 = load %struct.process*, %struct.process** %5, align 8
  %54 = icmp ne %struct.process* %53, null
  br i1 %54, label %55, label %93

55:                                               ; preds = %52
  %56 = load %struct.process*, %struct.process** %5, align 8
  %57 = getelementptr inbounds %struct.process, %struct.process* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load %struct.process*, %struct.process** %5, align 8
  %63 = getelementptr inbounds %struct.process, %struct.process* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.process*, %struct.process** %5, align 8
  %66 = getelementptr inbounds %struct.process, %struct.process* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load i32, i32* @PNEEDNOTE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.process*, %struct.process** %5, align 8
  %73 = getelementptr inbounds %struct.process, %struct.process* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.process*, %struct.process** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pprint(%struct.process* %76, i32 %77)
  %79 = load i32, i32* @PRUNNING, align 4
  %80 = load i32, i32* @PSTOPPED, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %69
  %85 = load %struct.process*, %struct.process** %5, align 8
  %86 = call i32 @pflush(%struct.process* %85)
  br label %87

87:                                               ; preds = %84, %69
  br label %93

88:                                               ; preds = %61, %55
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.process*, %struct.process** %5, align 8
  %91 = getelementptr inbounds %struct.process, %struct.process* %90, i32 0, i32 4
  %92 = load %struct.process*, %struct.process** %91, align 8
  store %struct.process* %92, %struct.process** %5, align 8
  br label %52

93:                                               ; preds = %87, %52
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %46

97:                                               ; preds = %46
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @eq(i32*, i32) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @pprint(%struct.process*, i32) #1

declare dso_local i32 @pflush(%struct.process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
