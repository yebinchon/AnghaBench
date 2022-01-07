; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ipfrag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ipfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist*, %struct.TYPE_2__ }
%struct.slist = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@BPF_JSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*)* @gen_ipfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_ipfrag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.block*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @OR_LINKPL, align 4
  %7 = load i32, i32* @BPF_H, align 4
  %8 = call %struct.slist* @gen_load_a(i32* %5, i32 %6, i32 6, i32 %7)
  store %struct.slist* %8, %struct.slist** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @BPF_JSET, align 4
  %11 = call i32 @JMP(i32 %10)
  %12 = call %struct.block* @new_block(i32* %9, i32 %11)
  store %struct.block* %12, %struct.block** %4, align 8
  %13 = load %struct.block*, %struct.block** %4, align 8
  %14 = getelementptr inbounds %struct.block, %struct.block* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 8191, i32* %15, align 8
  %16 = load %struct.slist*, %struct.slist** %3, align 8
  %17 = load %struct.block*, %struct.block** %4, align 8
  %18 = getelementptr inbounds %struct.block, %struct.block* %17, i32 0, i32 0
  store %struct.slist* %16, %struct.slist** %18, align 8
  %19 = load %struct.block*, %struct.block** %4, align 8
  %20 = call i32 @gen_not(%struct.block* %19)
  %21 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %21
}

declare dso_local %struct.slist* @gen_load_a(i32*, i32, i32, i32) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
