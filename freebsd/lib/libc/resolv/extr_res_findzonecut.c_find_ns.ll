; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_find_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_find_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i8*)* @find_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @find_ns(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_6__* @HEAD(i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @ns_samename(i32 %16, i8* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %3, align 8
  br label %28

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i32, i32* @link, align 4
  %26 = call %struct.TYPE_6__* @NEXT(%struct.TYPE_6__* %24, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %6, align 8
  br label %10

27:                                               ; preds = %10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %29
}

declare dso_local %struct.TYPE_6__* @HEAD(i32) #1

declare dso_local i32 @ns_samename(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @NEXT(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
