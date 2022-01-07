; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_prism_llprefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_prism_llprefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.slist*, %struct.slist* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slist* (%struct.TYPE_8__*)* @gen_load_prism_llprefixlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slist* @gen_load_prism_llprefixlen(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.slist*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.slist*, align 8
  %6 = alloca %struct.slist*, align 8
  %7 = alloca %struct.slist*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %119

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* @BPF_LD, align 4
  %18 = load i32, i32* @BPF_W, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BPF_ABS, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %16, i32 %21)
  store %struct.slist* %22, %struct.slist** %4, align 8
  %23 = load %struct.slist*, %struct.slist** %4, align 8
  %24 = getelementptr inbounds %struct.slist, %struct.slist* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i32, i32* @BPF_ALU, align 4
  %28 = load i32, i32* @BPF_AND, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BPF_K, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %26, i32 %31)
  store %struct.slist* %32, %struct.slist** %5, align 8
  %33 = load %struct.slist*, %struct.slist** %5, align 8
  %34 = getelementptr inbounds %struct.slist, %struct.slist* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 -4096, i32* %35, align 8
  %36 = load %struct.slist*, %struct.slist** %4, align 8
  %37 = load %struct.slist*, %struct.slist** %5, align 8
  %38 = call i32 @sappend(%struct.slist* %36, %struct.slist* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load i32, i32* @BPF_JEQ, align 4
  %41 = call i32 @JMP(i32 %40)
  %42 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %39, i32 %41)
  store %struct.slist* %42, %struct.slist** %6, align 8
  %43 = load %struct.slist*, %struct.slist** %6, align 8
  %44 = getelementptr inbounds %struct.slist, %struct.slist* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 -2145316864, i32* %45, align 8
  %46 = load %struct.slist*, %struct.slist** %4, align 8
  %47 = load %struct.slist*, %struct.slist** %6, align 8
  %48 = call i32 @sappend(%struct.slist* %46, %struct.slist* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i32, i32* @BPF_LD, align 4
  %51 = load i32, i32* @BPF_W, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @BPF_ABS, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %49, i32 %54)
  store %struct.slist* %55, %struct.slist** %5, align 8
  %56 = load %struct.slist*, %struct.slist** %5, align 8
  %57 = getelementptr inbounds %struct.slist, %struct.slist* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load %struct.slist*, %struct.slist** %4, align 8
  %60 = load %struct.slist*, %struct.slist** %5, align 8
  %61 = call i32 @sappend(%struct.slist* %59, %struct.slist* %60)
  %62 = load %struct.slist*, %struct.slist** %5, align 8
  %63 = load %struct.slist*, %struct.slist** %6, align 8
  %64 = getelementptr inbounds %struct.slist, %struct.slist* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store %struct.slist* %62, %struct.slist** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load i32, i32* @BPF_JA, align 4
  %68 = call i32 @JMP(i32 %67)
  %69 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %66, i32 %68)
  store %struct.slist* %69, %struct.slist** %7, align 8
  %70 = load %struct.slist*, %struct.slist** %7, align 8
  %71 = getelementptr inbounds %struct.slist, %struct.slist* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.slist*, %struct.slist** %4, align 8
  %74 = load %struct.slist*, %struct.slist** %7, align 8
  %75 = call i32 @sappend(%struct.slist* %73, %struct.slist* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = load i32, i32* @BPF_LD, align 4
  %78 = load i32, i32* @BPF_W, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @BPF_IMM, align 4
  %81 = or i32 %79, %80
  %82 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %76, i32 %81)
  store %struct.slist* %82, %struct.slist** %5, align 8
  %83 = load %struct.slist*, %struct.slist** %5, align 8
  %84 = getelementptr inbounds %struct.slist, %struct.slist* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 144, i32* %85, align 8
  %86 = load %struct.slist*, %struct.slist** %4, align 8
  %87 = load %struct.slist*, %struct.slist** %5, align 8
  %88 = call i32 @sappend(%struct.slist* %86, %struct.slist* %87)
  %89 = load %struct.slist*, %struct.slist** %5, align 8
  %90 = load %struct.slist*, %struct.slist** %6, align 8
  %91 = getelementptr inbounds %struct.slist, %struct.slist* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store %struct.slist* %89, %struct.slist** %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load i32, i32* @BPF_ST, align 4
  %95 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %93, i32 %94)
  store %struct.slist* %95, %struct.slist** %5, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.slist*, %struct.slist** %5, align 8
  %101 = getelementptr inbounds %struct.slist, %struct.slist* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.slist*, %struct.slist** %4, align 8
  %104 = load %struct.slist*, %struct.slist** %5, align 8
  %105 = call i32 @sappend(%struct.slist* %103, %struct.slist* %104)
  %106 = load %struct.slist*, %struct.slist** %5, align 8
  %107 = load %struct.slist*, %struct.slist** %7, align 8
  %108 = getelementptr inbounds %struct.slist, %struct.slist* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store %struct.slist* %106, %struct.slist** %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = load i32, i32* @BPF_MISC, align 4
  %112 = load i32, i32* @BPF_TAX, align 4
  %113 = or i32 %111, %112
  %114 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %110, i32 %113)
  store %struct.slist* %114, %struct.slist** %5, align 8
  %115 = load %struct.slist*, %struct.slist** %4, align 8
  %116 = load %struct.slist*, %struct.slist** %5, align 8
  %117 = call i32 @sappend(%struct.slist* %115, %struct.slist* %116)
  %118 = load %struct.slist*, %struct.slist** %4, align 8
  store %struct.slist* %118, %struct.slist** %2, align 8
  br label %120

119:                                              ; preds = %1
  store %struct.slist* null, %struct.slist** %2, align 8
  br label %120

120:                                              ; preds = %119, %15
  %121 = load %struct.slist*, %struct.slist** %2, align 8
  ret %struct.slist* %121
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local i32 @JMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
