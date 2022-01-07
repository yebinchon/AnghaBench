; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_uncond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_uncond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist* }
%struct.slist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32)* @gen_uncond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_uncond(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.slist*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @BPF_LD, align 4
  %9 = load i32, i32* @BPF_IMM, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.slist* @new_stmt(i32* %7, i32 %10)
  store %struct.slist* %11, %struct.slist** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.slist*, %struct.slist** %6, align 8
  %17 = getelementptr inbounds %struct.slist, %struct.slist* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @BPF_JEQ, align 4
  %21 = call i32 @JMP(i32 %20)
  %22 = call %struct.block* @new_block(i32* %19, i32 %21)
  store %struct.block* %22, %struct.block** %5, align 8
  %23 = load %struct.slist*, %struct.slist** %6, align 8
  %24 = load %struct.block*, %struct.block** %5, align 8
  %25 = getelementptr inbounds %struct.block, %struct.block* %24, i32 0, i32 0
  store %struct.slist* %23, %struct.slist** %25, align 8
  %26 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %26
}

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @JMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
