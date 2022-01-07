; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_signal_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_signal_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_signal = type { %struct.internal_signal*, %struct.TYPE_4__* }
%struct.internal_signal = type { %struct.internal_signal*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@comm_signal_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not create signal event\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not add signal handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comm_signal_bind(%struct.comm_signal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comm_signal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.internal_signal*, align 8
  store %struct.comm_signal* %0, %struct.comm_signal** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 @calloc(i32 1, i32 16)
  %8 = inttoptr i64 %7 to %struct.internal_signal*
  store %struct.internal_signal* %8, %struct.internal_signal** %6, align 8
  %9 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %10 = icmp ne %struct.internal_signal* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.comm_signal*, %struct.comm_signal** %4, align 8
  %15 = call i32 @log_assert(%struct.comm_signal* %14)
  %16 = load %struct.comm_signal*, %struct.comm_signal** %4, align 8
  %17 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @comm_signal_callback, align 4
  %25 = load %struct.comm_signal*, %struct.comm_signal** %4, align 8
  %26 = call i32* @ub_signal_new(i32 %22, i32 %23, i32 %24, %struct.comm_signal* %25)
  %27 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %28 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %30 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %13
  %34 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %36 = call i32 @free(%struct.internal_signal* %35)
  store i32 0, i32* %3, align 4
  br label %60

37:                                               ; preds = %13
  %38 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %39 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @ub_signal_add(i32* %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %46 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ub_event_free(i32* %47)
  %49 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %50 = call i32 @free(%struct.internal_signal* %49)
  store i32 0, i32* %3, align 4
  br label %60

51:                                               ; preds = %37
  %52 = load %struct.comm_signal*, %struct.comm_signal** %4, align 8
  %53 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %52, i32 0, i32 0
  %54 = load %struct.internal_signal*, %struct.internal_signal** %53, align 8
  %55 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %56 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %55, i32 0, i32 0
  store %struct.internal_signal* %54, %struct.internal_signal** %56, align 8
  %57 = load %struct.internal_signal*, %struct.internal_signal** %6, align 8
  %58 = load %struct.comm_signal*, %struct.comm_signal** %4, align 8
  %59 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %58, i32 0, i32 0
  store %struct.internal_signal* %57, %struct.internal_signal** %59, align 8
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %43, %33, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @log_assert(%struct.comm_signal*) #1

declare dso_local i32* @ub_signal_new(i32, i32, i32, %struct.comm_signal*) #1

declare dso_local i32 @free(%struct.internal_signal*) #1

declare dso_local i64 @ub_signal_add(i32*, i32*) #1

declare dso_local i32 @ub_event_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
