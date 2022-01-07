; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_preq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_preq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_preq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" wb-preq:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" need %u/%s:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pkt_preq*, i32)* @wb_preq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_preq(i32* %0, %struct.pkt_preq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pkt_preq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store %struct.pkt_preq* %1, %struct.pkt_preq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str to i32*))
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 12
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load %struct.pkt_preq*, %struct.pkt_preq** %6, align 8
  %16 = bitcast { i64, i32 }* %8 to i8*
  %17 = bitcast %struct.pkt_preq* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %19 = load i64, i64* %18, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TTEST(i64 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %42

25:                                               ; preds = %14
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.pkt_preq*, %struct.pkt_preq** %6, align 8
  %28 = getelementptr inbounds %struct.pkt_preq, %struct.pkt_preq* %27, i32 0, i32 1
  %29 = call i32 @EXTRACT_32BITS(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.pkt_preq*, %struct.pkt_preq** %6, align 8
  %32 = getelementptr inbounds %struct.pkt_preq, %struct.pkt_preq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @ipaddr_string(i32* %30, i32* %33)
  %35 = load %struct.pkt_preq*, %struct.pkt_preq** %6, align 8
  %36 = getelementptr inbounds %struct.pkt_preq, %struct.pkt_preq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @EXTRACT_32BITS(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %25, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TTEST(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
