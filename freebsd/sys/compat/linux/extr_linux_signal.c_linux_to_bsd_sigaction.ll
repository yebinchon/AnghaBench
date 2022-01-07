; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_to_bsd_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_to_bsd_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sigaction = type { i32, i32, i32 }

@LINUX_SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@LINUX_SA_NOCLDWAIT = common dso_local global i32 0, align 4
@SA_NOCLDWAIT = common dso_local global i32 0, align 4
@LINUX_SA_SIGINFO = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@LINUX_SA_ONSTACK = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@LINUX_SA_RESTART = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@LINUX_SA_ONESHOT = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@LINUX_SA_NOMASK = common dso_local global i32 0, align 4
@SA_NODEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.sigaction*)* @linux_to_bsd_sigaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_to_bsd_sigaction(%struct.TYPE_3__* %0, %struct.sigaction* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.sigaction*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.sigaction* %1, %struct.sigaction** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2
  %9 = call i32 @linux_to_bsd_sigset(i32* %6, i32* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PTRIN(i32 %12)
  %14 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LINUX_SA_NOCLDSTOP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @SA_NOCLDSTOP, align 4
  %26 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LINUX_SA_NOCLDWAIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @SA_NOCLDWAIT, align 4
  %39 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LINUX_SA_SIGINFO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @SA_SIGINFO, align 4
  %52 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %53 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LINUX_SA_ONSTACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @SA_ONSTACK, align 4
  %65 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %66 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LINUX_SA_RESTART, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @SA_RESTART, align 4
  %78 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %79 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LINUX_SA_ONESHOT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @SA_RESETHAND, align 4
  %91 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %92 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %82
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @LINUX_SA_NOMASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* @SA_NODEFER, align 4
  %104 = load %struct.sigaction*, %struct.sigaction** %4, align 8
  %105 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %95
  ret void
}

declare dso_local i32 @linux_to_bsd_sigset(i32*, i32*) #1

declare dso_local i32 @PTRIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
