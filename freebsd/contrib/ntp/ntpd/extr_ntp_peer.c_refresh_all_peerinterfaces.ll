; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_refresh_all_peerinterfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_refresh_all_peerinterfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i64, %struct.peer* }

@peer_list = common dso_local global %struct.peer* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refresh_all_peerinterfaces() #0 {
  %1 = alloca %struct.peer*, align 8
  %2 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %2, %struct.peer** %1, align 8
  br label %3

3:                                                ; preds = %21, %0
  %4 = load %struct.peer*, %struct.peer** %1, align 8
  %5 = icmp ne %struct.peer* %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load %struct.peer*, %struct.peer** %1, align 8
  %8 = getelementptr inbounds %struct.peer, %struct.peer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.peer*, %struct.peer** %1, align 8
  %13 = getelementptr inbounds %struct.peer, %struct.peer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %6
  %18 = load %struct.peer*, %struct.peer** %1, align 8
  %19 = call i32 @peer_refresh_interface(%struct.peer* %18)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.peer*, %struct.peer** %1, align 8
  %23 = getelementptr inbounds %struct.peer, %struct.peer* %22, i32 0, i32 2
  %24 = load %struct.peer*, %struct.peer** %23, align 8
  store %struct.peer* %24, %struct.peer** %1, align 8
  br label %3

25:                                               ; preds = %3
  ret void
}

declare dso_local i32 @peer_refresh_interface(%struct.peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
