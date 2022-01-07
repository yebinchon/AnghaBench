; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_sli_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_sli_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_sli = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c" SEND_ACCM(0x%08x)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" RECV_ACCM(0x%08x)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_sli_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_sli_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_sli*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_sli*
  store %struct.pptp_msg_sli* %7, %struct.pptp_msg_sli** %5, align 8
  %8 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %13, i32 0, i32 3
  %15 = call i32 @pptp_peer_call_id_print(i32* %12, i32* %14)
  %16 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %21 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %26 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %25, i32 0, i32 1
  %27 = call i32 @EXTRACT_32BITS(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  %31 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %32 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ND_TCHECK(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.pptp_msg_sli*, %struct.pptp_msg_sli** %5, align 8
  %37 = getelementptr inbounds %struct.pptp_msg_sli, %struct.pptp_msg_sli* %36, i32 0, i32 0
  %38 = call i32 @EXTRACT_32BITS(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  br label %48

42:                                               ; No predecessors!
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @tstr, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ND_PRINT(i32* %46)
  br label %48

48:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @pptp_peer_call_id_print(i32*, i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
