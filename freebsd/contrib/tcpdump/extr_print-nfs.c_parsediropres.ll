; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsediropres.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsediropres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @parsediropres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsediropres(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @parsestatus(%struct.TYPE_6__* %7, i32* %8, i32* %6)
  store i32* %9, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %32

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @parsefh(%struct.TYPE_6__* %17, i32* %18, i32 0)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @parsefattr(%struct.TYPE_6__* %24, i32* %25, i32 %28, i32 0)
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %22, %15, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @parsestatus(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32* @parsefh(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32* @parsefattr(%struct.TYPE_6__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
