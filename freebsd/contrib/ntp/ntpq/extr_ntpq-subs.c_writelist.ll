; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_writelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_writelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@g_varlist = common dso_local global i32 0, align 4
@CTL_OP_WRITEVAR = common dso_local global i32 0, align 4
@numhosts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"server=%s \00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"done! (no data returned)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"associd=%u \00", align 1
@TYPE_PEER = common dso_local global i32 0, align 4
@TYPE_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @writelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writelist(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.parse*, %struct.parse** %3, align 8
  %11 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.parse*, %struct.parse** %3, align 8
  %17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.parse*, %struct.parse** %3, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @checkassocid(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %76

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* @g_varlist, align 4
  %38 = load i32, i32* @CTL_OP_WRITEVAR, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @doquerylist(i32 %37, i32 %38, i64 %39, i32 1, i64* %9, i64* %8, i8** %5)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %76

44:                                               ; preds = %36
  %45 = load i32, i32* @numhosts, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** @currenthost, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

57:                                               ; preds = %51
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @TYPE_PEER, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @TYPE_SYS, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @printvars(i64 %61, i8* %62, i32 %64, i32 %72, i32 0, i32* %73)
  br label %75

75:                                               ; preds = %71, %54
  br label %76

76:                                               ; preds = %75, %43, %33
  ret void
}

declare dso_local i64 @checkassocid(i64) #1

declare dso_local i32 @doquerylist(i32, i32, i64, i32, i64*, i64*, i8**) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @printvars(i64, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
