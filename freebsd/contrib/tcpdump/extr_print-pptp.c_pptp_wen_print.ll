; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_wen_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_wen_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptp_msg_wen = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c" CRC_ERR(%u)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" FRAMING_ERR(%u)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c" HARDWARE_OVERRUN(%u)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" BUFFER_OVERRUN(%u)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" TIMEOUT_ERR(%u)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" ALIGN_ERR(%u)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pptp_wen_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_wen_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_wen*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_wen*
  store %struct.pptp_msg_wen* %7, %struct.pptp_msg_wen** %5, align 8
  %8 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %13, i32 0, i32 7
  %15 = call i32 @pptp_peer_call_id_print(i32* %12, i32* %14)
  %16 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %17 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %21 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %26 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %25, i32 0, i32 5
  %27 = call i32 @EXTRACT_32BITS(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  %31 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %32 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ND_TCHECK(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %37 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %36, i32 0, i32 4
  %38 = call i32 @EXTRACT_32BITS(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  %42 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %43 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ND_TCHECK(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %48 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %47, i32 0, i32 3
  %49 = call i32 @EXTRACT_32BITS(i32* %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  %53 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %54 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ND_TCHECK(i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %59 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %58, i32 0, i32 2
  %60 = call i32 @EXTRACT_32BITS(i32* %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @ND_PRINT(i32* %62)
  %64 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %65 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ND_TCHECK(i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %70 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %69, i32 0, i32 1
  %71 = call i32 @EXTRACT_32BITS(i32* %70)
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  %74 = call i32 @ND_PRINT(i32* %73)
  %75 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %76 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ND_TCHECK(i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.pptp_msg_wen*, %struct.pptp_msg_wen** %5, align 8
  %81 = getelementptr inbounds %struct.pptp_msg_wen, %struct.pptp_msg_wen* %80, i32 0, i32 0
  %82 = call i32 @EXTRACT_32BITS(i32* %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @ND_PRINT(i32* %84)
  br label %92

86:                                               ; No predecessors!
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @tstr, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32*
  %91 = call i32 @ND_PRINT(i32* %90)
  br label %92

92:                                               ; preds = %86, %2
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
