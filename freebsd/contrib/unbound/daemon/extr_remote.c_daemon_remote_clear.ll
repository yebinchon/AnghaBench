; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32*, i64, %struct.rc_state*, i32* }
%struct.rc_state = type { i32, i64, %struct.rc_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemon_remote_clear(%struct.daemon_remote* %0) #0 {
  %2 = alloca %struct.daemon_remote*, align 8
  %3 = alloca %struct.rc_state*, align 8
  %4 = alloca %struct.rc_state*, align 8
  store %struct.daemon_remote* %0, %struct.daemon_remote** %2, align 8
  %5 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %6 = icmp ne %struct.daemon_remote* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %49

8:                                                ; preds = %1
  %9 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %10 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @listen_list_delete(i32* %11)
  %13 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %14 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %16 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %15, i32 0, i32 2
  %17 = load %struct.rc_state*, %struct.rc_state** %16, align 8
  store %struct.rc_state* %17, %struct.rc_state** %3, align 8
  br label %18

18:                                               ; preds = %34, %8
  %19 = load %struct.rc_state*, %struct.rc_state** %3, align 8
  %20 = icmp ne %struct.rc_state* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.rc_state*, %struct.rc_state** %3, align 8
  %23 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %22, i32 0, i32 2
  %24 = load %struct.rc_state*, %struct.rc_state** %23, align 8
  store %struct.rc_state* %24, %struct.rc_state** %4, align 8
  %25 = load %struct.rc_state*, %struct.rc_state** %3, align 8
  %26 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.rc_state*, %struct.rc_state** %3, align 8
  %31 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @SSL_free(i64 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.rc_state*, %struct.rc_state** %3, align 8
  %36 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @comm_point_delete(i32 %37)
  %39 = load %struct.rc_state*, %struct.rc_state** %3, align 8
  %40 = call i32 @free(%struct.rc_state* %39)
  %41 = load %struct.rc_state*, %struct.rc_state** %4, align 8
  store %struct.rc_state* %41, %struct.rc_state** %3, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %44 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %43, i32 0, i32 2
  store %struct.rc_state* null, %struct.rc_state** %44, align 8
  %45 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %46 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %48 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %7
  ret void
}

declare dso_local i32 @listen_list_delete(i32*) #1

declare dso_local i32 @SSL_free(i64) #1

declare dso_local i32 @comm_point_delete(i32) #1

declare dso_local i32 @free(%struct.rc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
