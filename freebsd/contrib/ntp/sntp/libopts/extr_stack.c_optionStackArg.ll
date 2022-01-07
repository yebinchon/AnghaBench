; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_stack.c_optionStackArg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_stack.c_optionStackArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_8__ = type { i32* }

@OPTST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"stack arg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionStackArg(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i64 @INQUERY_CALL(i32* %8, %struct.TYPE_9__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OPTST_RESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %35, %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %40
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call i32 @AGFREE(%struct.TYPE_10__* %42)
  br label %31

44:                                               ; preds = %31
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = call i32 @AGFREE(%struct.TYPE_10__* %45)
  br label %66

47:                                               ; preds = %13
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %66

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @AGDUPSTR(i8* %55, i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @VOIDP(i8* %63)
  %65 = call i32 @addArgListEntry(%struct.TYPE_10__** %62, i32 %64)
  br label %66

66:                                               ; preds = %12, %26, %53, %54, %44
  ret void
}

declare dso_local i64 @INQUERY_CALL(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @AGFREE(%struct.TYPE_10__*) #1

declare dso_local i32 @AGDUPSTR(i8*, i32*, i8*) #1

declare dso_local i32 @addArgListEntry(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @VOIDP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
