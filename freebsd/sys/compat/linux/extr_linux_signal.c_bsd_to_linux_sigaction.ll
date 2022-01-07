; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_bsd_to_linux_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_bsd_to_linux_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i32 }

@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@LINUX_SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SA_NOCLDWAIT = common dso_local global i32 0, align 4
@LINUX_SA_NOCLDWAIT = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@LINUX_SA_SIGINFO = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@LINUX_SA_ONSTACK = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@LINUX_SA_RESTART = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@LINUX_SA_ONESHOT = common dso_local global i32 0, align 4
@SA_NODEFER = common dso_local global i32 0, align 4
@LINUX_SA_NOMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sigaction*, %struct.TYPE_3__*)* @bsd_to_linux_sigaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_sigaction(%struct.sigaction* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.sigaction*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.sigaction* %0, %struct.sigaction** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = call i32 @bsd_to_linux_sigset(i32* %6, i32* %8)
  %10 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SA_NOCLDSTOP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @LINUX_SA_NOCLDSTOP, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SA_NOCLDWAIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @LINUX_SA_NOCLDWAIT, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %46 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SA_SIGINFO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @LINUX_SA_SIGINFO, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %59 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SA_ONSTACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @LINUX_SA_ONSTACK, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %72 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SA_RESTART, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @LINUX_SA_RESTART, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %85 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SA_RESETHAND, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @LINUX_SA_ONESHOT, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.sigaction*, %struct.sigaction** %3, align 8
  %98 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SA_NODEFER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @LINUX_SA_NOMASK, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %96
  ret void
}

declare dso_local i32 @bsd_to_linux_sigset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
