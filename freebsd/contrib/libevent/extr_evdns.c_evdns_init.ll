; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }

@current_base = common dso_local global %struct.evdns_base* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.evdns_base*, align 8
  %3 = call %struct.evdns_base* @evdns_base_new(i32* null, i32 1)
  store %struct.evdns_base* %3, %struct.evdns_base** %2, align 8
  %4 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %5 = icmp ne %struct.evdns_base* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  store %struct.evdns_base* %7, %struct.evdns_base** @current_base, align 8
  store i32 0, i32* %1, align 4
  br label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local %struct.evdns_base* @evdns_base_new(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
