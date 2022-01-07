; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i64, i64, i64, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.uni*, i32, i8*, i8*, i8*)* }

@.str = private unnamed_addr constant [13 x i8] c"working: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"work queue: %sempty\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"delayed work queue: %sempty\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"coordinator: %s\0A\00", align 1
@custat_names = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"reset-start: %s\0A\00", align 1
@globstat_names = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"reset-respond: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_status(%struct.uni* %0, i8* %1) #0 {
  %3 = alloca %struct.uni*, align 8
  %4 = alloca i8*, align 8
  store %struct.uni* %0, %struct.uni** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.uni*, %struct.uni** %3, align 8
  %6 = getelementptr inbounds %struct.uni, %struct.uni* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.uni*, i32, i8*, i8*, i8*)*, i32 (%struct.uni*, i32, i8*, i8*, i8*)** %8, align 8
  %10 = load %struct.uni*, %struct.uni** %3, align 8
  %11 = load %struct.uni*, %struct.uni** %3, align 8
  %12 = getelementptr inbounds %struct.uni, %struct.uni* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.uni*, %struct.uni** %3, align 8
  %16 = getelementptr inbounds %struct.uni, %struct.uni* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 %9(%struct.uni* %10, i32 %13, i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.uni*, %struct.uni** %3, align 8
  %23 = getelementptr inbounds %struct.uni, %struct.uni* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.uni*, i32, i8*, i8*, i8*)*, i32 (%struct.uni*, i32, i8*, i8*, i8*)** %25, align 8
  %27 = load %struct.uni*, %struct.uni** %3, align 8
  %28 = load %struct.uni*, %struct.uni** %3, align 8
  %29 = getelementptr inbounds %struct.uni, %struct.uni* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.uni*, %struct.uni** %3, align 8
  %33 = getelementptr inbounds %struct.uni, %struct.uni* %32, i32 0, i32 6
  %34 = call i64 @TAILQ_EMPTY(i32* %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %38 = call i32 %26(%struct.uni* %27, i32 %30, i8* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load %struct.uni*, %struct.uni** %3, align 8
  %40 = getelementptr inbounds %struct.uni, %struct.uni* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.uni*, i32, i8*, i8*, i8*)*, i32 (%struct.uni*, i32, i8*, i8*, i8*)** %42, align 8
  %44 = load %struct.uni*, %struct.uni** %3, align 8
  %45 = load %struct.uni*, %struct.uni** %3, align 8
  %46 = getelementptr inbounds %struct.uni, %struct.uni* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.uni*, %struct.uni** %3, align 8
  %50 = getelementptr inbounds %struct.uni, %struct.uni* %49, i32 0, i32 5
  %51 = call i64 @TAILQ_EMPTY(i32* %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %55 = call i32 %43(%struct.uni* %44, i32 %47, i8* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  %56 = load %struct.uni*, %struct.uni** %3, align 8
  %57 = getelementptr inbounds %struct.uni, %struct.uni* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.uni*, i32, i8*, i8*, i8*)*, i32 (%struct.uni*, i32, i8*, i8*, i8*)** %59, align 8
  %61 = load %struct.uni*, %struct.uni** %3, align 8
  %62 = load %struct.uni*, %struct.uni** %3, align 8
  %63 = getelementptr inbounds %struct.uni, %struct.uni* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i8**, i8*** @custat_names, align 8
  %67 = load %struct.uni*, %struct.uni** %3, align 8
  %68 = getelementptr inbounds %struct.uni, %struct.uni* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 %60(%struct.uni* %61, i32 %64, i8* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  %73 = load %struct.uni*, %struct.uni** %3, align 8
  %74 = getelementptr inbounds %struct.uni, %struct.uni* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.uni*, i32, i8*, i8*, i8*)*, i32 (%struct.uni*, i32, i8*, i8*, i8*)** %76, align 8
  %78 = load %struct.uni*, %struct.uni** %3, align 8
  %79 = load %struct.uni*, %struct.uni** %3, align 8
  %80 = getelementptr inbounds %struct.uni, %struct.uni* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i8**, i8*** @globstat_names, align 8
  %84 = load %struct.uni*, %struct.uni** %3, align 8
  %85 = getelementptr inbounds %struct.uni, %struct.uni* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 %77(%struct.uni* %78, i32 %81, i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  %90 = load %struct.uni*, %struct.uni** %3, align 8
  %91 = getelementptr inbounds %struct.uni, %struct.uni* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.uni*, i32, i8*, i8*, i8*)*, i32 (%struct.uni*, i32, i8*, i8*, i8*)** %93, align 8
  %95 = load %struct.uni*, %struct.uni** %3, align 8
  %96 = load %struct.uni*, %struct.uni** %3, align 8
  %97 = getelementptr inbounds %struct.uni, %struct.uni* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i8**, i8*** @globstat_names, align 8
  %101 = load %struct.uni*, %struct.uni** %3, align 8
  %102 = getelementptr inbounds %struct.uni, %struct.uni* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 %94(%struct.uni* %95, i32 %98, i8* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  ret void
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
