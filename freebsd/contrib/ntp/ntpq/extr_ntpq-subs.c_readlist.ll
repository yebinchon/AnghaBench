; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_readlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_readlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TYPE_SYS = common dso_local global i32 0, align 4
@TYPE_PEER = common dso_local global i32 0, align 4
@g_varlist = common dso_local global i32 0, align 4
@CTL_OP_READVAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @readlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readlist(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.parse*, %struct.parse** %3, align 8
  %8 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.parse*, %struct.parse** %3, align 8
  %14 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %32

21:                                               ; preds = %12
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @checkassocid(i64 %27)
  store i64 %28, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %48

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @TYPE_SYS, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @TYPE_PEER, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @g_varlist, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @CTL_OP_READVAR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @dolist(i32 %42, i64 %43, i32 %44, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %40, %30
  ret void
}

declare dso_local i64 @checkassocid(i64) #1

declare dso_local i32 @dolist(i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
