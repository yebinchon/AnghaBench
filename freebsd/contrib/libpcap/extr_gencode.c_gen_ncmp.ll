; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ncmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.TYPE_4__, %struct.slist* }
%struct.TYPE_4__ = type { i32 }
%struct.slist = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BPF_ALU = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_JGT = common dso_local global i32 0, align 4
@BPF_JGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32, i32, i32, i32, i32, i32, i32)* @gen_ncmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_ncmp(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.slist*, align 8
  %18 = alloca %struct.slist*, align 8
  %19 = alloca %struct.block*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.slist* @gen_load_a(i32* %20, i32 %21, i32 %22, i32 %23)
  store %struct.slist* %24, %struct.slist** %17, align 8
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %42

27:                                               ; preds = %8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @BPF_ALU, align 4
  %30 = load i32, i32* @BPF_AND, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BPF_K, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.slist* @new_stmt(i32* %28, i32 %33)
  store %struct.slist* %34, %struct.slist** %18, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.slist*, %struct.slist** %18, align 8
  %37 = getelementptr inbounds %struct.slist, %struct.slist* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.slist*, %struct.slist** %17, align 8
  %40 = load %struct.slist*, %struct.slist** %18, align 8
  %41 = call i32 @sappend(%struct.slist* %39, %struct.slist* %40)
  br label %42

42:                                               ; preds = %27, %8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @JMP(i32 %44)
  %46 = call %struct.block* @new_block(i32* %43, i32 %45)
  store %struct.block* %46, %struct.block** %19, align 8
  %47 = load %struct.slist*, %struct.slist** %17, align 8
  %48 = load %struct.block*, %struct.block** %19, align 8
  %49 = getelementptr inbounds %struct.block, %struct.block* %48, i32 0, i32 1
  store %struct.slist* %47, %struct.slist** %49, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.block*, %struct.block** %19, align 8
  %52 = getelementptr inbounds %struct.block, %struct.block* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %42
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @BPF_JGT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @BPF_JGE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56
  %65 = load %struct.block*, %struct.block** %19, align 8
  %66 = call i32 @gen_not(%struct.block* %65)
  br label %67

67:                                               ; preds = %64, %60, %42
  %68 = load %struct.block*, %struct.block** %19, align 8
  ret %struct.block* %68
}

declare dso_local %struct.slist* @gen_load_a(i32*, i32, i32, i32) #1

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @gen_not(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
