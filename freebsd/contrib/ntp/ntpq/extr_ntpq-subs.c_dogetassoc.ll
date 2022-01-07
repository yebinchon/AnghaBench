; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dogetassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dogetassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@CTL_OP_READSTAT = common dso_local global i32 0, align 4
@numhosts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"server=%s \00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"No association ID's returned\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"***Server returned %zu octets, should be multiple of 4\0A\00", align 1
@numassoc = common dso_local global i64 0, align 8
@assoc_cache_slots = common dso_local global i64 0, align 8
@assoc_cache = common dso_local global %struct.TYPE_2__* null, align 8
@debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"[%u] \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A%d associations total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dogetassoc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @CTL_OP_READSTAT, align 4
  %10 = call i32 @doquery(i32 %9, i32 0, i32 0, i32 0, i8* null, i32* %8, i64* %7, i8** %4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* @numhosts, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = load i8*, i8** @currenthost, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32*, i32** %3, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %102

29:                                               ; preds = %14
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, 3
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* @numhosts, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** @currenthost, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @stderr, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  store i32 0, i32* %2, align 4
  br label %102

44:                                               ; preds = %29
  store i64 0, i64* @numassoc, align 8
  br label %45

45:                                               ; preds = %90, %44
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load i64, i64* @numassoc, align 8
  %50 = load i64, i64* @assoc_cache_slots, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @grow_assoc_cache()
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ntohs(i32 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %62 = load i64, i64* @numassoc, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @ntohs(i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %73 = load i64, i64* @numassoc, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %77, i8** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, 8
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* @debug, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %54
  %83 = load i32, i32* @stderr, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @assoc_cache, align 8
  %85 = load i64, i64* @numassoc, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %82, %54
  %91 = load i64, i64* @numassoc, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* @numassoc, align 8
  br label %45

93:                                               ; preds = %45
  %94 = load i64, i64* @debug, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = load i64, i64* @numassoc, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = call i32 (...) @sortassoc()
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %40, %25, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @doquery(i32, i32, i32, i32, i8*, i32*, i64*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @grow_assoc_cache(...) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @sortassoc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
