; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_get_tick_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_get_tick_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.ev_token_bucket_cfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ev_token_bucket_get_tick_(%struct.timeval* %0, %struct.ev_token_bucket_cfg* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.ev_token_bucket_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.ev_token_bucket_cfg* %1, %struct.ev_token_bucket_cfg** %4, align 8
  %6 = load %struct.timeval*, %struct.timeval** %3, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = mul nsw i32 %9, 1000
  %11 = load %struct.timeval*, %struct.timeval** %3, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 1000
  %15 = add nsw i32 %10, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
