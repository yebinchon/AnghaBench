; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_icrq_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_icrq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_icrq = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c" DIALED_NO_LEN(%u)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" DIALING_NO_LEN(%u)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" DIALED_NO(%.64s)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" DIALING_NO(%.64s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_icrq_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_icrq_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_icrq*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_icrq*
  store %struct.pptp_msg_icrq* %7, %struct.pptp_msg_icrq** %5, align 8
  %8 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ND_TCHECK(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %13, i32 0, i32 8
  %15 = call i32 @pptp_call_id_print(i32* %12, i32** %14)
  %16 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ND_TCHECK(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %22 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %21, i32 0, i32 7
  %23 = call i32 @pptp_call_ser_print(i32* %20, i32** %22)
  %24 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %25 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ND_TCHECK(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %30 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %29, i32 0, i32 6
  %31 = call i32 @pptp_bearer_type_print(i32* %28, i32** %30)
  %32 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %33 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ND_TCHECK(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %38 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %37, i32 0, i32 5
  %39 = call i32 @pptp_phy_chan_id_print(i32* %36, i32** %38)
  %40 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %41 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ND_TCHECK(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %46 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %45, i32 0, i32 4
  %47 = call i32 @EXTRACT_16BITS(i32** %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @ND_PRINT(i32* %49)
  %51 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %52 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ND_TCHECK(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %57 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %56, i32 0, i32 3
  %58 = call i32 @EXTRACT_16BITS(i32** %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  %62 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %63 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ND_TCHECK(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %68 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @ND_PRINT(i32* %69)
  %71 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %72 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ND_TCHECK(i32* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %77 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ND_PRINT(i32* %78)
  %80 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %81 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ND_TCHECK(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.pptp_msg_icrq*, %struct.pptp_msg_icrq** %5, align 8
  %86 = getelementptr inbounds %struct.pptp_msg_icrq, %struct.pptp_msg_icrq* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @pptp_subaddr_print(i32* %84, i32* %88)
  br label %96

90:                                               ; No predecessors!
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @tstr, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  %95 = call i32 @ND_PRINT(i32* %94)
  br label %96

96:                                               ; preds = %90, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32*) #1

declare dso_local i32 @pptp_call_id_print(i32*, i32**) #1

declare dso_local i32 @pptp_call_ser_print(i32*, i32**) #1

declare dso_local i32 @pptp_bearer_type_print(i32*, i32**) #1

declare dso_local i32 @pptp_phy_chan_id_print(i32*, i32**) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32**) #1

declare dso_local i32 @pptp_subaddr_print(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
