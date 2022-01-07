; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_2__, %struct.slist* }
%struct.TYPE_2__ = type { i64 }
%struct.slist = type { i32 }

@gen_port = common dso_local global i32 0, align 4
@OR_TRAN_IPV4 = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TXA = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32)* @gen_geneve4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_geneve4(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.slist*, align 8
  %8 = alloca %struct.slist*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @gen_port, align 4
  %11 = load i32, i32* @OR_TRAN_IPV4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.block* @gen_geneve_check(i32* %9, i32 %10, i32 %11, i32 %12)
  store %struct.block* %13, %struct.block** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.slist* @gen_loadx_iphdrlen(i32* %14)
  store %struct.slist* %15, %struct.slist** %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @BPF_MISC, align 4
  %18 = load i32, i32* @BPF_TXA, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.slist* @new_stmt(i32* %16, i32 %19)
  store %struct.slist* %20, %struct.slist** %8, align 8
  %21 = load %struct.slist*, %struct.slist** %7, align 8
  %22 = load %struct.slist*, %struct.slist** %8, align 8
  %23 = call i32 @sappend(%struct.slist* %21, %struct.slist* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @BPF_JMP, align 4
  %26 = load i32, i32* @BPF_JEQ, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BPF_X, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.block* @new_block(i32* %24, i32 %29)
  store %struct.block* %30, %struct.block** %6, align 8
  %31 = load %struct.slist*, %struct.slist** %7, align 8
  %32 = load %struct.block*, %struct.block** %6, align 8
  %33 = getelementptr inbounds %struct.block, %struct.block* %32, i32 0, i32 1
  store %struct.slist* %31, %struct.slist** %33, align 8
  %34 = load %struct.block*, %struct.block** %6, align 8
  %35 = getelementptr inbounds %struct.block, %struct.block* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.block*, %struct.block** %5, align 8
  %38 = load %struct.block*, %struct.block** %6, align 8
  %39 = call i32 @gen_and(%struct.block* %37, %struct.block* %38)
  %40 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %40
}

declare dso_local %struct.block* @gen_geneve_check(i32*, i32, i32, i32) #1

declare dso_local %struct.slist* @gen_loadx_iphdrlen(i32*) #1

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
