; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_set_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_set_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.cpswp_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @cpswp_set_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpswp_set_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpswp_softc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cpswp_softc*
  store %struct.cpswp_softc* %10, %struct.cpswp_softc** %7, align 8
  %11 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %12 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %19 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = shl i32 1, %21
  %23 = or i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %3
  store i32 7, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %27 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %31 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %34 = call i32 @LLADDR(%struct.sockaddr_dl* %33)
  %35 = call i32 @cpsw_ale_mc_entry_set(%struct.TYPE_2__* %28, i32 %29, i32 %32, i32 %34)
  ret i32 1
}

declare dso_local i32 @cpsw_ale_mc_entry_set(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
