; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_expanded_flow_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_expanded_flow_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_expanded_flow_sample_t = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c" seqnum %u, type %u, idx %u, rate %u, pool %u, drops %u, records %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @sflow_print_expanded_flow_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sflow_print_expanded_flow_sample(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_expanded_flow_sample_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sflow_expanded_flow_sample_t, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 28
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.sflow_expanded_flow_sample_t*
  store %struct.sflow_expanded_flow_sample_t* %17, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %18 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %19 = bitcast %struct.sflow_expanded_flow_sample_t* %10 to i8*
  %20 = bitcast %struct.sflow_expanded_flow_sample_t* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 %20, i64 28, i1 false)
  %21 = call i32 @ND_TCHECK(%struct.sflow_expanded_flow_sample_t* byval(%struct.sflow_expanded_flow_sample_t) align 8 %10)
  %22 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %23 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EXTRACT_32BITS(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %28 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EXTRACT_32BITS(i32 %29)
  %31 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %32 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @EXTRACT_32BITS(i32 %33)
  %35 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %36 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @EXTRACT_32BITS(i32 %37)
  %39 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %40 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @EXTRACT_32BITS(i32 %41)
  %43 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %44 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @EXTRACT_32BITS(i32 %45)
  %47 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %48 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @EXTRACT_32BITS(i32 %49)
  %51 = load %struct.sflow_expanded_flow_sample_t*, %struct.sflow_expanded_flow_sample_t** %8, align 8
  %52 = getelementptr inbounds %struct.sflow_expanded_flow_sample_t, %struct.sflow_expanded_flow_sample_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @EXTRACT_32BITS(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 28
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 28
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @sflow_print_flow_records(i32* %58, i32* %60, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %15, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ND_TCHECK(%struct.sflow_expanded_flow_sample_t* byval(%struct.sflow_expanded_flow_sample_t) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @sflow_print_flow_records(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
