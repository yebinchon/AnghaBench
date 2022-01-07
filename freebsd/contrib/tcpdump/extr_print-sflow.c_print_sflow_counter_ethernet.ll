; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_counter_ethernet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_print_sflow_counter_ethernet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_ethernet_counter_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [98 x i8] c"\0A\09      align errors %u, fcs errors %u, single collision %u, multiple collision %u, test error %u\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\0A\09      deferred %u, late collision %u, excessive collision %u, mac trans error %u\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"\0A\09      carrier error %u, frames too long %u, mac receive errors %u, symbol errors %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @print_sflow_counter_ethernet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_sflow_counter_ethernet(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_ethernet_counter_t*, align 8
  %9 = alloca %struct.sflow_ethernet_counter_t, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 52
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %86

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.sflow_ethernet_counter_t*
  store %struct.sflow_ethernet_counter_t* %16, %struct.sflow_ethernet_counter_t** %8, align 8
  %17 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %18 = bitcast %struct.sflow_ethernet_counter_t* %9 to i8*
  %19 = bitcast %struct.sflow_ethernet_counter_t* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 52, i1 false)
  %20 = call i32 @ND_TCHECK(%struct.sflow_ethernet_counter_t* byval(%struct.sflow_ethernet_counter_t) align 8 %9)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %23 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EXTRACT_32BITS(i32 %24)
  %26 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %27 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXTRACT_32BITS(i32 %28)
  %30 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %31 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @EXTRACT_32BITS(i32 %32)
  %34 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %35 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EXTRACT_32BITS(i32 %36)
  %38 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %39 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EXTRACT_32BITS(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %47 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @EXTRACT_32BITS(i32 %48)
  %50 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %51 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @EXTRACT_32BITS(i32 %52)
  %54 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %55 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EXTRACT_32BITS(i32 %56)
  %58 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %59 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @EXTRACT_32BITS(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @ND_PRINT(i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %67 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @EXTRACT_32BITS(i32 %68)
  %70 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %71 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @EXTRACT_32BITS(i32 %72)
  %74 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %75 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @EXTRACT_32BITS(i32 %76)
  %78 = load %struct.sflow_ethernet_counter_t*, %struct.sflow_ethernet_counter_t** %8, align 8
  %79 = getelementptr inbounds %struct.sflow_ethernet_counter_t, %struct.sflow_ethernet_counter_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @EXTRACT_32BITS(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  store i32 0, i32* %4, align 4
  br label %86

85:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %14, %13
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @ND_TCHECK(%struct.sflow_ethernet_counter_t* byval(%struct.sflow_ethernet_counter_t) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
