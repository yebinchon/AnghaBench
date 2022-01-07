; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_raw_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_raw_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_expanded_flow_raw_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"\0A\09      protocol %s (%u), length %u, stripped bytes %u, header_size %u\00", align 1
@sflow_flow_raw_protocol_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @print_sflow_raw_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_sflow_raw_packet(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_expanded_flow_raw_t*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %50

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.sflow_expanded_flow_raw_t*
  store %struct.sflow_expanded_flow_raw_t* %15, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %16 = load %struct.sflow_expanded_flow_raw_t*, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %17 = bitcast %struct.sflow_expanded_flow_raw_t* %16 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 4
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @ND_TCHECK(i64 %19, i64 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @sflow_flow_raw_protocol_values, align 4
  %25 = load %struct.sflow_expanded_flow_raw_t*, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %26 = getelementptr inbounds %struct.sflow_expanded_flow_raw_t, %struct.sflow_expanded_flow_raw_t* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @EXTRACT_32BITS(i32 %27)
  %29 = call i32 @tok2str(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.sflow_expanded_flow_raw_t*, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %31 = getelementptr inbounds %struct.sflow_expanded_flow_raw_t, %struct.sflow_expanded_flow_raw_t* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @EXTRACT_32BITS(i32 %32)
  %34 = load %struct.sflow_expanded_flow_raw_t*, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %35 = getelementptr inbounds %struct.sflow_expanded_flow_raw_t, %struct.sflow_expanded_flow_raw_t* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EXTRACT_32BITS(i32 %36)
  %38 = load %struct.sflow_expanded_flow_raw_t*, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %39 = getelementptr inbounds %struct.sflow_expanded_flow_raw_t, %struct.sflow_expanded_flow_raw_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EXTRACT_32BITS(i32 %40)
  %42 = load %struct.sflow_expanded_flow_raw_t*, %struct.sflow_expanded_flow_raw_t** %8, align 8
  %43 = getelementptr inbounds %struct.sflow_expanded_flow_raw_t, %struct.sflow_expanded_flow_raw_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @EXTRACT_32BITS(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @ND_PRINT(i32* %47)
  store i32 0, i32* %4, align 4
  br label %50

49:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %13, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ND_TCHECK(i64, i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
