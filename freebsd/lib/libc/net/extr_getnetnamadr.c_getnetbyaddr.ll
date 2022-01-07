; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetnamadr.c_getnetbyaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetnamadr.c_getnetbyaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i32 }
%struct.netdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netent* @getnetbyaddr(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.netent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdata*, align 8
  %7 = alloca %struct.netent*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call %struct.netdata* (...) @__netdata_init()
  store %struct.netdata* %9, %struct.netdata** %6, align 8
  %10 = icmp eq %struct.netdata* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.netent* null, %struct.netent** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.netdata*, %struct.netdata** %6, align 8
  %16 = getelementptr inbounds %struct.netdata, %struct.netdata* %15, i32 0, i32 1
  %17 = load %struct.netdata*, %struct.netdata** %6, align 8
  %18 = getelementptr inbounds %struct.netdata, %struct.netdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @getnetbyaddr_r(i32 %13, i32 %14, i32* %16, i32 %19, i32 4, %struct.netent** %7, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store %struct.netent* null, %struct.netent** %3, align 8
  br label %25

23:                                               ; preds = %12
  %24 = load %struct.netent*, %struct.netent** %7, align 8
  store %struct.netent* %24, %struct.netent** %3, align 8
  br label %25

25:                                               ; preds = %23, %22, %11
  %26 = load %struct.netent*, %struct.netent** %3, align 8
  ret %struct.netent* %26
}

declare dso_local %struct.netdata* @__netdata_init(...) #1

declare dso_local i64 @getnetbyaddr_r(i32, i32, i32*, i32, i32, %struct.netent**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
