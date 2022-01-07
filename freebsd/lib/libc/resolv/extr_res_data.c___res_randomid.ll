; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_data.c___res_randomid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_data.c___res_randomid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@_res = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RES_INIT = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_randomid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* @_res, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RES_INIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = call i32 (...) @res_init()
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load i32, i32* @NETDB_INTERNAL, align 4
  %15 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_5__* %13, i32 %14)
  store i32 -1, i32* %1, align 4
  br label %19

16:                                               ; preds = %9, %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = call i32 @res_nrandomid(%struct.TYPE_5__* %17)
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @res_init(...) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @res_nrandomid(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
