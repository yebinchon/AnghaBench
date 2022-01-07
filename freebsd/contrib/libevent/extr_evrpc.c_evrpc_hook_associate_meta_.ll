; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_hook_associate_meta_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_hook_associate_meta_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_hook_meta = type { %struct.evhttp_connection* }
%struct.evhttp_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evrpc_hook_meta**, %struct.evhttp_connection*)* @evrpc_hook_associate_meta_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_hook_associate_meta_(%struct.evrpc_hook_meta** %0, %struct.evhttp_connection* %1) #0 {
  %3 = alloca %struct.evrpc_hook_meta**, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evrpc_hook_meta*, align 8
  store %struct.evrpc_hook_meta** %0, %struct.evrpc_hook_meta*** %3, align 8
  store %struct.evhttp_connection* %1, %struct.evhttp_connection** %4, align 8
  %6 = load %struct.evrpc_hook_meta**, %struct.evrpc_hook_meta*** %3, align 8
  %7 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %6, align 8
  store %struct.evrpc_hook_meta* %7, %struct.evrpc_hook_meta** %5, align 8
  %8 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %5, align 8
  %9 = icmp eq %struct.evrpc_hook_meta* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call %struct.evrpc_hook_meta* (...) @evrpc_hook_meta_new_()
  store %struct.evrpc_hook_meta* %11, %struct.evrpc_hook_meta** %5, align 8
  %12 = load %struct.evrpc_hook_meta**, %struct.evrpc_hook_meta*** %3, align 8
  store %struct.evrpc_hook_meta* %11, %struct.evrpc_hook_meta** %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %15 = load %struct.evrpc_hook_meta*, %struct.evrpc_hook_meta** %5, align 8
  %16 = getelementptr inbounds %struct.evrpc_hook_meta, %struct.evrpc_hook_meta* %15, i32 0, i32 0
  store %struct.evhttp_connection* %14, %struct.evhttp_connection** %16, align 8
  ret void
}

declare dso_local %struct.evrpc_hook_meta* @evrpc_hook_meta_new_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
