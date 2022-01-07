; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_generate_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_generate_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32, i32*, i32, i32 }
%struct.timeval = type { i32 }
%struct.key = type { i32 }

@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@STRATUM_UNSPEC = common dso_local global i32 0, align 4
@LEAP_NOTINSYNC = common dso_local global i32 0, align 4
@ntpver = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"generate_pkt: key_id %d, key pointer %p\0A\00", align 1
@MAX_MDG_LEN = common dso_local global i32 0, align 4
@KEY_MAC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_pkt(%struct.pkt* %0, %struct.timeval* %1, i32 %2, %struct.key* %3) #0 {
  %5 = alloca %struct.pkt*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pkt* %0, %struct.pkt** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.key* %3, %struct.key** %8, align 8
  %12 = load i32, i32* @LEN_PKT_NOMAC, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.pkt*, %struct.pkt** %5, align 8
  %14 = call i32 @ZERO(%struct.pkt* byval(%struct.pkt) align 8 %13)
  %15 = load %struct.timeval*, %struct.timeval** %6, align 8
  %16 = call i32 @TVTOTS(%struct.timeval* %15, i32* %9)
  %17 = load %struct.pkt*, %struct.pkt** %5, align 8
  %18 = getelementptr inbounds %struct.pkt, %struct.pkt* %17, i32 0, i32 3
  %19 = call i32 @HTONL_FP(i32* %9, i32* %18)
  %20 = load i32, i32* @STRATUM_UNSPEC, align 4
  %21 = call i32 @STRATUM_TO_PKT(i32 %20)
  %22 = load %struct.pkt*, %struct.pkt** %5, align 8
  %23 = getelementptr inbounds %struct.pkt, %struct.pkt* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pkt*, %struct.pkt** %5, align 8
  %25 = getelementptr inbounds %struct.pkt, %struct.pkt* %24, i32 0, i32 0
  store i32 8, i32* %25, align 8
  %26 = load %struct.pkt*, %struct.pkt** %5, align 8
  %27 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %28 = load i32, i32* @ntpver, align 4
  %29 = call i32 @set_li_vn_mode(%struct.pkt* %26, i32 %27, i32 %28, i32 3)
  %30 = load i64, i64* @debug, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.key*, %struct.key** %8, align 8
  %35 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.key* %34)
  br label %36

36:                                               ; preds = %32, %4
  %37 = load %struct.key*, %struct.key** %8, align 8
  %38 = icmp ne %struct.key* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @htonl(i32 %40)
  %42 = load %struct.pkt*, %struct.pkt** %5, align 8
  %43 = getelementptr inbounds %struct.pkt, %struct.pkt* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.pkt*, %struct.pkt** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MAX_MDG_LEN, align 4
  %49 = load %struct.key*, %struct.key** %8, align 8
  %50 = load %struct.pkt*, %struct.pkt** %5, align 8
  %51 = getelementptr inbounds %struct.pkt, %struct.pkt* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @make_mac(%struct.pkt* %46, i32 %47, i32 %48, %struct.key* %49, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %39
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @KEY_MAC_LEN, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %58, %39
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @ZERO(%struct.pkt* byval(%struct.pkt) align 8) #1

declare dso_local i32 @TVTOTS(%struct.timeval*, i32*) #1

declare dso_local i32 @HTONL_FP(i32*, i32*) #1

declare dso_local i32 @STRATUM_TO_PKT(i32) #1

declare dso_local i32 @set_li_vn_mode(%struct.pkt*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @make_mac(%struct.pkt*, i32, i32, %struct.key*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
