; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i32, i32, %struct.process* }

@pchild_disabled = common dso_local global i32 0, align 4
@disabled_cleanup = common dso_local global i32 0, align 4
@PRUNNING = common dso_local global i32 0, align 4
@PSTOPPED = common dso_local global i32 0, align 4
@PFOREGND = common dso_local global i32 0, align 4
@NAME = common dso_local global i32 0, align 4
@JOBDIR = common dso_local global i32 0, align 4
@NUMBER = common dso_local global i32 0, align 4
@AMPERSAND = common dso_local global i32 0, align 4
@FSHTTY = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstart(%struct.process* %0, i32 %1) #0 {
  %3 = alloca %struct.process*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.process*, align 8
  store %struct.process* %0, %struct.process** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @pchild_disabled, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @pchild_disabled, align 4
  %9 = load i32, i32* @disabled_cleanup, align 4
  %10 = call i32 @cleanup_push(i32* @pchild_disabled, i32 %9)
  %11 = load %struct.process*, %struct.process** %3, align 8
  store %struct.process* %11, %struct.process** %6, align 8
  br label %12

12:                                               ; preds = %50, %2
  %13 = load %struct.process*, %struct.process** %6, align 8
  %14 = getelementptr inbounds %struct.process, %struct.process* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PRUNNING, align 4
  %17 = load i32, i32* @PSTOPPED, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %12
  %22 = load i32, i32* @PRUNNING, align 4
  %23 = load %struct.process*, %struct.process** %6, align 8
  %24 = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @PSTOPPED, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.process*, %struct.process** %6, align 8
  %30 = getelementptr inbounds %struct.process, %struct.process* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @PFOREGND, align 4
  %37 = load %struct.process*, %struct.process** %6, align 8
  %38 = getelementptr inbounds %struct.process, %struct.process* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %48

41:                                               ; preds = %21
  %42 = load i32, i32* @PFOREGND, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.process*, %struct.process** %6, align 8
  %45 = getelementptr inbounds %struct.process, %struct.process* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %12
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.process*, %struct.process** %6, align 8
  %52 = getelementptr inbounds %struct.process, %struct.process* %51, i32 0, i32 3
  %53 = load %struct.process*, %struct.process** %52, align 8
  store %struct.process* %53, %struct.process** %6, align 8
  %54 = load %struct.process*, %struct.process** %3, align 8
  %55 = icmp ne %struct.process* %53, %54
  br i1 %55, label %12, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.process*, %struct.process** %3, align 8
  %61 = call i32 @pclrcurr(%struct.process* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.process*, %struct.process** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @NAME, align 4
  %68 = load i32, i32* @JOBDIR, align 4
  %69 = or i32 %67, %68
  br label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @NUMBER, align 4
  %72 = load i32, i32* @NAME, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AMPERSAND, align 4
  %75 = or i32 %73, %74
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i32 [ %69, %66 ], [ %75, %70 ]
  %78 = call i32 @pprint(%struct.process* %63, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.process*, %struct.process** %3, align 8
  %83 = getelementptr inbounds %struct.process, %struct.process* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @job_cmd(i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = call i32 @cleanup_until(i32* @pchild_disabled)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, -1
  %90 = zext i1 %89 to i32
  ret i32 %90
}

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @pclrcurr(%struct.process*) #1

declare dso_local i32 @pprint(%struct.process*, i32) #1

declare dso_local i32 @job_cmd(i32) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
