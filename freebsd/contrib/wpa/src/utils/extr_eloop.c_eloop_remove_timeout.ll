; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop.c_eloop_remove_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop.c_eloop_remove_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eloop_timeout = type { i32, i32, i32 }

@eloop = common dso_local global i32 0, align 4
@user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eloop_timeout*)* @eloop_remove_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eloop_remove_timeout(%struct.eloop_timeout* %0) #0 {
  %2 = alloca %struct.eloop_timeout*, align 8
  store %struct.eloop_timeout* %0, %struct.eloop_timeout** %2, align 8
  %3 = load %struct.eloop_timeout*, %struct.eloop_timeout** %2, align 8
  %4 = getelementptr inbounds %struct.eloop_timeout, %struct.eloop_timeout* %3, i32 0, i32 2
  %5 = call i32 @dl_list_del(i32* %4)
  %6 = load %struct.eloop_timeout*, %struct.eloop_timeout** %2, align 8
  %7 = load i32, i32* @eloop, align 4
  %8 = load %struct.eloop_timeout*, %struct.eloop_timeout** %2, align 8
  %9 = getelementptr inbounds %struct.eloop_timeout, %struct.eloop_timeout* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wpa_trace_remove_ref(%struct.eloop_timeout* %6, i32 %7, i32 %10)
  %12 = load %struct.eloop_timeout*, %struct.eloop_timeout** %2, align 8
  %13 = load i32, i32* @user, align 4
  %14 = load %struct.eloop_timeout*, %struct.eloop_timeout** %2, align 8
  %15 = getelementptr inbounds %struct.eloop_timeout, %struct.eloop_timeout* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wpa_trace_remove_ref(%struct.eloop_timeout* %12, i32 %13, i32 %16)
  %18 = load %struct.eloop_timeout*, %struct.eloop_timeout** %2, align 8
  %19 = call i32 @os_free(%struct.eloop_timeout* %18)
  ret void
}

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @wpa_trace_remove_ref(%struct.eloop_timeout*, i32, i32) #1

declare dso_local i32 @os_free(%struct.eloop_timeout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
