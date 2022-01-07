; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_ocrq_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_ocrq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_ocrq = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [13 x i8] c" MIN_BPS(%u)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" MAX_BPS(%u)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" PHONE_NO_LEN(%u)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" PHONE_NO(%.64s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_ocrq_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_ocrq_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_ocrq*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_ocrq*
  store %struct.pptp_msg_ocrq* %7, %struct.pptp_msg_ocrq** %5, align 8
  %8 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %8, i32 0, i32 11
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ND_TCHECK(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %13, i32 0, i32 11
  %15 = call i32 @pptp_call_id_print(i32* %12, i32** %14)
  %16 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %16, i32 0, i32 10
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ND_TCHECK(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %22 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %21, i32 0, i32 10
  %23 = call i32 @pptp_call_ser_print(i32* %20, i32** %22)
  %24 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %25 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ND_TCHECK(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %30 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %29, i32 0, i32 9
  %31 = call i32 @EXTRACT_32BITS(i32** %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  %35 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %36 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ND_TCHECK(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %41 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %40, i32 0, i32 8
  %42 = call i32 @EXTRACT_32BITS(i32** %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @ND_PRINT(i32* %44)
  %46 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %47 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ND_TCHECK(i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %52 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %51, i32 0, i32 7
  %53 = call i32 @pptp_bearer_type_print(i32* %50, i32** %52)
  %54 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %55 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ND_TCHECK(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %60 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %59, i32 0, i32 6
  %61 = call i32 @pptp_framing_type_print(i32* %58, i32** %60)
  %62 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %63 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ND_TCHECK(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %68 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %67, i32 0, i32 5
  %69 = call i32 @pptp_recv_winsiz_print(i32* %66, i32** %68)
  %70 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %71 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ND_TCHECK(i32* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %76 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %75, i32 0, i32 4
  %77 = call i32 @pptp_pkt_proc_delay_print(i32* %74, i32** %76)
  %78 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %79 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ND_TCHECK(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %84 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %83, i32 0, i32 3
  %85 = call i32 @EXTRACT_16BITS(i32** %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @ND_PRINT(i32* %87)
  %89 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %90 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ND_TCHECK(i32* %91)
  %93 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %94 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ND_TCHECK(i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %99 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @ND_PRINT(i32* %100)
  %102 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %103 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ND_TCHECK(i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.pptp_msg_ocrq*, %struct.pptp_msg_ocrq** %5, align 8
  %108 = getelementptr inbounds %struct.pptp_msg_ocrq, %struct.pptp_msg_ocrq* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = call i32 @pptp_subaddr_print(i32* %106, i32* %110)
  br label %118

112:                                              ; No predecessors!
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* @tstr, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i32*
  %117 = call i32 @ND_PRINT(i32* %116)
  br label %118

118:                                              ; preds = %112, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i32*) #1

declare dso_local i32 @pptp_call_id_print(i32*, i32**) #1

declare dso_local i32 @pptp_call_ser_print(i32*, i32**) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32**) #1

declare dso_local i32 @pptp_bearer_type_print(i32*, i32**) #1

declare dso_local i32 @pptp_framing_type_print(i32*, i32**) #1

declare dso_local i32 @pptp_recv_winsiz_print(i32*, i32**) #1

declare dso_local i32 @pptp_pkt_proc_delay_print(i32*, i32**) #1

declare dso_local i32 @EXTRACT_16BITS(i32**) #1

declare dso_local i32 @pptp_subaddr_print(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
