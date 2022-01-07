; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_query_node_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_query_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_cbdata = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Query Node Info; %s\0A\00", align 1
@IB_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@recv_node_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.ni_cbdata*)* @query_node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_node_info(i32* %0, i32* %1, %struct.ni_cbdata* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ni_cbdata*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ni_cbdata* %2, %struct.ni_cbdata** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @portid2str(i32* %7)
  %9 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @IB_ATTR_NODE_INFO, align 4
  %13 = load i32, i32* @recv_node_info, align 4
  %14 = load %struct.ni_cbdata*, %struct.ni_cbdata** %6, align 8
  %15 = bitcast %struct.ni_cbdata* %14 to i8*
  %16 = call i32 @issue_smp(i32* %10, i32* %11, i32 %12, i32 0, i32 %13, i8* %15)
  ret i32 %16
}

declare dso_local i32 @IBND_DEBUG(i8*, i32) #1

declare dso_local i32 @portid2str(i32*) #1

declare dso_local i32 @issue_smp(i32*, i32*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
