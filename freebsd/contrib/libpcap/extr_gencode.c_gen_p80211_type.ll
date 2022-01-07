; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_p80211_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_p80211_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"802.11 link-layer types supported only on 802.11\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_p80211_type(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %18 [
    i32 131, label %11
    i32 128, label %11
    i32 129, label %11
    i32 130, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load i32, i32* @OR_LINKHDR, align 4
  %14 = load i32, i32* @BPF_B, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.block* @gen_mcmp(%struct.TYPE_5__* %12, i32 %13, i32 0, i32 %14, i32 %15, i32 %16)
  store %struct.block* %17, %struct.block** %7, align 8
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i32 @bpf_error(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.block*, %struct.block** %7, align 8
  ret %struct.block* %22
}

declare dso_local %struct.block* @gen_mcmp(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
