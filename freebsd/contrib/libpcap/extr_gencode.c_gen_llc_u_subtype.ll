; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_llc_u_subtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_llc_u_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@OR_LLC = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@LLC_U_CMD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_llc_u_subtype(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.block* @gen_llc(i32* %7)
  store %struct.block* %8, %struct.block** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @OR_LLC, align 4
  %11 = load i32, i32* @BPF_B, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @LLC_U_CMD_MASK, align 4
  %14 = call %struct.block* @gen_mcmp(i32* %9, i32 %10, i32 2, i32 %11, i32 %12, i32 %13)
  store %struct.block* %14, %struct.block** %6, align 8
  %15 = load %struct.block*, %struct.block** %5, align 8
  %16 = load %struct.block*, %struct.block** %6, align 8
  %17 = call i32 @gen_and(%struct.block* %15, %struct.block* %16)
  %18 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %18
}

declare dso_local %struct.block* @gen_llc(i32*) #1

declare dso_local %struct.block* @gen_mcmp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
