; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_transaction_id_pick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_transaction_id_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*)* @transaction_id_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transaction_id_pick(%struct.evdns_base* %0) #0 {
  %2 = alloca %struct.evdns_base*, align 8
  %3 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %2, align 8
  %4 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %5 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %4)
  br label %6

6:                                                ; preds = %18, %10, %1
  %7 = call i32 @evutil_secure_rng_get_bytes(i32* %3, i32 4)
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 65535
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %6

11:                                               ; preds = %6
  %12 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @request_find_from_trans_id(%struct.evdns_base* %12, i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  ret i32 %17

18:                                               ; preds = %11
  br label %6
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @evutil_secure_rng_get_bytes(i32*, i32) #1

declare dso_local i32* @request_find_from_trans_id(%struct.evdns_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
