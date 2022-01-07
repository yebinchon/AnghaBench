; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_ntileStepFunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_ntileStepFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NtileCtx = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"argument of ntile must be a positive integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @ntileStepFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntileStepFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.NtileCtx*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @UNUSED_PARAMETER(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @sqlite3_aggregate_context(i32* %14, i32 16)
  %16 = inttoptr i64 %15 to %struct.NtileCtx*
  store %struct.NtileCtx* %16, %struct.NtileCtx** %7, align 8
  %17 = load %struct.NtileCtx*, %struct.NtileCtx** %7, align 8
  %18 = icmp ne %struct.NtileCtx* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load %struct.NtileCtx*, %struct.NtileCtx** %7, align 8
  %21 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @sqlite3_value_int64(i32* %27)
  %29 = load %struct.NtileCtx*, %struct.NtileCtx** %7, align 8
  %30 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.NtileCtx*, %struct.NtileCtx** %7, align 8
  %32 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @sqlite3_result_error(i32* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %38

38:                                               ; preds = %35, %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.NtileCtx*, %struct.NtileCtx** %7, align 8
  %41 = getelementptr inbounds %struct.NtileCtx, %struct.NtileCtx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
