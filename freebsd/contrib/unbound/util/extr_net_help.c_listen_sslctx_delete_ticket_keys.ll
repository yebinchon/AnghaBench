; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_listen_sslctx_delete_ticket_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_listen_sslctx_delete_ticket_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_session_ticket_key = type { %struct.tls_session_ticket_key* }

@ticket_keys = common dso_local global %struct.tls_session_ticket_key* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listen_sslctx_delete_ticket_keys() #0 {
  %1 = alloca %struct.tls_session_ticket_key*, align 8
  %2 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** @ticket_keys, align 8
  %3 = icmp ne %struct.tls_session_ticket_key* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %27

5:                                                ; preds = %0
  %6 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** @ticket_keys, align 8
  store %struct.tls_session_ticket_key* %6, %struct.tls_session_ticket_key** %1, align 8
  br label %7

7:                                                ; preds = %21, %5
  %8 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %1, align 8
  %9 = getelementptr inbounds %struct.tls_session_ticket_key, %struct.tls_session_ticket_key* %8, i32 0, i32 0
  %10 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %9, align 8
  %11 = icmp ne %struct.tls_session_ticket_key* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %1, align 8
  %14 = getelementptr inbounds %struct.tls_session_ticket_key, %struct.tls_session_ticket_key* %13, i32 0, i32 0
  %15 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %14, align 8
  %16 = call i32 @memset(%struct.tls_session_ticket_key* %15, i32 221, i32 80)
  %17 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %1, align 8
  %18 = getelementptr inbounds %struct.tls_session_ticket_key, %struct.tls_session_ticket_key* %17, i32 0, i32 0
  %19 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %18, align 8
  %20 = call i32 @free(%struct.tls_session_ticket_key* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** %1, align 8
  %23 = getelementptr inbounds %struct.tls_session_ticket_key, %struct.tls_session_ticket_key* %22, i32 1
  store %struct.tls_session_ticket_key* %23, %struct.tls_session_ticket_key** %1, align 8
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.tls_session_ticket_key*, %struct.tls_session_ticket_key** @ticket_keys, align 8
  %26 = call i32 @free(%struct.tls_session_ticket_key* %25)
  store %struct.tls_session_ticket_key* null, %struct.tls_session_ticket_key** @ticket_keys, align 8
  br label %27

27:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @memset(%struct.tls_session_ticket_key*, i32, i32) #1

declare dso_local i32 @free(%struct.tls_session_ticket_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
