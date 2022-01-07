; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_data_wait_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_data_wait_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_session = type { i32 }
%struct.cfiscsi_data_wait = type { i32 }

@cfiscsi_data_wait_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfiscsi_session*, %struct.cfiscsi_data_wait*)* @cfiscsi_data_wait_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_data_wait_free(%struct.cfiscsi_session* %0, %struct.cfiscsi_data_wait* %1) #0 {
  %3 = alloca %struct.cfiscsi_session*, align 8
  %4 = alloca %struct.cfiscsi_data_wait*, align 8
  store %struct.cfiscsi_session* %0, %struct.cfiscsi_session** %3, align 8
  store %struct.cfiscsi_data_wait* %1, %struct.cfiscsi_data_wait** %4, align 8
  %5 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %6 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %4, align 8
  %9 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @icl_conn_transfer_done(i32 %7, i32 %10)
  %12 = load i32, i32* @cfiscsi_data_wait_zone, align 4
  %13 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %4, align 8
  %14 = call i32 @uma_zfree(i32 %12, %struct.cfiscsi_data_wait* %13)
  ret void
}

declare dso_local i32 @icl_conn_transfer_done(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.cfiscsi_data_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
