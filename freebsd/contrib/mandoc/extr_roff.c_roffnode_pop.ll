; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roffnode_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roffnode_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.roffnode* }
%struct.roffnode = type { i64, %struct.roffnode*, %struct.roffnode*, %struct.roffnode* }

@ROFF_while = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*)* @roffnode_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roffnode_pop(%struct.roff* %0) #0 {
  %2 = alloca %struct.roff*, align 8
  %3 = alloca %struct.roffnode*, align 8
  %4 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %2, align 8
  %5 = load %struct.roff*, %struct.roff** %2, align 8
  %6 = getelementptr inbounds %struct.roff, %struct.roff* %5, i32 0, i32 0
  %7 = load %struct.roffnode*, %struct.roffnode** %6, align 8
  store %struct.roffnode* %7, %struct.roffnode** %3, align 8
  %8 = load %struct.roffnode*, %struct.roffnode** %3, align 8
  %9 = getelementptr inbounds %struct.roffnode, %struct.roffnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ROFF_while, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.roffnode*, %struct.roffnode** %3, align 8
  %15 = getelementptr inbounds %struct.roffnode, %struct.roffnode* %14, i32 0, i32 3
  %16 = load %struct.roffnode*, %struct.roffnode** %15, align 8
  %17 = load %struct.roff*, %struct.roff** %2, align 8
  %18 = getelementptr inbounds %struct.roff, %struct.roff* %17, i32 0, i32 0
  store %struct.roffnode* %16, %struct.roffnode** %18, align 8
  %19 = load %struct.roffnode*, %struct.roffnode** %3, align 8
  %20 = getelementptr inbounds %struct.roffnode, %struct.roffnode* %19, i32 0, i32 2
  %21 = load %struct.roffnode*, %struct.roffnode** %20, align 8
  %22 = call i32 @free(%struct.roffnode* %21)
  %23 = load %struct.roffnode*, %struct.roffnode** %3, align 8
  %24 = getelementptr inbounds %struct.roffnode, %struct.roffnode* %23, i32 0, i32 1
  %25 = load %struct.roffnode*, %struct.roffnode** %24, align 8
  %26 = call i32 @free(%struct.roffnode* %25)
  %27 = load %struct.roffnode*, %struct.roffnode** %3, align 8
  %28 = call i32 @free(%struct.roffnode* %27)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @free(%struct.roffnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
