; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_find_port_dr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_ibnd_find_port_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i64* }

@.str = private unnamed_addr constant [23 x i8] c"fabric parameter NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dr_str parameter NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ibnd_find_port_dr(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %76

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %76

20:                                               ; preds = %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @str2drpath(%struct.TYPE_13__* %9, i8* %24, i32 0, i32 0)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %76

28:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %29
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %71

43:                                               ; preds = %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %45, align 8
  %47 = icmp ne %struct.TYPE_9__** %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %76

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %10, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %49
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %76

66:                                               ; preds = %49
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %8, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %7, align 8
  br label %71

71:                                               ; preds = %66, %42
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %3, align 8
  br label %76

76:                                               ; preds = %74, %65, %48, %27, %18, %13
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %77
}

declare dso_local i32 @IBND_DEBUG(i8*) #1

declare dso_local i32 @str2drpath(%struct.TYPE_13__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
