; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_clockvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_clockvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.varlist = type { i32 }

@MAXLIST = common dso_local global i32 0, align 4
@CTL_OP_READCLOCK = common dso_local global i32 0, align 4
@TYPE_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @clockvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clockvar(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @MAXLIST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca %struct.varlist, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.parse*, %struct.parse** %3, align 8
  %14 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.parse*, %struct.parse** %3, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %2
  store i64 0, i64* %5, align 8
  br label %37

26:                                               ; preds = %17
  %27 = load %struct.parse*, %struct.parse** %3, align 8
  %28 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @checkassocid(i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %58

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = call i32 @ZERO(%struct.varlist* %12)
  %39 = load %struct.parse*, %struct.parse** %3, align 8
  %40 = getelementptr inbounds %struct.parse, %struct.parse* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.parse*, %struct.parse** %3, align 8
  %45 = getelementptr inbounds %struct.parse, %struct.parse* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @doaddvlist(%struct.varlist* %12, i32 %49)
  br label %51

51:                                               ; preds = %43, %37
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @CTL_OP_READCLOCK, align 4
  %54 = load i32, i32* @TYPE_CLOCK, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @dolist(%struct.varlist* %12, i64 %52, i32 %53, i32 %54, i32* %55)
  %57 = call i32 @doclearvlist(%struct.varlist* %12)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %35
  %59 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @checkassocid(i64) #2

declare dso_local i32 @ZERO(%struct.varlist*) #2

declare dso_local i32 @doaddvlist(%struct.varlist*, i32) #2

declare dso_local i32 @dolist(%struct.varlist*, i64, i32, i32, i32*) #2

declare dso_local i32 @doclearvlist(%struct.varlist*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
