; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_echorp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_echorp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_echorp = type { i32, i32, i32, i32 }

@PPTP_CTRL_MSG_TYPE_ECHORP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_echorp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_echorp_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_echorp*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_echorp*
  store %struct.pptp_msg_echorp* %7, %struct.pptp_msg_echorp** %5, align 8
  %8 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %13, i32 0, i32 3
  %15 = call i32 @pptp_id_print(i32* %12, i32* %14)
  %16 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %22 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %21, i32 0, i32 2
  %23 = load i32, i32* @PPTP_CTRL_MSG_TYPE_ECHORP, align 4
  %24 = call i32 @pptp_result_code_print(i32* %20, i32* %22, i32 %23)
  %25 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %26 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ND_TCHECK(i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %31 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %30, i32 0, i32 1
  %32 = call i32 @pptp_err_code_print(i32* %29, i32* %31)
  %33 = load %struct.pptp_msg_echorp*, %struct.pptp_msg_echorp** %5, align 8
  %34 = getelementptr inbounds %struct.pptp_msg_echorp, %struct.pptp_msg_echorp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TCHECK(i32 %35)
  br label %43

37:                                               ; No predecessors!
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @tstr, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @ND_PRINT(i32* %41)
  br label %43

43:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @pptp_id_print(i32*, i32*) #1

declare dso_local i32 @pptp_result_code_print(i32*, i32*, i32) #1

declare dso_local i32 @pptp_err_code_print(i32*, i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
