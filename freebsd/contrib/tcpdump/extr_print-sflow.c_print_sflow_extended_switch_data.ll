; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_extended_switch_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_extended_switch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_extended_switch_data_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"\0A\09      src vlan %u, src pri %u, dst vlan %u, dst pri %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @print_sflow_extended_switch_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_sflow_extended_switch_data(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_extended_switch_data_t*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.sflow_extended_switch_data_t*
  store %struct.sflow_extended_switch_data_t* %15, %struct.sflow_extended_switch_data_t** %8, align 8
  %16 = load %struct.sflow_extended_switch_data_t*, %struct.sflow_extended_switch_data_t** %8, align 8
  %17 = bitcast %struct.sflow_extended_switch_data_t* %16 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 4
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @ND_TCHECK(i64 %19, i64 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.sflow_extended_switch_data_t*, %struct.sflow_extended_switch_data_t** %8, align 8
  %25 = getelementptr inbounds %struct.sflow_extended_switch_data_t, %struct.sflow_extended_switch_data_t* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @EXTRACT_32BITS(i32 %26)
  %28 = load %struct.sflow_extended_switch_data_t*, %struct.sflow_extended_switch_data_t** %8, align 8
  %29 = getelementptr inbounds %struct.sflow_extended_switch_data_t, %struct.sflow_extended_switch_data_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @EXTRACT_32BITS(i32 %30)
  %32 = load %struct.sflow_extended_switch_data_t*, %struct.sflow_extended_switch_data_t** %8, align 8
  %33 = getelementptr inbounds %struct.sflow_extended_switch_data_t, %struct.sflow_extended_switch_data_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @EXTRACT_32BITS(i32 %34)
  %36 = load %struct.sflow_extended_switch_data_t*, %struct.sflow_extended_switch_data_t** %8, align 8
  %37 = getelementptr inbounds %struct.sflow_extended_switch_data_t, %struct.sflow_extended_switch_data_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @EXTRACT_32BITS(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @ND_PRINT(i32* %41)
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %13, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ND_TCHECK(i64, i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
