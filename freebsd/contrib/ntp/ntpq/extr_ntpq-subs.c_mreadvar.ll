; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_mreadvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_mreadvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.parse = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MAXLIST = common dso_local global i32 0, align 4
@g_varlist = common dso_local global %struct.varlist* null, align 8
@assoc_cache = common dso_local global %struct.TYPE_4__* null, align 8
@CTL_OP_READVAR = common dso_local global i32 0, align 4
@TYPE_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @mreadvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mreadvar(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.varlist*, align 8
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @MAXLIST, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.varlist, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.parse*, %struct.parse** %3, align 8
  %17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @findassidrange(i32 %21, i32 %27, i32* %6, i32* %7, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %78

32:                                               ; preds = %2
  %33 = call i32 @ZERO(%struct.varlist* %15)
  %34 = load %struct.parse*, %struct.parse** %3, align 8
  %35 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.parse*, %struct.parse** %3, align 8
  %40 = getelementptr inbounds %struct.parse, %struct.parse* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @doaddvlist(%struct.varlist* %15, i32 %44)
  store %struct.varlist* %15, %struct.varlist** %10, align 8
  br label %48

46:                                               ; preds = %32
  %47 = load %struct.varlist*, %struct.varlist** @g_varlist, align 8
  store %struct.varlist* %47, %struct.varlist** %10, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %69, %48
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.varlist*, %struct.varlist** %10, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @assoc_cache, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CTL_OP_READVAR, align 4
  %63 = load i32, i32* @TYPE_PEER, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @dolist(%struct.varlist* %55, i32 %61, i32 %62, i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %50

72:                                               ; preds = %67, %50
  %73 = load %struct.varlist*, %struct.varlist** %10, align 8
  %74 = icmp eq %struct.varlist* %73, %15
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @doclearvlist(%struct.varlist* %15)
  br label %77

77:                                               ; preds = %75, %72
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %31
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @findassidrange(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @ZERO(%struct.varlist*) #2

declare dso_local i32 @doaddvlist(%struct.varlist*, i32) #2

declare dso_local i32 @dolist(%struct.varlist*, i32, i32, i32, i32*) #2

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
