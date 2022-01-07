; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_icrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_icrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_icrp = type { i32, i32, i32, i32, i32, i32, i32 }

@PPTP_CTRL_MSG_TYPE_ICRP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_icrp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_icrp_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_icrp*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_icrp*
  store %struct.pptp_msg_icrp* %7, %struct.pptp_msg_icrp** %5, align 8
  %8 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %13, i32 0, i32 6
  %15 = call i32 @pptp_call_id_print(i32* %12, i32* %14)
  %16 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %22 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %21, i32 0, i32 5
  %23 = call i32 @pptp_peer_call_id_print(i32* %20, i32* %22)
  %24 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %25 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ND_TCHECK(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %30 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %29, i32 0, i32 4
  %31 = load i32, i32* @PPTP_CTRL_MSG_TYPE_ICRP, align 4
  %32 = call i32 @pptp_result_code_print(i32* %28, i32* %30, i32 %31)
  %33 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %34 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TCHECK(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %39 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %38, i32 0, i32 3
  %40 = call i32 @pptp_err_code_print(i32* %37, i32* %39)
  %41 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %42 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ND_TCHECK(i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %47 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %46, i32 0, i32 2
  %48 = call i32 @pptp_recv_winsiz_print(i32* %45, i32* %47)
  %49 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %50 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK(i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %55 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %54, i32 0, i32 1
  %56 = call i32 @pptp_pkt_proc_delay_print(i32* %53, i32* %55)
  %57 = load %struct.pptp_msg_icrp*, %struct.pptp_msg_icrp** %5, align 8
  %58 = getelementptr inbounds %struct.pptp_msg_icrp, %struct.pptp_msg_icrp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ND_TCHECK(i32 %59)
  br label %67

61:                                               ; No predecessors!
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @tstr, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  br label %67

67:                                               ; preds = %61, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @pptp_call_id_print(i32*, i32*) #1

declare dso_local i32 @pptp_peer_call_id_print(i32*, i32*) #1

declare dso_local i32 @pptp_result_code_print(i32*, i32*, i32) #1

declare dso_local i32 @pptp_err_code_print(i32*, i32*) #1

declare dso_local i32 @pptp_recv_winsiz_print(i32*, i32*) #1

declare dso_local i32 @pptp_pkt_proc_delay_print(i32*, i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
