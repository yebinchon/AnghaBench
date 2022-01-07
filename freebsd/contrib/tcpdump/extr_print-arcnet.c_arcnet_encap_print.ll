; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_encap_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_encap_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"et1 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*, i32, i32)* @arcnet_encap_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcnet_encap_print(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %47 [
    i32 129, label %13
    i32 131, label %13
    i32 132, label %18
    i32 134, label %23
    i32 135, label %23
    i32 128, label %23
    i32 133, label %29
    i32 130, label %42
  ]

13:                                               ; preds = %5, %5
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @ip_print(%struct.TYPE_9__* %14, i32* %15, i32 %16)
  store i32 1, i32* %6, align 4
  br label %48

18:                                               ; preds = %5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ip6_print(%struct.TYPE_9__* %19, i32* %20, i32 %21)
  store i32 1, i32* %6, align 4
  br label %48

23:                                               ; preds = %5, %5, %5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @arp_print(%struct.TYPE_9__* %24, i32* %25, i32 %26, i32 %27)
  store i32 1, i32* %6, align 4
  br label %48

29:                                               ; preds = %5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([5 x i8]* @.str to %struct.TYPE_9__*))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @atalk_print(%struct.TYPE_9__* %38, i32* %39, i32 %40)
  store i32 1, i32* %6, align 4
  br label %48

42:                                               ; preds = %5
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ipx_print(%struct.TYPE_9__* %43, i32* %44, i32 %45)
  store i32 1, i32* %6, align 4
  br label %48

47:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %42, %37, %23, %18, %13
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @ip_print(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @ip6_print(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @arp_print(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @atalk_print(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @ipx_print(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
