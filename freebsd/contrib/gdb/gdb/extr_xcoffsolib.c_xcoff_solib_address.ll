; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffsolib.c_xcoff_solib_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffsolib.c_xcoff_solib_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i64, i64, i64*, i32, %struct.vmap* }

@xcoff_solib_address.buffer = internal global i8* null, align 8
@vmap = common dso_local global %struct.vmap* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xcoff_solib_address(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vmap*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  store %struct.vmap* %5, %struct.vmap** %4, align 8
  %6 = load %struct.vmap*, %struct.vmap** %4, align 8
  %7 = icmp eq %struct.vmap* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %59

9:                                                ; preds = %1
  %10 = load %struct.vmap*, %struct.vmap** %4, align 8
  %11 = getelementptr inbounds %struct.vmap, %struct.vmap* %10, i32 0, i32 4
  %12 = load %struct.vmap*, %struct.vmap** %11, align 8
  store %struct.vmap* %12, %struct.vmap** %4, align 8
  br label %13

13:                                               ; preds = %54, %9
  %14 = load %struct.vmap*, %struct.vmap** %4, align 8
  %15 = icmp ne %struct.vmap* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load %struct.vmap*, %struct.vmap** %4, align 8
  %18 = getelementptr inbounds %struct.vmap, %struct.vmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.vmap*, %struct.vmap** %4, align 8
  %25 = getelementptr inbounds %struct.vmap, %struct.vmap* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load i8*, i8** @xcoff_solib_address.buffer, align 8
  %30 = call i32 @xfree(i8* %29)
  %31 = load %struct.vmap*, %struct.vmap** %4, align 8
  %32 = getelementptr inbounds %struct.vmap, %struct.vmap* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vmap*, %struct.vmap** %4, align 8
  %35 = getelementptr inbounds %struct.vmap, %struct.vmap* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.vmap*, %struct.vmap** %4, align 8
  %42 = getelementptr inbounds %struct.vmap, %struct.vmap* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.vmap*, %struct.vmap** %4, align 8
  %45 = getelementptr inbounds %struct.vmap, %struct.vmap* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @xasprintf(i8** @xcoff_solib_address.buffer, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %40, i64* %43, i8* %50)
  %52 = load i8*, i8** @xcoff_solib_address.buffer, align 8
  store i8* %52, i8** %2, align 8
  br label %59

53:                                               ; preds = %22, %16
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.vmap*, %struct.vmap** %4, align 8
  %56 = getelementptr inbounds %struct.vmap, %struct.vmap* %55, i32 0, i32 4
  %57 = load %struct.vmap*, %struct.vmap** %56, align 8
  store %struct.vmap* %57, %struct.vmap** %4, align 8
  br label %13

58:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %59

59:                                               ; preds = %58, %28, %8
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
