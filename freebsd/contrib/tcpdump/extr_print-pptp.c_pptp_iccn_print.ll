; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_iccn_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_iccn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_iccn = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_iccn_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_iccn_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_iccn*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_iccn*
  store %struct.pptp_msg_iccn* %7, %struct.pptp_msg_iccn** %5, align 8
  %8 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %13, i32 0, i32 5
  %15 = call i32 @pptp_peer_call_id_print(i32* %12, i32* %14)
  %16 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %21 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %26 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %25, i32 0, i32 3
  %27 = call i32 @pptp_conn_speed_print(i32* %24, i32* %26)
  %28 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %29 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ND_TCHECK(i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %34 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %33, i32 0, i32 2
  %35 = call i32 @pptp_recv_winsiz_print(i32* %32, i32* %34)
  %36 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %37 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ND_TCHECK(i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %42 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %41, i32 0, i32 1
  %43 = call i32 @pptp_pkt_proc_delay_print(i32* %40, i32* %42)
  %44 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %45 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ND_TCHECK(i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.pptp_msg_iccn*, %struct.pptp_msg_iccn** %5, align 8
  %50 = getelementptr inbounds %struct.pptp_msg_iccn, %struct.pptp_msg_iccn* %49, i32 0, i32 0
  %51 = call i32 @pptp_framing_type_print(i32* %48, i32* %50)
  br label %58

52:                                               ; No predecessors!
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @tstr, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  br label %58

58:                                               ; preds = %52, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @pptp_peer_call_id_print(i32*, i32*) #1

declare dso_local i32 @pptp_conn_speed_print(i32*, i32*) #1

declare dso_local i32 @pptp_recv_winsiz_print(i32*, i32*) #1

declare dso_local i32 @pptp_pkt_proc_delay_print(i32*, i32*) #1

declare dso_local i32 @pptp_framing_type_print(i32*, i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
