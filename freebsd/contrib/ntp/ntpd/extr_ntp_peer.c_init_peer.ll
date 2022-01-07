; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_init_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_init_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_peer_alloc = common dso_local global i32* null, align 8
@peer_free = common dso_local global i32 0, align 4
@p_link = common dso_local global i32 0, align 4
@total_peer_structs = common dso_local global i32 0, align 4
@peer_free_count = common dso_local global i32 0, align 4
@ASSOCID_MAX = common dso_local global i32 0, align 4
@current_association_ID = common dso_local global i32 0, align 4
@initial_association_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_peer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @init_peer_alloc, align 8
  %3 = call i32 @COUNTOF(i32* %2)
  %4 = sub nsw i32 %3, 1
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i32, i32* @peer_free, align 4
  %10 = load i32*, i32** @init_peer_alloc, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* @p_link, align 4
  %15 = call i32 @LINK_SLIST(i32 %9, i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  %20 = load i32*, i32** @init_peer_alloc, align 8
  %21 = call i32 @COUNTOF(i32* %20)
  store i32 %21, i32* @total_peer_structs, align 4
  %22 = load i32*, i32** @init_peer_alloc, align 8
  %23 = call i32 @COUNTOF(i32* %22)
  store i32 %23, i32* @peer_free_count, align 4
  br label %24

24:                                               ; preds = %28, %19
  %25 = call i32 (...) @ntp_random()
  %26 = load i32, i32* @ASSOCID_MAX, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* @current_association_ID, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @current_association_ID, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %24, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @current_association_ID, align 4
  store i32 %33, i32* @initial_association_ID, align 4
  ret void
}

declare dso_local i32 @COUNTOF(i32*) #1

declare dso_local i32 @LINK_SLIST(i32, i32*, i32) #1

declare dso_local i32 @ntp_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
