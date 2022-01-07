; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_period_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_period_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@whyles = common dso_local global i64 0, align 8
@pintr_disabled = common dso_local global i32 0, align 4
@disabled_cleanup = common dso_local global i32 0, align 4
@periodic_active = common dso_local global i32 0, align 4
@STRunalias = common dso_local global i32* null, align 8
@STRperiodic = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Faulty alias 'periodic' removed.\0A\00", align 1
@aliases = common dso_local global i32 0, align 4
@STRtperiod = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@t_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @period_cmd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @whyles, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %54

7:                                                ; preds = %0
  %8 = load i32, i32* @pintr_disabled, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @pintr_disabled, align 4
  %10 = load i32, i32* @disabled_cleanup, align 4
  %11 = call i32 @cleanup_push(i32* @pintr_disabled, i32 %10)
  %12 = load i32, i32* @periodic_active, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load i32*, i32** @STRunalias, align 8
  %16 = load i32*, i32** @STRperiodic, align 8
  %17 = call i32 @aliasrun(i32 2, i32* %15, i32* %16)
  %18 = call i32 @CGETS(i32 22, i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %52

20:                                               ; preds = %7
  store i32 1, i32* @periodic_active, align 4
  %21 = load i64, i64* @whyles, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** @STRperiodic, align 8
  %25 = call i64 @adrof1(i32* %24, i32* @aliases)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i32, i32* @STRtperiod, align 4
  %29 = call i32* @varval(i32 %28)
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** @STRNULL, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** @STRperiodic, align 8
  %35 = call i32 @aliasrun(i32 1, i32* %34, i32* null)
  br label %52

36:                                               ; preds = %27
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @getn(i32* %37)
  store i32 %38, i32* %3, align 4
  %39 = call i32 @time(i32* %2)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @t_period, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = mul nsw i32 %43, 60
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %2, align 4
  store i32 %47, i32* @t_period, align 4
  %48 = load i32*, i32** @STRperiodic, align 8
  %49 = call i32 @aliasrun(i32 1, i32* %48, i32* null)
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50, %23, %20
  br label %52

52:                                               ; preds = %51, %33, %14
  store i32 0, i32* @periodic_active, align 4
  %53 = call i32 @cleanup_until(i32* @pintr_disabled)
  br label %54

54:                                               ; preds = %52, %6
  ret void
}

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @aliasrun(i32, i32*, i32*) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i64 @adrof1(i32*, i32*) #1

declare dso_local i32* @varval(i32) #1

declare dso_local i32 @getn(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
