; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_byteop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_byteop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist* }
%struct.slist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_OR = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_byteop(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.slist*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %13 [
    i32 61, label %15
    i32 60, label %22
    i32 62, label %30
    i32 124, label %38
    i32 38, label %46
  ]

13:                                               ; preds = %4
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @OR_LINKHDR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BPF_B, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.block* @gen_cmp(i32* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store %struct.block* %21, %struct.block** %5, align 8
  br label %69

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @OR_LINKHDR, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BPF_B, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.block* @gen_cmp_lt(i32* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store %struct.block* %28, %struct.block** %10, align 8
  %29 = load %struct.block*, %struct.block** %10, align 8
  store %struct.block* %29, %struct.block** %5, align 8
  br label %69

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @OR_LINKHDR, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BPF_B, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.block* @gen_cmp_gt(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store %struct.block* %36, %struct.block** %10, align 8
  %37 = load %struct.block*, %struct.block** %10, align 8
  store %struct.block* %37, %struct.block** %5, align 8
  br label %69

38:                                               ; preds = %4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @BPF_ALU, align 4
  %41 = load i32, i32* @BPF_OR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @BPF_K, align 4
  %44 = or i32 %42, %43
  %45 = call %struct.slist* @new_stmt(i32* %39, i32 %44)
  store %struct.slist* %45, %struct.slist** %11, align 8
  br label %54

46:                                               ; preds = %4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @BPF_ALU, align 4
  %49 = load i32, i32* @BPF_AND, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BPF_K, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.slist* @new_stmt(i32* %47, i32 %52)
  store %struct.slist* %53, %struct.slist** %11, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.slist*, %struct.slist** %11, align 8
  %57 = getelementptr inbounds %struct.slist, %struct.slist* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @BPF_JEQ, align 4
  %61 = call i32 @JMP(i32 %60)
  %62 = call %struct.block* @new_block(i32* %59, i32 %61)
  store %struct.block* %62, %struct.block** %10, align 8
  %63 = load %struct.slist*, %struct.slist** %11, align 8
  %64 = load %struct.block*, %struct.block** %10, align 8
  %65 = getelementptr inbounds %struct.block, %struct.block* %64, i32 0, i32 0
  store %struct.slist* %63, %struct.slist** %65, align 8
  %66 = load %struct.block*, %struct.block** %10, align 8
  %67 = call i32 @gen_not(%struct.block* %66)
  %68 = load %struct.block*, %struct.block** %10, align 8
  store %struct.block* %68, %struct.block** %5, align 8
  br label %69

69:                                               ; preds = %54, %30, %22, %15
  %70 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %70
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #2

declare dso_local %struct.block* @gen_cmp_lt(i32*, i32, i32, i32, i32) #2

declare dso_local %struct.block* @gen_cmp_gt(i32*, i32, i32, i32, i32) #2

declare dso_local %struct.slist* @new_stmt(i32*, i32) #2

declare dso_local %struct.block* @new_block(i32*, i32) #2

declare dso_local i32 @JMP(i32) #2

declare dso_local i32 @gen_not(%struct.block*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
