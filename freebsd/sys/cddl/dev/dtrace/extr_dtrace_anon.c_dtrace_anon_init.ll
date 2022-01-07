; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_anon.c_dtrace_anon_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/extr_dtrace_anon.c_dtrace_anon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@cpu_lock = common dso_local global i32 0, align 4
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dtrace_retained = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dtrace_anon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_anon_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 @mutex_enter(i32* @cpu_lock)
  %6 = call i32 @mutex_enter(i32* @dtrace_provider_lock)
  %7 = call i32 @mutex_enter(i32* @dtrace_lock)
  %8 = call i32 (...) @dtrace_anon_property()
  %9 = call i32 @mutex_exit(i32* @cpu_lock)
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 1), align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load i32*, i32** @dtrace_retained, align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 1), align 8
  %15 = icmp eq i32* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = call i32 @dtrace_enabling_provide(i32* null)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 2), align 8
  store i32* %19, i32** %3, align 8
  %20 = call i32 @mutex_exit(i32* @dtrace_lock)
  %21 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  %22 = call i32 @mutex_enter(i32* @cpu_lock)
  %23 = call i32 @mutex_enter(i32* @dtrace_provider_lock)
  %24 = call i32 @mutex_enter(i32* @dtrace_lock)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 1), align 8
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @dtrace_enabling_match(i32* %28, i32* null)
  br label %30

30:                                               ; preds = %27, %12
  %31 = call i32 @mutex_exit(i32* @cpu_lock)
  br label %32

32:                                               ; preds = %30, %1
  %33 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  %34 = call i32 @mutex_exit(i32* @dtrace_lock)
  %35 = load i32*, i32** %3, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @dtrace_state_go(i32* %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 0))
  br label %40

40:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_anon_property(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_enabling_provide(i32*) #1

declare dso_local i32 @dtrace_enabling_match(i32*, i32*) #1

declare dso_local i32 @dtrace_state_go(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
