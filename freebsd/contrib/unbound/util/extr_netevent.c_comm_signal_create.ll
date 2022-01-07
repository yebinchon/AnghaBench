; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_signal_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_signal_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_signal = type { void (i32, i8*)*, i32*, i8*, %struct.comm_base* }
%struct.comm_base = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_signal* @comm_signal_create(%struct.comm_base* %0, void (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.comm_signal*, align 8
  %5 = alloca %struct.comm_base*, align 8
  %6 = alloca void (i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.comm_signal*, align 8
  store %struct.comm_base* %0, %struct.comm_base** %5, align 8
  store void (i32, i8*)* %1, void (i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 @malloc(i32 32)
  %10 = inttoptr i64 %9 to %struct.comm_signal*
  store %struct.comm_signal* %10, %struct.comm_signal** %8, align 8
  %11 = load %struct.comm_signal*, %struct.comm_signal** %8, align 8
  %12 = icmp ne %struct.comm_signal* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.comm_signal* null, %struct.comm_signal** %4, align 8
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %17 = load %struct.comm_signal*, %struct.comm_signal** %8, align 8
  %18 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %17, i32 0, i32 3
  store %struct.comm_base* %16, %struct.comm_base** %18, align 8
  %19 = load void (i32, i8*)*, void (i32, i8*)** %6, align 8
  %20 = load %struct.comm_signal*, %struct.comm_signal** %8, align 8
  %21 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %20, i32 0, i32 0
  store void (i32, i8*)* %19, void (i32, i8*)** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.comm_signal*, %struct.comm_signal** %8, align 8
  %24 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.comm_signal*, %struct.comm_signal** %8, align 8
  %26 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.comm_signal*, %struct.comm_signal** %8, align 8
  store %struct.comm_signal* %27, %struct.comm_signal** %4, align 8
  br label %28

28:                                               ; preds = %15, %13
  %29 = load %struct.comm_signal*, %struct.comm_signal** %4, align 8
  ret %struct.comm_signal* %29
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
