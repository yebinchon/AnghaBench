; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_deny_refuse_non_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_deny_refuse_non_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.worker = type { i32 }
%struct.comm_reply = type { i32 }

@acl_deny_non_local = common dso_local global i32 0, align 4
@acl_refuse_non_local = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*, i32, %struct.worker*, %struct.comm_reply*)* @deny_refuse_non_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deny_refuse_non_local(%struct.comm_point* %0, i32 %1, %struct.worker* %2, %struct.comm_reply* %3) #0 {
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.worker*, align 8
  %8 = alloca %struct.comm_reply*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.worker* %2, %struct.worker** %7, align 8
  store %struct.comm_reply* %3, %struct.comm_reply** %8, align 8
  %9 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @acl_deny_non_local, align 4
  %12 = load i32, i32* @acl_refuse_non_local, align 4
  %13 = load %struct.worker*, %struct.worker** %7, align 8
  %14 = load %struct.comm_reply*, %struct.comm_reply** %8, align 8
  %15 = call i32 @deny_refuse(%struct.comm_point* %9, i32 %10, i32 %11, i32 %12, %struct.worker* %13, %struct.comm_reply* %14)
  ret i32 %15
}

declare dso_local i32 @deny_refuse(%struct.comm_point*, i32, i32, i32, %struct.worker*, %struct.comm_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
