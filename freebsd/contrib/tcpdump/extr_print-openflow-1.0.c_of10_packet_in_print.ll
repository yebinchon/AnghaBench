; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_packet_in_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_packet_in_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"\0A\09 buffer_id %s\00", align 1
@bufferid_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c", total_len %u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c", in_port %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c", reason %s\00", align 1
@ofpr_str = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid (0x%02x)\00", align 1
@OF_PACKET_IN_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @of10_packet_in_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_packet_in_print(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TCHECK2(i32 %11, i32 4)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @bufferid_str, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @EXTRACT_32BITS(i32* %15)
  %17 = call i32 @tok2str(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @ND_PRINT(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ND_TCHECK2(i32 %24, i32 2)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @EXTRACT_16BITS(i32* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TCHECK2(i32 %35, i32 2)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @ofpp_str, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @EXTRACT_16BITS(i32* %39)
  %41 = call i32 @tok2str(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ND_TCHECK2(i32 %48, i32 1)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @ofpr_str, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tok2str(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ND_TCHECK2(i32 %61, i32 1)
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @OF_PACKET_IN_LEN, align 4
  %70 = sub nsw i32 %69, 2
  %71 = sub nsw i32 %68, %70
  %72 = call i32* @of10_packet_data_print(i32* %65, i32* %66, i32* %67, i32 %71)
  store i32* %72, i32** %5, align 8
  br label %80

73:                                               ; No predecessors!
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @tstr, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @ND_PRINT(i32* %77)
  %79 = load i32*, i32** %8, align 8
  store i32* %79, i32** %5, align 8
  br label %80

80:                                               ; preds = %73, %4
  %81 = load i32*, i32** %5, align 8
  ret i32* %81
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32* @of10_packet_data_print(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
