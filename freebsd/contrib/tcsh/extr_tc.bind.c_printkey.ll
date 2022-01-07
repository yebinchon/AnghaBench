; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_printkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_printkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeyFuncs = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i64* }

@STRQQ = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@FuncNames = common dso_local global %struct.KeyFuncs* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s\09->\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.TYPE_5__*)* @printkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printkey(i64* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.KeyFuncs*, align 8
  %6 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load i32, i32* @STRQQ, align 4
  %14 = call i8* @unparsestring(%struct.TYPE_5__* %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @xfree, align 4
  %17 = call i32 @cleanup_push(i8* %15, i32 %16)
  %18 = load %struct.KeyFuncs*, %struct.KeyFuncs** @FuncNames, align 8
  store %struct.KeyFuncs* %18, %struct.KeyFuncs** %5, align 8
  br label %19

19:                                               ; preds = %43, %11
  %20 = load %struct.KeyFuncs*, %struct.KeyFuncs** %5, align 8
  %21 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load %struct.KeyFuncs*, %struct.KeyFuncs** %5, align 8
  %26 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %27, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.KeyFuncs*, %struct.KeyFuncs** %5, align 8
  %39 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @xprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %24
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.KeyFuncs*, %struct.KeyFuncs** %5, align 8
  %45 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %44, i32 1
  store %struct.KeyFuncs* %45, %struct.KeyFuncs** %5, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @cleanup_until(i8* %47)
  br label %52

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = call i32 @PrintXkey(%struct.TYPE_5__* %50)
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

declare dso_local i8* @unparsestring(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @xprintf(i8*, i8*, i32) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @PrintXkey(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
