; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread.c_evthread_debug_get_real_lock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread.c_evthread_debug_get_real_lock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_lock = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evthread_debug_get_real_lock_(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.debug_lock*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.debug_lock*
  store %struct.debug_lock* %5, %struct.debug_lock** %3, align 8
  %6 = load %struct.debug_lock*, %struct.debug_lock** %3, align 8
  %7 = getelementptr inbounds %struct.debug_lock, %struct.debug_lock* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
