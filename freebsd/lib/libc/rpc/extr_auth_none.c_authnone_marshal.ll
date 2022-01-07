; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_none.c_authnone_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_none.c_authnone_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authnone_private = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }

@authnone_private = common dso_local global %struct.authnone_private* null, align 8
@authnone_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @authnone_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authnone_marshal(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.authnone_private*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.authnone_private*, %struct.authnone_private** @authnone_private, align 8
  store %struct.authnone_private* %12, %struct.authnone_private** %6, align 8
  %13 = load %struct.authnone_private*, %struct.authnone_private** %6, align 8
  %14 = icmp eq %struct.authnone_private* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @mutex_unlock(i32* @authnone_lock)
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load %struct.authnone_private*, %struct.authnone_private** %6, align 8
  %26 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.authnone_private*, %struct.authnone_private** %6, align 8
  %29 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %23(%struct.TYPE_6__* %24, i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = call i32 @mutex_unlock(i32* @authnone_lock)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
