; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.pfctl = type { i32*, i32*, i32 }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@pf_timeouts = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Bad timeout name.\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"set timeout %s %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_set_timeout(%struct.pfctl* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @loadopt, align 4
  %12 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %58, %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %61

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @strcasecmp(i8* %26, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %38 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  store i32 %36, i32* %46, align 4
  %47 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %48 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  store i32 1, i32* %56, align 4
  br label %61

57:                                               ; preds = %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %17

61:                                               ; preds = %35, %17
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_timeouts, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %86

71:                                               ; preds = %61
  %72 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %73 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78, %71
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %69, %15
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @strcasecmp(i8*, i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
