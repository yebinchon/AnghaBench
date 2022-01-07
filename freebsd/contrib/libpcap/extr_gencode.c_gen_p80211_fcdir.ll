; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_p80211_fcdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_p80211_fcdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"frame direction supported only with 802.11 headers\00", align 1
@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_p80211_fcdir(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 131, label %9
    i32 128, label %9
    i32 129, label %9
    i32 130, label %9
  ]

9:                                                ; preds = %2, %2, %2, %2
  br label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = call i32 @bpf_error(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = load i32, i32* @OR_LINKHDR, align 4
  %16 = load i32, i32* @BPF_B, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* @IEEE80211_FC1_DIR_MASK, align 8
  %19 = trunc i64 %18 to i32
  %20 = call %struct.block* @gen_mcmp(%struct.TYPE_5__* %14, i32 %15, i32 1, i32 %16, i32 %17, i32 %19)
  store %struct.block* %20, %struct.block** %5, align 8
  %21 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %21
}

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.block* @gen_mcmp(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
