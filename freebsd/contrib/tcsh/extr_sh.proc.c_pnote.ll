; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pnote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pnote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.process* }
%struct.process = type { i32, %struct.process* }

@neednote = common dso_local global i64 0, align 8
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PNEEDNOTE = common dso_local global i32 0, align 4
@pchild_disabled = common dso_local global i32 0, align 4
@disabled_cleanup = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@REASON = common dso_local global i32 0, align 4
@PRUNNING = common dso_local global i32 0, align 4
@PSTOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnote() #0 {
  %1 = alloca %struct.process*, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* @neednote, align 8
  %3 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %3, %struct.process** %1, align 8
  br label %4

4:                                                ; preds = %44, %0
  %5 = load %struct.process*, %struct.process** %1, align 8
  %6 = icmp ne %struct.process* %5, null
  br i1 %6, label %7, label %48

7:                                                ; preds = %4
  %8 = load %struct.process*, %struct.process** %1, align 8
  %9 = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PNEEDNOTE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %7
  %15 = load i32, i32* @pchild_disabled, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @pchild_disabled, align 4
  %17 = load i32, i32* @disabled_cleanup, align 4
  %18 = call i32 @cleanup_push(i32* @pchild_disabled, i32 %17)
  %19 = load i32, i32* @PNEEDNOTE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.process*, %struct.process** %1, align 8
  %22 = getelementptr inbounds %struct.process, %struct.process* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.process*, %struct.process** %1, align 8
  %26 = load i32, i32* @NUMBER, align 4
  %27 = load i32, i32* @NAME, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @REASON, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @pprint(%struct.process* %25, i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @PRUNNING, align 4
  %34 = load i32, i32* @PSTOPPED, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %14
  %39 = load %struct.process*, %struct.process** %1, align 8
  %40 = call i32 @pflush(%struct.process* %39)
  br label %41

41:                                               ; preds = %38, %14
  %42 = call i32 @cleanup_until(i32* @pchild_disabled)
  br label %43

43:                                               ; preds = %41, %7
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.process*, %struct.process** %1, align 8
  %46 = getelementptr inbounds %struct.process, %struct.process* %45, i32 0, i32 1
  %47 = load %struct.process*, %struct.process** %46, align 8
  store %struct.process* %47, %struct.process** %1, align 8
  br label %4

48:                                               ; preds = %4
  ret void
}

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @pprint(%struct.process*, i32) #1

declare dso_local i32 @pflush(%struct.process*) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
