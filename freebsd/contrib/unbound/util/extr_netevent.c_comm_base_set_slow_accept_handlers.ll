; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_set_slow_accept_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_set_slow_accept_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_base = type { void (i8*)*, void (i8*)*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_base_set_slow_accept_handlers(%struct.comm_base* %0, void (i8*)* %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.comm_base*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.comm_base* %0, %struct.comm_base** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load void (i8*)*, void (i8*)** %6, align 8
  %10 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %11 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %10, i32 0, i32 0
  store void (i8*)* %9, void (i8*)** %11, align 8
  %12 = load void (i8*)*, void (i8*)** %7, align 8
  %13 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %14 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %13, i32 0, i32 1
  store void (i8*)* %12, void (i8*)** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.comm_base*, %struct.comm_base** %5, align 8
  %17 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
