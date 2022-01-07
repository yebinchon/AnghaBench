; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_loadx_iphdrlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_loadx_iphdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_IND = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_LSH = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@BPF_LDX = common dso_local global i32 0, align 4
@BPF_MSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slist* (%struct.TYPE_8__*)* @gen_loadx_iphdrlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slist* @gen_loadx_iphdrlen(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.slist*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = call %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_8__* %5, %struct.TYPE_9__* %7)
  store %struct.slist* %8, %struct.slist** %3, align 8
  %9 = load %struct.slist*, %struct.slist** %3, align 8
  %10 = icmp ne %struct.slist* %9, null
  br i1 %10, label %11, label %75

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load i32, i32* @BPF_LD, align 4
  %14 = load i32, i32* @BPF_IND, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BPF_B, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %12, i32 %17)
  store %struct.slist* %18, %struct.slist** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.slist*, %struct.slist** %4, align 8
  %28 = getelementptr inbounds %struct.slist, %struct.slist* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.slist*, %struct.slist** %3, align 8
  %31 = load %struct.slist*, %struct.slist** %4, align 8
  %32 = call i32 @sappend(%struct.slist* %30, %struct.slist* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = load i32, i32* @BPF_ALU, align 4
  %35 = load i32, i32* @BPF_AND, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BPF_K, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %33, i32 %38)
  store %struct.slist* %39, %struct.slist** %4, align 8
  %40 = load %struct.slist*, %struct.slist** %4, align 8
  %41 = getelementptr inbounds %struct.slist, %struct.slist* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 15, i32* %42, align 4
  %43 = load %struct.slist*, %struct.slist** %3, align 8
  %44 = load %struct.slist*, %struct.slist** %4, align 8
  %45 = call i32 @sappend(%struct.slist* %43, %struct.slist* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = load i32, i32* @BPF_ALU, align 4
  %48 = load i32, i32* @BPF_LSH, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BPF_K, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %46, i32 %51)
  store %struct.slist* %52, %struct.slist** %4, align 8
  %53 = load %struct.slist*, %struct.slist** %4, align 8
  %54 = getelementptr inbounds %struct.slist, %struct.slist* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 2, i32* %55, align 4
  %56 = load %struct.slist*, %struct.slist** %3, align 8
  %57 = load %struct.slist*, %struct.slist** %4, align 8
  %58 = call i32 @sappend(%struct.slist* %56, %struct.slist* %57)
  %59 = load %struct.slist*, %struct.slist** %3, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load i32, i32* @BPF_ALU, align 4
  %62 = load i32, i32* @BPF_ADD, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BPF_X, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %60, i32 %65)
  %67 = call i32 @sappend(%struct.slist* %59, %struct.slist* %66)
  %68 = load %struct.slist*, %struct.slist** %3, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = load i32, i32* @BPF_MISC, align 4
  %71 = load i32, i32* @BPF_TAX, align 4
  %72 = or i32 %70, %71
  %73 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %69, i32 %72)
  %74 = call i32 @sappend(%struct.slist* %68, %struct.slist* %73)
  br label %94

75:                                               ; preds = %1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = load i32, i32* @BPF_LDX, align 4
  %78 = load i32, i32* @BPF_MSH, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @BPF_B, align 4
  %81 = or i32 %79, %80
  %82 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %76, i32 %81)
  store %struct.slist* %82, %struct.slist** %3, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load %struct.slist*, %struct.slist** %3, align 8
  %92 = getelementptr inbounds %struct.slist, %struct.slist* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %75, %11
  %95 = load %struct.slist*, %struct.slist** %3, align 8
  ret %struct.slist* %95
}

declare dso_local %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
