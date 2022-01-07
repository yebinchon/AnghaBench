; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arp.c_atmarp_tpaddr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arp.c_atmarp_tpaddr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmarp_pkthdr = type { i32 }

@ETHERTYPE_IP = common dso_local global i64 0, align 8
@ETHERTYPE_TRAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"<wrong proto type>\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"<wrong tplen>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.atmarp_pkthdr*, i64)* @atmarp_tpaddr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmarp_tpaddr_print(i32* %0, %struct.atmarp_pkthdr* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.atmarp_pkthdr*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.atmarp_pkthdr* %1, %struct.atmarp_pkthdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ETHERTYPE_IP, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @ETHERTYPE_TRAIL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str to i32*))
  br label %34

17:                                               ; preds = %10, %3
  %18 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %5, align 8
  %19 = call i32 @ATMTPROTO_LEN(%struct.atmarp_pkthdr* %18)
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.1 to i32*))
  br label %33

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %5, align 8
  %28 = call i32 @ATMTPA(%struct.atmarp_pkthdr* %27)
  %29 = call i32 @ipaddr_string(i32* %26, i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  br label %33

33:                                               ; preds = %24, %21
  br label %34

34:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ATMTPROTO_LEN(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ipaddr_string(i32*, i32) #1

declare dso_local i32 @ATMTPA(%struct.atmarp_pkthdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
