; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve_ll_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve_ll_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_11__, %struct.slist* }
%struct.TYPE_11__ = type { i64 }
%struct.slist = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_MEM = common dso_local global i32 0, align 4
@BPF_LDX = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_13__*)* @gen_geneve_ll_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_geneve_ll_check(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.slist*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = load i32, i32* @BPF_LD, align 4
  %8 = load i32, i32* @BPF_MEM, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.slist* @new_stmt(%struct.TYPE_13__* %6, i32 %9)
  store %struct.slist* %10, %struct.slist** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.slist*, %struct.slist** %4, align 8
  %16 = getelementptr inbounds %struct.slist, %struct.slist* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = load i32, i32* @BPF_LDX, align 4
  %20 = load i32, i32* @BPF_MEM, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.slist* @new_stmt(%struct.TYPE_13__* %18, i32 %21)
  store %struct.slist* %22, %struct.slist** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.slist*, %struct.slist** %5, align 8
  %28 = getelementptr inbounds %struct.slist, %struct.slist* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.slist*, %struct.slist** %4, align 8
  %31 = load %struct.slist*, %struct.slist** %5, align 8
  %32 = call i32 @sappend(%struct.slist* %30, %struct.slist* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = load i32, i32* @BPF_JMP, align 4
  %35 = load i32, i32* @BPF_JEQ, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BPF_X, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.block* @new_block(%struct.TYPE_13__* %33, i32 %38)
  store %struct.block* %39, %struct.block** %3, align 8
  %40 = load %struct.slist*, %struct.slist** %4, align 8
  %41 = load %struct.block*, %struct.block** %3, align 8
  %42 = getelementptr inbounds %struct.block, %struct.block* %41, i32 0, i32 1
  store %struct.slist* %40, %struct.slist** %42, align 8
  %43 = load %struct.block*, %struct.block** %3, align 8
  %44 = getelementptr inbounds %struct.block, %struct.block* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.block*, %struct.block** %3, align 8
  %47 = call i32 @gen_not(%struct.block* %46)
  %48 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %48
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local %struct.block* @new_block(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
