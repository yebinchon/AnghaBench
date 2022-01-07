; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_man_free1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_man_free1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*)* @roff_man_free1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_man_free1(%struct.roff_man* %0) #0 {
  %2 = alloca %struct.roff_man*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %2, align 8
  %3 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %4 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %10 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %11 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @roff_node_delete(%struct.roff_man* %9, i32* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %17 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @free(i32 %19)
  %21 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %22 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @free(i32 %24)
  %26 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %27 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free(i32 %29)
  %31 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %32 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @free(i32 %34)
  %36 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %37 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free(i32 %39)
  %41 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %42 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @free(i32 %44)
  %46 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %47 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @free(i32 %49)
  %51 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %52 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @free(i32 %54)
  ret void
}

declare dso_local i32 @roff_node_delete(%struct.roff_man*, i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
