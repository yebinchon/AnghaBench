; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_peers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@drefid = common dso_local global i64 0, align 8
@REFID_HASH = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peers(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* @drefid, align 8
  %7 = load i64, i64* @REFID_HASH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.parse*, %struct.parse** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @apeers(%struct.parse* %10, i32* %11)
  br label %34

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %14 = load %struct.parse*, %struct.parse** %3, align 8
  %15 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.parse*, %struct.parse** %3, align 8
  %20 = getelementptr inbounds %struct.parse, %struct.parse* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @AF_INET6, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @AF_INET, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dopeers(i32 0, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @apeers(%struct.parse*, i32*) #1

declare dso_local i32 @dopeers(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
