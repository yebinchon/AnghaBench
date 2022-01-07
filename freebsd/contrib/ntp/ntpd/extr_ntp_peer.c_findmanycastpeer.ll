; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findmanycastpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findmanycastpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32, %struct.peer* }
%struct.recvbuf = type { %struct.pkt }
%struct.pkt = type { i32 }

@peer_list = common dso_local global %struct.peer* null, align 8
@MDF_SOLICIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peer* @findmanycastpeer(%struct.recvbuf* %0) #0 {
  %2 = alloca %struct.recvbuf*, align 8
  %3 = alloca %struct.peer*, align 8
  %4 = alloca %struct.pkt*, align 8
  %5 = alloca i32, align 4
  store %struct.recvbuf* %0, %struct.recvbuf** %2, align 8
  %6 = load %struct.recvbuf*, %struct.recvbuf** %2, align 8
  %7 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %6, i32 0, i32 0
  store %struct.pkt* %7, %struct.pkt** %4, align 8
  %8 = load %struct.peer*, %struct.peer** @peer_list, align 8
  store %struct.peer* %8, %struct.peer** %3, align 8
  br label %9

9:                                                ; preds = %30, %1
  %10 = load %struct.peer*, %struct.peer** %3, align 8
  %11 = icmp ne %struct.peer* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i32, i32* @MDF_SOLICIT_MASK, align 4
  %14 = load %struct.peer*, %struct.peer** %3, align 8
  %15 = getelementptr inbounds %struct.peer, %struct.peer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.pkt*, %struct.pkt** %4, align 8
  %21 = getelementptr inbounds %struct.pkt, %struct.pkt* %20, i32 0, i32 0
  %22 = call i32 @NTOHL_FP(i32* %21, i32* %5)
  %23 = load %struct.peer*, %struct.peer** %3, align 8
  %24 = getelementptr inbounds %struct.peer, %struct.peer* %23, i32 0, i32 1
  %25 = call i64 @L_ISEQU(i32* %5, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %34

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %12
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.peer*, %struct.peer** %3, align 8
  %32 = getelementptr inbounds %struct.peer, %struct.peer* %31, i32 0, i32 2
  %33 = load %struct.peer*, %struct.peer** %32, align 8
  store %struct.peer* %33, %struct.peer** %3, align 8
  br label %9

34:                                               ; preds = %27, %9
  %35 = load %struct.peer*, %struct.peer** %3, align 8
  ret %struct.peer* %35
}

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i64 @L_ISEQU(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
