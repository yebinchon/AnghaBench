; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_busypage.c_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/kernspace/extr_busypage.c_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@uobj = common dso_local global %struct.TYPE_4__* null, align 8
@threadrun = common dso_local global i32 0, align 4
@tcv = common dso_local global i32 0, align 4
@PG_WANTED = common dso_local global i32 0, align 4
@testpg = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"tw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @mutex_enter(i32 %5)
  store i32 1, i32* @threadrun, align 4
  %7 = call i32 @cv_signal(i32* @tcv)
  %8 = load i32, i32* @PG_WANTED, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @testpg, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @testpg, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uobj, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @UVM_UNLOCK_AND_WAIT(%struct.TYPE_5__* %13, i32 %16, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = call i32 @kthread_exit(i32 0)
  ret void
}

declare dso_local i32 @mutex_enter(i32) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @UVM_UNLOCK_AND_WAIT(%struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @kthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
