; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_buildoutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_buildoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_page = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"all\00\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" # \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.dbm_page*)* @buildoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @buildoutput(i64 %0, %struct.dbm_page* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dbm_page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.dbm_page* %1, %struct.dbm_page** %5, align 8
  %14 = load i64, i64* %4, align 8
  switch i64 %14, label %36 [
    i64 131, label %15
    i64 130, label %20
    i64 128, label %24
    i64 129, label %28
  ]

15:                                               ; preds = %2
  %16 = load %struct.dbm_page*, %struct.dbm_page** %5, align 8
  %17 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @mandoc_strdup(i32 %18)
  store i8* %19, i8** %3, align 8
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.dbm_page*, %struct.dbm_page** %5, align 8
  %22 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.dbm_page*, %struct.dbm_page** %5, align 8
  %26 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.dbm_page*, %struct.dbm_page** %5, align 8
  %30 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %35

35:                                               ; preds = %34, %28
  br label %37

36:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  br label %37

37:                                               ; preds = %36, %35, %24, %20
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @lstlen(i8* %41, i32 3)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @mandoc_malloc(i64 %45)
  store i8* %46, i8** %9, align 8
  store i64 0, i64* %13, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @lstcat(i8* %47, i64* %13, i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  %53 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %53, align 1
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %3, align 8
  br label %86

60:                                               ; preds = %37
  store i8* null, i8** %9, align 8
  %61 = load i64, i64* %4, align 8
  %62 = sub i64 %61, 2
  %63 = load %struct.dbm_page*, %struct.dbm_page** %5, align 8
  %64 = getelementptr inbounds %struct.dbm_page, %struct.dbm_page* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dbm_macro_bypage(i64 %62, i32 %65)
  br label %67

67:                                               ; preds = %76, %60
  %68 = call i8* (...) @dbm_macro_next()
  store i8* %68, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %76

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  store i8* %75, i8** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @mandoc_asprintf(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %77, i8* %78, i8* %79)
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %10, align 8
  store i8* %83, i8** %9, align 8
  br label %67

84:                                               ; preds = %67
  %85 = load i8*, i8** %9, align 8
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %84, %40, %15
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i8* @mandoc_strdup(i32) #1

declare dso_local i32 @lstlen(i8*, i32) #1

declare dso_local i8* @mandoc_malloc(i64) #1

declare dso_local i32 @lstcat(i8*, i64*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dbm_macro_bypage(i64, i32) #1

declare dso_local i8* @dbm_macro_next(...) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
