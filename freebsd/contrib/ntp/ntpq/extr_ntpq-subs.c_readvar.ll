; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_readvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_readvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.varlist = type { i32 }

@MAXLIST = common dso_local global i32 0, align 4
@TYPE_SYS = common dso_local global i32 0, align 4
@TYPE_PEER = common dso_local global i32 0, align 4
@CTL_OP_READVAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @readvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readvar(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @MAXLIST, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca %struct.varlist, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.parse*, %struct.parse** %3, align 8
  %17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.parse*, %struct.parse** %3, align 8
  %22 = getelementptr inbounds %struct.parse, %struct.parse* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %2
  store i64 0, i64* %5, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.parse*, %struct.parse** %3, align 8
  %31 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @checkassocid(i64 %35)
  store i64 %36, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %85

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = call i32 @ZERO(%struct.varlist* %15)
  %42 = load %struct.parse*, %struct.parse** %3, align 8
  %43 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.parse*, %struct.parse** %3, align 8
  %48 = getelementptr inbounds %struct.parse, %struct.parse* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %66, %46
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.parse*, %struct.parse** %3, align 8
  %58 = getelementptr inbounds %struct.parse, %struct.parse* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 1, %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @doaddvlist(%struct.varlist* %15, i32 %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %52

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 0, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @TYPE_SYS, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @TYPE_PEER, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %8, align 4
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* @CTL_OP_READVAR, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @dolist(%struct.varlist* %15, i64 %79, i32 %80, i32 %81, i32* %82)
  %84 = call i32 @doclearvlist(%struct.varlist* %15)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %77, %38
  %86 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %11, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
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
