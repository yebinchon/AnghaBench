; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ppi_dlt_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ppi_dlt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_8__, %struct.slist* }
%struct.TYPE_8__ = type { i32 }
%struct.slist = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@DLT_PPI = common dso_local global i64 0, align 8
@BPF_LD = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@DLT_IEEE802_11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_9__*)* @gen_ppi_dlt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_ppi_dlt_check(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.block*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DLT_PPI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = load i32, i32* @BPF_LD, align 4
  %13 = load i32, i32* @BPF_W, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BPF_ABS, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.slist* @new_stmt(%struct.TYPE_9__* %11, i32 %16)
  store %struct.slist* %17, %struct.slist** %3, align 8
  %18 = load %struct.slist*, %struct.slist** %3, align 8
  %19 = getelementptr inbounds %struct.slist, %struct.slist* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 4, i32* %20, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = load i32, i32* @BPF_JEQ, align 4
  %23 = call i32 @JMP(i32 %22)
  %24 = call %struct.block* @new_block(%struct.TYPE_9__* %21, i32 %23)
  store %struct.block* %24, %struct.block** %4, align 8
  %25 = load %struct.slist*, %struct.slist** %3, align 8
  %26 = load %struct.block*, %struct.block** %4, align 8
  %27 = getelementptr inbounds %struct.block, %struct.block* %26, i32 0, i32 1
  store %struct.slist* %25, %struct.slist** %27, align 8
  %28 = load i32, i32* @DLT_IEEE802_11, align 4
  %29 = call i32 @SWAPLONG(i32 %28)
  %30 = load %struct.block*, %struct.block** %4, align 8
  %31 = getelementptr inbounds %struct.block, %struct.block* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %34

33:                                               ; preds = %1
  store %struct.block* null, %struct.block** %4, align 8
  br label %34

34:                                               ; preds = %33, %10
  %35 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %35
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.block* @new_block(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @SWAPLONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
