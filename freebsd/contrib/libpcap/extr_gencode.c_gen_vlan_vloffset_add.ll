; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan_vloffset_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_vlan_vloffset_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.slist = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_MEM = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, %struct.slist*)* @gen_vlan_vloffset_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_vlan_vloffset_add(i32* %0, %struct.TYPE_5__* %1, i32 %2, %struct.slist* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.slist*, align 8
  %9 = alloca %struct.slist*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.slist* %3, %struct.slist** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @alloc_reg(i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @BPF_LD, align 4
  %30 = load i32, i32* @BPF_MEM, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.slist* @new_stmt(i32* %28, i32 %31)
  store %struct.slist* %32, %struct.slist** %9, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.slist*, %struct.slist** %9, align 8
  %37 = getelementptr inbounds %struct.slist, %struct.slist* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.slist*, %struct.slist** %8, align 8
  %40 = load %struct.slist*, %struct.slist** %9, align 8
  %41 = call i32 @sappend(%struct.slist* %39, %struct.slist* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @BPF_ALU, align 4
  %44 = load i32, i32* @BPF_ADD, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BPF_IMM, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.slist* @new_stmt(i32* %42, i32 %47)
  store %struct.slist* %48, %struct.slist** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.slist*, %struct.slist** %9, align 8
  %51 = getelementptr inbounds %struct.slist, %struct.slist* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.slist*, %struct.slist** %8, align 8
  %54 = load %struct.slist*, %struct.slist** %9, align 8
  %55 = call i32 @sappend(%struct.slist* %53, %struct.slist* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @BPF_ST, align 4
  %58 = call %struct.slist* @new_stmt(i32* %56, i32 %57)
  store %struct.slist* %58, %struct.slist** %9, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.slist*, %struct.slist** %9, align 8
  %63 = getelementptr inbounds %struct.slist, %struct.slist* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.slist*, %struct.slist** %8, align 8
  %66 = load %struct.slist*, %struct.slist** %9, align 8
  %67 = call i32 @sappend(%struct.slist* %65, %struct.slist* %66)
  ret void
}

declare dso_local i32 @alloc_reg(i32*) #1

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
