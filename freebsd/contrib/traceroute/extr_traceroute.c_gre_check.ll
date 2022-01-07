; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_gre_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_gre_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grehdr = type { i32, i32 }

@port = common dso_local global i64 0, align 8
@ident = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gre_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grehdr*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.grehdr*
  store %struct.grehdr* %7, %struct.grehdr** %5, align 8
  %8 = load %struct.grehdr*, %struct.grehdr** %5, align 8
  %9 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ntohs(i32 %10)
  %12 = load i64, i64* @port, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.grehdr*, %struct.grehdr** %5, align 8
  %16 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntohs(i32 %17)
  %19 = load i64, i64* @ident, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = icmp eq i64 %18, %22
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i1 [ false, %2 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
