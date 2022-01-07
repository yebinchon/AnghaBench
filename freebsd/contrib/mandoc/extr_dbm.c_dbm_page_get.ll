; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_page_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_page_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_page = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@dbm_page_get.res = internal global %struct.dbm_page zeroinitializer, align 8
@npages = common dso_local global i64 0, align 8
@pages = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"(NULL)\00\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (NULL)\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dbm_page* @dbm_page_get(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp uge i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @npages, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @dbm_get(i64 %16)
  store i8* %17, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 0), align 8
  %18 = load i8*, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 0), align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @dbm_get(i64 %26)
  store i8* %27, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 1), align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 1), align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 1), align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @dbm_get(i64 %43)
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i8* [ %44, %38 ], [ null, %45 ]
  store i8* %47, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 2), align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @dbm_get(i64 %52)
  store i8* %53, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 3), align 8
  %54 = load i8*, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 3), align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 3), align 8
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %59 = load i64, i64* %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @dbm_get(i64 %62)
  store i8* %63, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 4), align 8
  %64 = load i8*, i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 4), align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 4), align 8
  br label %67

67:                                               ; preds = %66, %57
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pages, align 8
  %69 = load i64, i64* %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = call i32 @dbm_addr(%struct.TYPE_3__* %70)
  store i32 %71, i32* getelementptr inbounds (%struct.dbm_page, %struct.dbm_page* @dbm_page_get.res, i32 0, i32 5), align 8
  ret %struct.dbm_page* @dbm_page_get.res
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @dbm_get(i64) #1

declare dso_local i32 @dbm_addr(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
