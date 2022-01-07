; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_geneve6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_10__, %struct.slist* }
%struct.TYPE_10__ = type { i64 }
%struct.slist = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@gen_port6 = common dso_local global i32 0, align 4
@OR_TRAN_IPV6 = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_11__*, i32)* @gen_geneve6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_geneve6(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.slist*, align 8
  %8 = alloca %struct.slist*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = load i32, i32* @gen_port6, align 4
  %11 = load i32, i32* @OR_TRAN_IPV6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.block* @gen_geneve_check(%struct.TYPE_11__* %9, i32 %10, i32 %11, i32 %12)
  store %struct.block* %13, %struct.block** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = call %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_11__* %14, i32* %16)
  store %struct.slist* %17, %struct.slist** %7, align 8
  %18 = load %struct.slist*, %struct.slist** %7, align 8
  %19 = icmp ne %struct.slist* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* @BPF_LD, align 4
  %23 = load i32, i32* @BPF_IMM, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.slist* @new_stmt(%struct.TYPE_11__* %21, i32 %24)
  store %struct.slist* %25, %struct.slist** %8, align 8
  %26 = load %struct.slist*, %struct.slist** %8, align 8
  %27 = getelementptr inbounds %struct.slist, %struct.slist* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 40, i32* %28, align 4
  %29 = load %struct.slist*, %struct.slist** %7, align 8
  %30 = load %struct.slist*, %struct.slist** %8, align 8
  %31 = call i32 @sappend(%struct.slist* %29, %struct.slist* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load i32, i32* @BPF_ALU, align 4
  %34 = load i32, i32* @BPF_ADD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BPF_X, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.slist* @new_stmt(%struct.TYPE_11__* %32, i32 %37)
  store %struct.slist* %38, %struct.slist** %8, align 8
  %39 = load %struct.slist*, %struct.slist** %8, align 8
  %40 = getelementptr inbounds %struct.slist, %struct.slist* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.slist*, %struct.slist** %7, align 8
  %43 = load %struct.slist*, %struct.slist** %8, align 8
  %44 = call i32 @sappend(%struct.slist* %42, %struct.slist* %43)
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load i32, i32* @BPF_LD, align 4
  %48 = load i32, i32* @BPF_IMM, align 4
  %49 = or i32 %47, %48
  %50 = call %struct.slist* @new_stmt(%struct.TYPE_11__* %46, i32 %49)
  store %struct.slist* %50, %struct.slist** %7, align 8
  %51 = load %struct.slist*, %struct.slist** %7, align 8
  %52 = getelementptr inbounds %struct.slist, %struct.slist* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 40, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %20
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = load i32, i32* @BPF_MISC, align 4
  %57 = load i32, i32* @BPF_TAX, align 4
  %58 = or i32 %56, %57
  %59 = call %struct.slist* @new_stmt(%struct.TYPE_11__* %55, i32 %58)
  store %struct.slist* %59, %struct.slist** %8, align 8
  %60 = load %struct.slist*, %struct.slist** %7, align 8
  %61 = load %struct.slist*, %struct.slist** %8, align 8
  %62 = call i32 @sappend(%struct.slist* %60, %struct.slist* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load i32, i32* @BPF_JMP, align 4
  %65 = load i32, i32* @BPF_JEQ, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @BPF_X, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.block* @new_block(%struct.TYPE_11__* %63, i32 %68)
  store %struct.block* %69, %struct.block** %6, align 8
  %70 = load %struct.slist*, %struct.slist** %7, align 8
  %71 = load %struct.block*, %struct.block** %6, align 8
  %72 = getelementptr inbounds %struct.block, %struct.block* %71, i32 0, i32 1
  store %struct.slist* %70, %struct.slist** %72, align 8
  %73 = load %struct.block*, %struct.block** %6, align 8
  %74 = getelementptr inbounds %struct.block, %struct.block* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.block*, %struct.block** %5, align 8
  %77 = load %struct.block*, %struct.block** %6, align 8
  %78 = call i32 @gen_and(%struct.block* %76, %struct.block* %77)
  %79 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %79
}

declare dso_local %struct.block* @gen_geneve_check(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local %struct.block* @new_block(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
