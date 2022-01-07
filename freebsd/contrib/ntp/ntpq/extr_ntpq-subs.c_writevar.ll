; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_writevar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_writevar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.varlist = type { i32 }

@MAXLIST = common dso_local global i32 0, align 4
@CTL_OP_WRITEVAR = common dso_local global i32 0, align 4
@numhosts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"server=%s \00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"done! (no data returned)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"associd=%u \00", align 1
@TYPE_SYS = common dso_local global i32 0, align 4
@TYPE_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @writevar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writevar(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @MAXLIST, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca %struct.varlist, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.parse*, %struct.parse** %3, align 8
  %19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %37

26:                                               ; preds = %2
  %27 = load %struct.parse*, %struct.parse** %3, align 8
  %28 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @checkassocid(i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %13, align 4
  br label %86

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = call i32 @ZERO(%struct.varlist* %17)
  %39 = load %struct.parse*, %struct.parse** %3, align 8
  %40 = getelementptr inbounds %struct.parse, %struct.parse* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @doaddvlist(%struct.varlist* %17, i32 %44)
  %46 = load i32, i32* @CTL_OP_WRITEVAR, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @doquerylist(%struct.varlist* %17, i32 %46, i64 %47, i32 1, i64* %10, i64* %9, i8** %5)
  store i32 %48, i32* %6, align 4
  %49 = call i32 @doclearvlist(%struct.varlist* %17)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 1, i32* %13, align 4
  br label %86

53:                                               ; preds = %37
  %54 = load i32, i32* @numhosts, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** @currenthost, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %85

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 0, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @TYPE_SYS, align 4
  br label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @TYPE_PEER, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %10, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @printvars(i64 %78, i8* %79, i32 %81, i32 %82, i32 0, i32* %83)
  br label %85

85:                                               ; preds = %76, %63
  store i32 1, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %52, %35
  %87 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %87)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @checkassocid(i64) #2

declare dso_local i32 @ZERO(%struct.varlist*) #2

declare dso_local i32 @doaddvlist(%struct.varlist*, i32) #2

declare dso_local i32 @doquerylist(%struct.varlist*, i32, i64, i32, i64*, i64*, i8**) #2

declare dso_local i32 @doclearvlist(%struct.varlist*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @printvars(i64, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
