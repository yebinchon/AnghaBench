; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_flow_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_flow_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_flow_sample_t = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [87 x i8] c" seqnum %u, type %u, idx %u, rate %u, pool %u, drops %u, input %u output %u records %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @sflow_print_flow_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sflow_print_flow_sample(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_flow_sample_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sflow_flow_sample_t, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.sflow_flow_sample_t*
  store %struct.sflow_flow_sample_t* %20, %struct.sflow_flow_sample_t** %8, align 8
  %21 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %22 = bitcast %struct.sflow_flow_sample_t* %13 to i8*
  %23 = bitcast %struct.sflow_flow_sample_t* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 32, i1 false)
  %24 = call i32 @ND_TCHECK(%struct.sflow_flow_sample_t* byval(%struct.sflow_flow_sample_t) align 8 %13)
  %25 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %26 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @EXTRACT_32BITS(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %30 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @EXTRACT_32BITS(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 24
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 4095
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %39 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EXTRACT_32BITS(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %45 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EXTRACT_32BITS(i32 %46)
  %48 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %49 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @EXTRACT_32BITS(i32 %50)
  %52 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %53 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @EXTRACT_32BITS(i32 %54)
  %56 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %57 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @EXTRACT_32BITS(i32 %58)
  %60 = load %struct.sflow_flow_sample_t*, %struct.sflow_flow_sample_t** %8, align 8
  %61 = getelementptr inbounds %struct.sflow_flow_sample_t, %struct.sflow_flow_sample_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @EXTRACT_32BITS(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @ND_PRINT(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 32
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 32
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @sflow_print_flow_records(i32* %68, i32* %70, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %18, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ND_TCHECK(%struct.sflow_flow_sample_t* byval(%struct.sflow_flow_sample_t) align 8) #1

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
