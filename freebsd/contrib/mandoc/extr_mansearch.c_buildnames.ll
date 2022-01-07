; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_buildnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_buildnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_page = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dbm_page*)* @buildnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @buildnames(%struct.dbm_page* %0) #0 {
  %2 = alloca %struct.dbm_page*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dbm_page* %0, %struct.dbm_page** %2, align 8
  %6 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %7 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @lstlen(i32* %8, i32 2)
  %10 = add nsw i32 %9, 1
  %11 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %12 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @lstlen(i32* %13, i32 2)
  %15 = add nsw i32 %10, %14
  %16 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %17 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %23 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @lstlen(i32* %24, i32 2)
  %26 = add nsw i32 1, %25
  br label %27

27:                                               ; preds = %21, %20
  %28 = phi i32 [ 0, %20 ], [ %26, %21 ]
  %29 = add nsw i32 %15, %28
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i8* @mandoc_malloc(i64 %32)
  store i8* %33, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %36 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @lstcat(i8* %34, i64* %4, i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 40, i8* %42, align 1
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %45 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @lstcat(i8* %43, i64* %4, i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %49 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %27
  %53 = load i8*, i8** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 47, i8* %56, align 1
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.dbm_page*, %struct.dbm_page** %2, align 8
  %59 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @lstcat(i8* %57, i64* %4, i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %52, %27
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %4, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 41, i8* %66, align 1
  %67 = load i8*, i8** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %70, align 1
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

declare dso_local i32 @lstlen(i32*, i32) #1

declare dso_local i8* @mandoc_malloc(i64) #1

declare dso_local i32 @lstcat(i8*, i64*, i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
