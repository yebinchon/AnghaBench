; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_result_text64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_result_text64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SQLITE_UTF16 = common dso_local global i8 0, align 1
@SQLITE_UTF16NATIVE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3_result_text64(%struct.TYPE_9__* %0, i8* %1, i32 %2, void (i8*)* %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (i8*)* %3, void (i8*)** %9, align 8
  store i8 %4, i8* %10, align 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sqlite3_mutex_held(i32 %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load void (i8*)*, void (i8*)** %9, align 8
  %21 = icmp ne void (i8*)* %20, @SQLITE_DYNAMIC
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @SQLITE_UTF16, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i8, i8* @SQLITE_UTF16NATIVE, align 1
  store i8 %30, i8* %10, align 1
  br label %31

31:                                               ; preds = %29, %5
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 2147483647
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = load void (i8*)*, void (i8*)** %9, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = call i32 @invokeValueDestructor(i8* %35, void (i8*)* %36, %struct.TYPE_9__* %37)
  br label %46

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i8, i8* %10, align 1
  %44 = load void (i8*)*, void (i8*)** %9, align 8
  %45 = call i32 @setResultStrOrError(%struct.TYPE_9__* %40, i8* %41, i32 %42, i8 zeroext %43, void (i8*)* %44)
  br label %46

46:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local void @SQLITE_DYNAMIC(i8*) #1

declare dso_local i32 @invokeValueDestructor(i8*, void (i8*)*, %struct.TYPE_9__*) #1

declare dso_local i32 @setResultStrOrError(%struct.TYPE_9__*, i8*, i32, i8 zeroext, void (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
