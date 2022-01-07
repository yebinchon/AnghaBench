; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_base = type { %struct.evhttp*, i32, i32, i32, i32 }
%struct.evhttp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evrpc_base* @evrpc_init(%struct.evhttp* %0) #0 {
  %2 = alloca %struct.evrpc_base*, align 8
  %3 = alloca %struct.evhttp*, align 8
  %4 = alloca %struct.evrpc_base*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %3, align 8
  %5 = call %struct.evrpc_base* @mm_calloc(i32 1, i32 24)
  store %struct.evrpc_base* %5, %struct.evrpc_base** %4, align 8
  %6 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  %7 = icmp eq %struct.evrpc_base* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.evrpc_base* null, %struct.evrpc_base** %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = call i32 (...) @evtag_init()
  %11 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  %12 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %11, i32 0, i32 4
  %13 = call i32 @TAILQ_INIT(i32* %12)
  %14 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  %15 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %14, i32 0, i32 3
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  %18 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %17, i32 0, i32 2
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  %21 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %20, i32 0, i32 1
  %22 = call i32 @TAILQ_INIT(i32* %21)
  %23 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  %24 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  %25 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %24, i32 0, i32 0
  store %struct.evhttp* %23, %struct.evhttp** %25, align 8
  %26 = load %struct.evrpc_base*, %struct.evrpc_base** %4, align 8
  store %struct.evrpc_base* %26, %struct.evrpc_base** %2, align 8
  br label %27

27:                                               ; preds = %9, %8
  %28 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  ret %struct.evrpc_base* %28
}

declare dso_local %struct.evrpc_base* @mm_calloc(i32, i32) #1

declare dso_local i32 @evtag_init(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
