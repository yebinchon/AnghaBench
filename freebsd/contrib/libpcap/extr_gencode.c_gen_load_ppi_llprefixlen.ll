; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_ppi_llprefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_ppi_llprefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_LSH = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@BPF_OR = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slist* (%struct.TYPE_8__*)* @gen_load_ppi_llprefixlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slist* @gen_load_ppi_llprefixlen(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.slist*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.slist*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %88

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @BPF_LD, align 4
  %14 = load i32, i32* @BPF_B, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BPF_ABS, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %12, i32 %17)
  store %struct.slist* %18, %struct.slist** %4, align 8
  %19 = load %struct.slist*, %struct.slist** %4, align 8
  %20 = getelementptr inbounds %struct.slist, %struct.slist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 3, i32* %21, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = load i32, i32* @BPF_ALU, align 4
  %24 = load i32, i32* @BPF_LSH, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BPF_K, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %22, i32 %27)
  store %struct.slist* %28, %struct.slist** %5, align 8
  %29 = load %struct.slist*, %struct.slist** %4, align 8
  %30 = load %struct.slist*, %struct.slist** %5, align 8
  %31 = call i32 @sappend(%struct.slist* %29, %struct.slist* %30)
  %32 = load %struct.slist*, %struct.slist** %5, align 8
  %33 = getelementptr inbounds %struct.slist, %struct.slist* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 8, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = load i32, i32* @BPF_MISC, align 4
  %37 = load i32, i32* @BPF_TAX, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %35, i32 %38)
  store %struct.slist* %39, %struct.slist** %5, align 8
  %40 = load %struct.slist*, %struct.slist** %4, align 8
  %41 = load %struct.slist*, %struct.slist** %5, align 8
  %42 = call i32 @sappend(%struct.slist* %40, %struct.slist* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = load i32, i32* @BPF_LD, align 4
  %45 = load i32, i32* @BPF_B, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @BPF_ABS, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %43, i32 %48)
  store %struct.slist* %49, %struct.slist** %5, align 8
  %50 = load %struct.slist*, %struct.slist** %4, align 8
  %51 = load %struct.slist*, %struct.slist** %5, align 8
  %52 = call i32 @sappend(%struct.slist* %50, %struct.slist* %51)
  %53 = load %struct.slist*, %struct.slist** %5, align 8
  %54 = getelementptr inbounds %struct.slist, %struct.slist* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 2, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i32, i32* @BPF_ALU, align 4
  %58 = load i32, i32* @BPF_OR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @BPF_X, align 4
  %61 = or i32 %59, %60
  %62 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %56, i32 %61)
  store %struct.slist* %62, %struct.slist** %5, align 8
  %63 = load %struct.slist*, %struct.slist** %4, align 8
  %64 = load %struct.slist*, %struct.slist** %5, align 8
  %65 = call i32 @sappend(%struct.slist* %63, %struct.slist* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load i32, i32* @BPF_ST, align 4
  %68 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %66, i32 %67)
  store %struct.slist* %68, %struct.slist** %5, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.slist*, %struct.slist** %5, align 8
  %74 = getelementptr inbounds %struct.slist, %struct.slist* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.slist*, %struct.slist** %4, align 8
  %77 = load %struct.slist*, %struct.slist** %5, align 8
  %78 = call i32 @sappend(%struct.slist* %76, %struct.slist* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = load i32, i32* @BPF_MISC, align 4
  %81 = load i32, i32* @BPF_TAX, align 4
  %82 = or i32 %80, %81
  %83 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %79, i32 %82)
  store %struct.slist* %83, %struct.slist** %5, align 8
  %84 = load %struct.slist*, %struct.slist** %4, align 8
  %85 = load %struct.slist*, %struct.slist** %5, align 8
  %86 = call i32 @sappend(%struct.slist* %84, %struct.slist* %85)
  %87 = load %struct.slist*, %struct.slist** %4, align 8
  store %struct.slist* %87, %struct.slist** %2, align 8
  br label %89

88:                                               ; preds = %1
  store %struct.slist* null, %struct.slist** %2, align 8
  br label %89

89:                                               ; preds = %88, %11
  %90 = load %struct.slist*, %struct.slist** %2, align 8
  ret %struct.slist* %90
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
