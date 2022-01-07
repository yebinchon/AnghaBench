; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_result.c_isc_result_totext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_result.c_isc_result_totext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8**, i32, i32 }

@lock = common dso_local global i32 0, align 4
@tables = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_RESULT_UNAVAILABLESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"(result code text not available)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @isc_result_totext(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = call i32 (...) @initialize()
  %8 = call i32 @LOCK(i32* @lock)
  store i8* null, i8** %4, align 8
  %9 = load i32, i32* @tables, align 4
  %10 = call %struct.TYPE_5__* @ISC_LIST_HEAD(i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  br label %11

11:                                               ; preds = %51, %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load i64, i64* %2, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i8*, i8** %5, align 8
  %49 = call i8* @isc_msgcat_get(i32 %42, i32 %45, i32 %47, i8* %48)
  store i8* %49, i8** %4, align 8
  br label %55

50:                                               ; preds = %20, %14
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = load i32, i32* @link, align 4
  %54 = call %struct.TYPE_5__* @ISC_LIST_NEXT(%struct.TYPE_5__* %52, i32 %53)
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %3, align 8
  br label %11

55:                                               ; preds = %26, %11
  %56 = load i8*, i8** %4, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @isc_msgcat, align 4
  %60 = load i32, i32* @ISC_RESULT_UNAVAILABLESET, align 4
  %61 = call i8* @isc_msgcat_get(i32 %59, i32 %60, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = call i32 @UNLOCK(i32* @lock)
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @initialize(...) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_5__* @ISC_LIST_HEAD(i32) #1

declare dso_local i8* @isc_msgcat_get(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @ISC_LIST_NEXT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
