; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_rreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_rreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_rreq = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" wb-rreq:\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" please repair %s %s:%u<%u:%u>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pkt_rreq*, i32)* @wb_rreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_rreq(i32* %0, %struct.pkt_rreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pkt_rreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkt_rreq, align 8
  store i32* %0, i32** %5, align 8
  store %struct.pkt_rreq* %1, %struct.pkt_rreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str to i32*))
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 20
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.pkt_rreq*, %struct.pkt_rreq** %6, align 8
  %16 = bitcast %struct.pkt_rreq* %8 to i8*
  %17 = bitcast %struct.pkt_rreq* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 %17, i64 20, i1 false)
  %18 = call i32 @ND_TTEST(%struct.pkt_rreq* byval(%struct.pkt_rreq) align 8 %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.pkt_rreq*, %struct.pkt_rreq** %6, align 8
  %25 = getelementptr inbounds %struct.pkt_rreq, %struct.pkt_rreq* %24, i32 0, i32 3
  %26 = call i32 @ipaddr_string(i32* %23, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.pkt_rreq*, %struct.pkt_rreq** %6, align 8
  %29 = getelementptr inbounds %struct.pkt_rreq, %struct.pkt_rreq* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @ipaddr_string(i32* %27, i32* %30)
  %32 = load %struct.pkt_rreq*, %struct.pkt_rreq** %6, align 8
  %33 = getelementptr inbounds %struct.pkt_rreq, %struct.pkt_rreq* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @EXTRACT_32BITS(i32* %34)
  %36 = load %struct.pkt_rreq*, %struct.pkt_rreq** %6, align 8
  %37 = getelementptr inbounds %struct.pkt_rreq, %struct.pkt_rreq* %36, i32 0, i32 1
  %38 = call i32 @EXTRACT_32BITS(i32* %37)
  %39 = load %struct.pkt_rreq*, %struct.pkt_rreq** %6, align 8
  %40 = getelementptr inbounds %struct.pkt_rreq, %struct.pkt_rreq* %39, i32 0, i32 0
  %41 = call i32 @EXTRACT_32BITS(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %21, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TTEST(%struct.pkt_rreq* byval(%struct.pkt_rreq) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
