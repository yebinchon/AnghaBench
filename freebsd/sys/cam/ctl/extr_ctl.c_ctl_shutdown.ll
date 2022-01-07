; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i64, i32, i32, %struct.ctl_softc*, %struct.ctl_softc*, %struct.ctl_softc*, %struct.ctl_softc*, i32, i32, %struct.ctl_thread*, i32*, %struct.ctl_thread, %struct.ctl_thread*, i32 }
%struct.ctl_thread = type { i32, i32* }

@control_softc = common dso_local global %struct.ctl_softc* null, align 8
@ha_frontend = common dso_local global i32 0, align 4
@worker_threads = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CTL thr shutdown\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_shutdown() #0 {
  %1 = alloca %struct.ctl_softc*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_thread*, align 8
  %4 = load %struct.ctl_softc*, %struct.ctl_softc** @control_softc, align 8
  store %struct.ctl_softc* %4, %struct.ctl_softc** %1, align 8
  %5 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %6 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @ctl_frontend_deregister(i32* @ha_frontend)
  br label %11

11:                                               ; preds = %9, %0
  %12 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %13 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @destroy_dev(i32 %14)
  %16 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %17 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %48, %11
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @worker_threads, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 12
  %25 = load %struct.ctl_thread*, %struct.ctl_thread** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %25, i64 %27
  store %struct.ctl_thread* %28, %struct.ctl_thread** %3, align 8
  br label %29

29:                                               ; preds = %43, %22
  %30 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %31 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %36 = call i32 @wakeup(%struct.ctl_thread* %35)
  %37 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @pause(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %43

43:                                               ; preds = %41, %34
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %46 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %45, i32 0, i32 0
  %47 = call i32 @mtx_destroy(i32* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %18

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %67, %51
  %53 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %54 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %59 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %58, i32 0, i32 11
  %60 = call i32 @wakeup(%struct.ctl_thread* %59)
  %61 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %62 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %61, i32 0, i32 10
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @pause(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %67

67:                                               ; preds = %65, %57
  br label %52

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %85, %68
  %70 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %71 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %70, i32 0, i32 9
  %72 = load %struct.ctl_thread*, %struct.ctl_thread** %71, align 8
  %73 = icmp ne %struct.ctl_thread* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %76 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %75, i32 0, i32 9
  %77 = load %struct.ctl_thread*, %struct.ctl_thread** %76, align 8
  %78 = call i32 @wakeup(%struct.ctl_thread* %77)
  %79 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %80 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %79, i32 0, i32 9
  %81 = load %struct.ctl_thread*, %struct.ctl_thread** %80, align 8
  %82 = icmp ne %struct.ctl_thread* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 @pause(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %85

85:                                               ; preds = %83, %74
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %88 = call i32 @ctl_tpc_shutdown(%struct.ctl_softc* %87)
  %89 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %90 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @uma_zdestroy(i32 %91)
  %93 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %94 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %93, i32 0, i32 7
  %95 = call i32 @mtx_destroy(i32* %94)
  %96 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %97 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %96, i32 0, i32 6
  %98 = load %struct.ctl_softc*, %struct.ctl_softc** %97, align 8
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = call i32 @free(%struct.ctl_softc* %98, i32 %99)
  %101 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %102 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %101, i32 0, i32 5
  %103 = load %struct.ctl_softc*, %struct.ctl_softc** %102, align 8
  %104 = load i32, i32* @M_DEVBUF, align 4
  %105 = call i32 @free(%struct.ctl_softc* %103, i32 %104)
  %106 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %107 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %106, i32 0, i32 4
  %108 = load %struct.ctl_softc*, %struct.ctl_softc** %107, align 8
  %109 = load i32, i32* @M_DEVBUF, align 4
  %110 = call i32 @free(%struct.ctl_softc* %108, i32 %109)
  %111 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %112 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %111, i32 0, i32 3
  %113 = load %struct.ctl_softc*, %struct.ctl_softc** %112, align 8
  %114 = load i32, i32* @M_DEVBUF, align 4
  %115 = call i32 @free(%struct.ctl_softc* %113, i32 %114)
  %116 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %117 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %116, i32 0, i32 2
  %118 = call i32 @sysctl_ctx_free(i32* %117)
  %119 = load %struct.ctl_softc*, %struct.ctl_softc** %1, align 8
  %120 = load i32, i32* @M_DEVBUF, align 4
  %121 = call i32 @free(%struct.ctl_softc* %119, i32 %120)
  store %struct.ctl_softc* null, %struct.ctl_softc** @control_softc, align 8
  ret i32 0
}

declare dso_local i32 @ctl_frontend_deregister(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @wakeup(%struct.ctl_thread*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @ctl_tpc_shutdown(%struct.ctl_softc*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @free(%struct.ctl_softc*, i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
