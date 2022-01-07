; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dolist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i32* }

@old_rv = common dso_local global i64 0, align 8
@numhosts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"server=%s \00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"No system%s variables returned\0A\00", align 1
@TYPE_CLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" clock\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"No information returned for%s association %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"associd=%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varlist*, i32, i32, i32, i32*)* @dolist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dolist(%struct.varlist* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.varlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.varlist* %0, %struct.varlist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @old_rv, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %26

20:                                               ; preds = %5
  %21 = load %struct.varlist*, %struct.varlist** %7, align 8
  %22 = getelementptr inbounds %struct.varlist, %struct.varlist* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load %struct.varlist*, %struct.varlist** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @doquerylist(%struct.varlist* %27, i32 %28, i32 %29, i32 0, i64* %15, i64* %14, i8** %12)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %81

34:                                               ; preds = %26
  %35 = load i32, i32* @numhosts, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = load i8*, i8** @currenthost, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %14, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @TYPE_CLOCK, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %64

55:                                               ; preds = %44
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TYPE_CLOCK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %47
  store i32 1, i32* %6, align 4
  br label %81

65:                                               ; preds = %41
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %14, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i64, i64* %15, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @printvars(i64 %73, i8* %74, i32 %76, i32 %77, i32 %78, i32* %79)
  store i32 1, i32* %6, align 4
  br label %81

81:                                               ; preds = %72, %64, %33
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @doquerylist(%struct.varlist*, i32, i32, i32, i64*, i64*, i8**) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @printvars(i64, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
