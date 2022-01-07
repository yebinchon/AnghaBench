; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_ethernet_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_ethernet_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_ethernet_frame_t = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"\0A\09      frame len %u, type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @print_sflow_ethernet_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_sflow_ethernet_frame(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_ethernet_frame_t*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %33

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.sflow_ethernet_frame_t*
  store %struct.sflow_ethernet_frame_t* %15, %struct.sflow_ethernet_frame_t** %8, align 8
  %16 = load %struct.sflow_ethernet_frame_t*, %struct.sflow_ethernet_frame_t** %8, align 8
  %17 = bitcast %struct.sflow_ethernet_frame_t* %16 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @ND_TCHECK(i64 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.sflow_ethernet_frame_t*, %struct.sflow_ethernet_frame_t** %8, align 8
  %22 = getelementptr inbounds %struct.sflow_ethernet_frame_t, %struct.sflow_ethernet_frame_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @EXTRACT_32BITS(i32 %23)
  %25 = load %struct.sflow_ethernet_frame_t*, %struct.sflow_ethernet_frame_t** %8, align 8
  %26 = getelementptr inbounds %struct.sflow_ethernet_frame_t, %struct.sflow_ethernet_frame_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @EXTRACT_32BITS(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  store i32 0, i32* %4, align 4
  br label %33

32:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %13, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
