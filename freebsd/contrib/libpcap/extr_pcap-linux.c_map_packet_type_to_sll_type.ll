; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_map_packet_type_to_sll_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_map_packet_type_to_sll_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINUX_SLL_HOST = common dso_local global i32 0, align 4
@LINUX_SLL_BROADCAST = common dso_local global i32 0, align 4
@LINUX_SLL_MULTICAST = common dso_local global i32 0, align 4
@LINUX_SLL_OTHERHOST = common dso_local global i32 0, align 4
@LINUX_SLL_OUTGOING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16)* @map_packet_type_to_sll_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @map_packet_type_to_sll_type(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = sext i16 %4 to i32
  switch i32 %5, label %21 [
    i32 131, label %6
    i32 132, label %9
    i32 130, label %12
    i32 129, label %15
    i32 128, label %18
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @LINUX_SLL_HOST, align 4
  %8 = call signext i16 @htons(i32 %7)
  store i16 %8, i16* %2, align 2
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @LINUX_SLL_BROADCAST, align 4
  %11 = call signext i16 @htons(i32 %10)
  store i16 %11, i16* %2, align 2
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @LINUX_SLL_MULTICAST, align 4
  %14 = call signext i16 @htons(i32 %13)
  store i16 %14, i16* %2, align 2
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @LINUX_SLL_OTHERHOST, align 4
  %17 = call signext i16 @htons(i32 %16)
  store i16 %17, i16* %2, align 2
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @LINUX_SLL_OUTGOING, align 4
  %20 = call signext i16 @htons(i32 %19)
  store i16 %20, i16* %2, align 2
  br label %22

21:                                               ; preds = %1
  store i16 -1, i16* %2, align 2
  br label %22

22:                                               ; preds = %21, %18, %15, %12, %9, %6
  %23 = load i16, i16* %2, align 2
  ret i16 %23
}

declare dso_local signext i16 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
