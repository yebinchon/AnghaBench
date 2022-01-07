; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-msnlb.c_msnlb_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-msnlb.c_msnlb_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msnlb_heartbeat_pkt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"MS NLB heartbeat, host priority: %u,\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" cluster IP: %s,\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" host IP: %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[|MS NLB]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msnlb_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.msnlb_heartbeat_pkt*, align 8
  %6 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.msnlb_heartbeat_pkt*
  store %struct.msnlb_heartbeat_pkt* %8, %struct.msnlb_heartbeat_pkt** %5, align 8
  %9 = load %struct.msnlb_heartbeat_pkt*, %struct.msnlb_heartbeat_pkt** %5, align 8
  %10 = bitcast { i64, i32 }* %6 to i8*
  %11 = bitcast %struct.msnlb_heartbeat_pkt* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %13 = load i64, i64* %12, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK(i64 %13, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.msnlb_heartbeat_pkt*, %struct.msnlb_heartbeat_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.msnlb_heartbeat_pkt, %struct.msnlb_heartbeat_pkt* %18, i32 0, i32 2
  %20 = call i32 @EXTRACT_LE_32BITS(i32* %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @ND_PRINT(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.msnlb_heartbeat_pkt*, %struct.msnlb_heartbeat_pkt** %5, align 8
  %27 = getelementptr inbounds %struct.msnlb_heartbeat_pkt, %struct.msnlb_heartbeat_pkt* %26, i32 0, i32 1
  %28 = call i32 @ipaddr_string(i32* %25, i32* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.msnlb_heartbeat_pkt*, %struct.msnlb_heartbeat_pkt** %5, align 8
  %35 = getelementptr inbounds %struct.msnlb_heartbeat_pkt, %struct.msnlb_heartbeat_pkt* %34, i32 0, i32 0
  %36 = call i32 @ipaddr_string(i32* %33, i32* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @ND_PRINT(i32* %38)
  br label %43

40:                                               ; No predecessors!
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.3 to i32*))
  br label %43

43:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @ND_TCHECK(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_LE_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
