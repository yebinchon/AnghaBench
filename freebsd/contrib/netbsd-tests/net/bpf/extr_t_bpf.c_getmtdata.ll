; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/bpf/extr_t_bpf.c_getmtdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/bpf/extr_t_bpf.c_getmtdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbstat = type { i32* }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_MBUF = common dso_local global i32 0, align 4
@MBUF_STATS = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getmtdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getmtdata() #0 {
  %1 = alloca %struct.mbstat, align 8
  %2 = alloca i64, align 8
  %3 = alloca [3 x i32], align 4
  store i64 8, i64* %2, align 8
  %4 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @CTL_KERN, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @KERN_MBUF, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @MBUF_STATS, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %12 = call i32 @__arraycount(i32* %11)
  %13 = call i32 @rump_sys___sysctl(i32* %10, i32 %12, %struct.mbstat* %1, i64* %2, i32* null, i32 0)
  %14 = call i32 @RL(i32 %13)
  %15 = getelementptr inbounds %struct.mbstat, %struct.mbstat* %1, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @MT_DATA, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  ret i32 %19
}

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys___sysctl(i32*, i32, %struct.mbstat*, i64*, i32*, i32) #1

declare dso_local i32 @__arraycount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
