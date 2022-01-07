; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_check_802_11_data_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_check_802_11_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist*, %struct.TYPE_2__ }
%struct.slist = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_JSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*)* @gen_check_802_11_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_check_802_11_data_frame(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.block*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @OR_LINKHDR, align 4
  %8 = load i32, i32* @BPF_B, align 4
  %9 = call %struct.slist* @gen_load_a(i32* %6, i32 %7, i32 0, i32 %8)
  store %struct.slist* %9, %struct.slist** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @BPF_JSET, align 4
  %12 = call i32 @JMP(i32 %11)
  %13 = call %struct.block* @new_block(i32* %10, i32 %12)
  store %struct.block* %13, %struct.block** %4, align 8
  %14 = load %struct.block*, %struct.block** %4, align 8
  %15 = getelementptr inbounds %struct.block, %struct.block* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 8, i32* %16, align 8
  %17 = load %struct.slist*, %struct.slist** %3, align 8
  %18 = load %struct.block*, %struct.block** %4, align 8
  %19 = getelementptr inbounds %struct.block, %struct.block* %18, i32 0, i32 0
  store %struct.slist* %17, %struct.slist** %19, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @OR_LINKHDR, align 4
  %22 = load i32, i32* @BPF_B, align 4
  %23 = call %struct.slist* @gen_load_a(i32* %20, i32 %21, i32 0, i32 %22)
  store %struct.slist* %23, %struct.slist** %3, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @BPF_JSET, align 4
  %26 = call i32 @JMP(i32 %25)
  %27 = call %struct.block* @new_block(i32* %24, i32 %26)
  store %struct.block* %27, %struct.block** %5, align 8
  %28 = load %struct.block*, %struct.block** %5, align 8
  %29 = getelementptr inbounds %struct.block, %struct.block* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load %struct.slist*, %struct.slist** %3, align 8
  %32 = load %struct.block*, %struct.block** %5, align 8
  %33 = getelementptr inbounds %struct.block, %struct.block* %32, i32 0, i32 0
  store %struct.slist* %31, %struct.slist** %33, align 8
  %34 = load %struct.block*, %struct.block** %5, align 8
  %35 = call i32 @gen_not(%struct.block* %34)
  %36 = load %struct.block*, %struct.block** %5, align 8
  %37 = load %struct.block*, %struct.block** %4, align 8
  %38 = call i32 @gen_and(%struct.block* %36, %struct.block* %37)
  %39 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %39
}

declare dso_local %struct.slist* @gen_load_a(i32*, i32, i32, i32) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
