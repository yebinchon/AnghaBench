; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_fg_proc_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_fg_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i64 }

@pintr_disabled = common dso_local global i32 0, align 4
@GettingInput = common dso_local global i64 0, align 8
@haderr = common dso_local global i32 0, align 4
@alrmcatch_disabled = common dso_local global i32 0, align 4
@ERR_BADJOB = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fg_proc_entry(%struct.process* %0) #0 {
  %2 = alloca %struct.process*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.process* %0, %struct.process** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @getexit(i32 %7)
  %9 = load i32, i32* @pintr_disabled, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pintr_disabled, align 4
  %11 = load i64, i64* @GettingInput, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* @GettingInput, align 8
  %12 = load i32, i32* @haderr, align 4
  store i32 %12, i32* %4, align 4
  %13 = call i64 (...) @cleanup_push_mark()
  store i64 %13, i64* %6, align 8
  %14 = call i64 (...) @setexit()
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = call i32 (...) @pendjob()
  %18 = call i32 @alarm(i32 0)
  store i32 1, i32* @alrmcatch_disabled, align 4
  %19 = load %struct.process*, %struct.process** %2, align 8
  %20 = call i32 @pstart(%struct.process* %19, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = load %struct.process*, %struct.process** %2, align 8
  %24 = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @ERR_BADJOB, align 4
  %26 = load %struct.process*, %struct.process** %2, align 8
  %27 = getelementptr inbounds %struct.process, %struct.process* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @stderror(i32 %25, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %22, %16
  %33 = load %struct.process*, %struct.process** %2, align 8
  %34 = call i32 @pjwait(%struct.process* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = call i32 @setalarm(i32 1)
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @cleanup_pop_mark(i64 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @resexit(i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* @haderr, align 4
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* @GettingInput, align 8
  %43 = call i32 @disabled_cleanup(i32* @pintr_disabled)
  ret void
}

declare dso_local i32 @getexit(i32) #1

declare dso_local i64 @cleanup_push_mark(...) #1

declare dso_local i64 @setexit(...) #1

declare dso_local i32 @pendjob(...) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @pstart(%struct.process*, i32) #1

declare dso_local i32 @stderror(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pjwait(%struct.process*) #1

declare dso_local i32 @setalarm(i32) #1

declare dso_local i32 @cleanup_pop_mark(i64) #1

declare dso_local i32 @resexit(i32) #1

declare dso_local i32 @disabled_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
