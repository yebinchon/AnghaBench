; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_unpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_unpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32, i32 }

@PEVNT_DEMOBIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"assoc %u\00", align 1
@peer_demobilizations = common dso_local global i32 0, align 4
@peer_associations = common dso_local global i32 0, align 4
@FLAG_PREEMPT = common dso_local global i32 0, align 4
@peer_preempt = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FLAG_REFCLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unpeer(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  store %struct.peer* %0, %struct.peer** %2, align 8
  %3 = load i32, i32* @PEVNT_DEMOBIL, align 4
  %4 = load %struct.peer*, %struct.peer** %2, align 8
  %5 = load %struct.peer*, %struct.peer** %2, align 8
  %6 = getelementptr inbounds %struct.peer, %struct.peer* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mprintf_event(i32 %3, %struct.peer* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.peer*, %struct.peer** %2, align 8
  %10 = getelementptr inbounds %struct.peer, %struct.peer* %9, i32 0, i32 1
  %11 = call i32 @restrict_source(i32* %10, i32 1, i32 0)
  %12 = load %struct.peer*, %struct.peer** %2, align 8
  %13 = call i32 @set_peerdstadr(%struct.peer* %12, i32* null)
  %14 = load i32, i32* @peer_demobilizations, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @peer_demobilizations, align 4
  %16 = load i32, i32* @peer_associations, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @peer_associations, align 4
  %18 = load i32, i32* @FLAG_PREEMPT, align 4
  %19 = load %struct.peer*, %struct.peer** %2, align 8
  %20 = getelementptr inbounds %struct.peer, %struct.peer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @peer_preempt, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @peer_preempt, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.peer*, %struct.peer** %2, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @free_peer(%struct.peer* %28, i32 %29)
  ret void
}

declare dso_local i32 @mprintf_event(i32, %struct.peer*, i8*, i32) #1

declare dso_local i32 @restrict_source(i32*, i32, i32) #1

declare dso_local i32 @set_peerdstadr(%struct.peer*, i32*) #1

declare dso_local i32 @free_peer(%struct.peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
