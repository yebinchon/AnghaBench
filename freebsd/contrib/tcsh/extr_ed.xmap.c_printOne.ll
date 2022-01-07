; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_printOne.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_printOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.KeyFuncs = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@printOne.fmt = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%-15S-> \00", align 1
@STRQQ = common dso_local global i32 0, align 4
@STRBB = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@FuncNames = common dso_local global %struct.KeyFuncs* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"no input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printOne(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.KeyFuncs*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @xprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %61 [
    i32 128, label %15
    i32 129, label %15
    i32 130, label %35
  ]

15:                                               ; preds = %13, %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @STRQQ, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @STRBB, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i8* @unparsestring(i32* %17, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @xfree, align 4
  %29 = call i32 @cleanup_push(i8* %27, i32 %28)
  %30 = load i8*, i8** @printOne.fmt, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @xprintf(i8* %30, i8* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @cleanup_until(i8* %33)
  br label %63

35:                                               ; preds = %13
  %36 = load %struct.KeyFuncs*, %struct.KeyFuncs** @FuncNames, align 8
  store %struct.KeyFuncs* %36, %struct.KeyFuncs** %7, align 8
  br label %37

37:                                               ; preds = %57, %35
  %38 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %39 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %47 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i8*, i8** @printOne.fmt, align 8
  %52 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %53 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @xprintf(i8* %51, i8* %54)
  br label %56

56:                                               ; preds = %50, %42
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.KeyFuncs*, %struct.KeyFuncs** %7, align 8
  %59 = getelementptr inbounds %struct.KeyFuncs, %struct.KeyFuncs* %58, i32 1
  store %struct.KeyFuncs* %59, %struct.KeyFuncs** %7, align 8
  br label %37

60:                                               ; preds = %37
  br label %63

61:                                               ; preds = %13
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %60, %24
  br label %68

64:                                               ; preds = %3
  %65 = load i8*, i8** @printOne.fmt, align 8
  %66 = call i8* @CGETS(i32 9, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @xprintf(i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @xprintf(i8*, i8*) #1

declare dso_local i8* @unparsestring(i32*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @cleanup_until(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @CGETS(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
