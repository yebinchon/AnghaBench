; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_clean_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_clean_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32, i32 }
%struct.rc_state = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon_remote*, %struct.rc_state*)* @clean_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_point(%struct.daemon_remote* %0, %struct.rc_state* %1) #0 {
  %3 = alloca %struct.daemon_remote*, align 8
  %4 = alloca %struct.rc_state*, align 8
  store %struct.daemon_remote* %0, %struct.daemon_remote** %3, align 8
  store %struct.rc_state* %1, %struct.rc_state** %4, align 8
  %5 = load %struct.daemon_remote*, %struct.daemon_remote** %3, align 8
  %6 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %5, i32 0, i32 1
  %7 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  %8 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @state_list_remove_elem(i32* %6, i32 %9)
  %11 = load %struct.daemon_remote*, %struct.daemon_remote** %3, align 8
  %12 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  %16 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  %21 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @SSL_shutdown(i64 %22)
  %24 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  %25 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @SSL_free(i64 %26)
  br label %28

28:                                               ; preds = %19, %2
  %29 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  %30 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @comm_point_delete(i32 %31)
  %33 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  %34 = call i32 @free(%struct.rc_state* %33)
  ret void
}

declare dso_local i32 @state_list_remove_elem(i32*, i32) #1

declare dso_local i32 @SSL_shutdown(i64) #1

declare dso_local i32 @SSL_free(i64) #1

declare dso_local i32 @comm_point_delete(i32) #1

declare dso_local i32 @free(%struct.rc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
