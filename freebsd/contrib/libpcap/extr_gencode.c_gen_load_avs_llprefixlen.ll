; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_avs_llprefixlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load_avs_llprefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_ABS = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slist* (%struct.TYPE_8__*)* @gen_load_avs_llprefixlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slist* @gen_load_avs_llprefixlen(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.slist*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.slist*, align 8
  %5 = alloca %struct.slist*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @BPF_LD, align 4
  %14 = load i32, i32* @BPF_W, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @BPF_ABS, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %12, i32 %17)
  store %struct.slist* %18, %struct.slist** %4, align 8
  %19 = load %struct.slist*, %struct.slist** %4, align 8
  %20 = getelementptr inbounds %struct.slist, %struct.slist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = load i32, i32* @BPF_ST, align 4
  %24 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %22, i32 %23)
  store %struct.slist* %24, %struct.slist** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.slist*, %struct.slist** %5, align 8
  %30 = getelementptr inbounds %struct.slist, %struct.slist* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.slist*, %struct.slist** %4, align 8
  %33 = load %struct.slist*, %struct.slist** %5, align 8
  %34 = call i32 @sappend(%struct.slist* %32, %struct.slist* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = load i32, i32* @BPF_MISC, align 4
  %37 = load i32, i32* @BPF_TAX, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.slist* @new_stmt(%struct.TYPE_8__* %35, i32 %38)
  store %struct.slist* %39, %struct.slist** %5, align 8
  %40 = load %struct.slist*, %struct.slist** %4, align 8
  %41 = load %struct.slist*, %struct.slist** %5, align 8
  %42 = call i32 @sappend(%struct.slist* %40, %struct.slist* %41)
  %43 = load %struct.slist*, %struct.slist** %4, align 8
  store %struct.slist* %43, %struct.slist** %2, align 8
  br label %45

44:                                               ; preds = %1
  store %struct.slist* null, %struct.slist** %2, align 8
  br label %45

45:                                               ; preds = %44, %11
  %46 = load %struct.slist*, %struct.slist** %2, align 8
  ret %struct.slist* %46
}

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
