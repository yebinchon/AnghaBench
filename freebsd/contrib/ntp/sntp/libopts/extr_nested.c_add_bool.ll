; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_add_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_nested.c_add_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"bool val\00", align 1
@OPARG_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8**, i8*, i64, i8*, i64)* @add_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @add_bool(i8** %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 16
  %15 = add i64 %14, 1
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call %struct.TYPE_7__* @AGALOC(i64 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  br label %18

18:                                               ; preds = %28, %5
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @IS_WHITESPACE_CHAR(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  br label %18

33:                                               ; preds = %26
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %63

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @IS_DEC_DIGIT_CHAR(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @atoi(i8* %46)
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %62

52:                                               ; preds = %40
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @IS_FALSE_TYPE_CHAR(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %45
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* @OPARG_TYPE_BOOLEAN, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 1
  %69 = bitcast %struct.TYPE_7__* %68 to i8*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @memcpy(i8* %74, i8* %75, i64 %76)
  %78 = load i8, i8* @NUL, align 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %78, i8* %83, align 1
  %84 = load i8**, i8*** %6, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = call i32 @addArgListEntry(i8** %84, %struct.TYPE_7__* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  ret %struct.TYPE_7__* %87
}

declare dso_local %struct.TYPE_7__* @AGALOC(i64, i8*) #1

declare dso_local i64 @IS_WHITESPACE_CHAR(i8 signext) #1

declare dso_local i64 @IS_DEC_DIGIT_CHAR(i8 signext) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @IS_FALSE_TYPE_CHAR(i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @addArgListEntry(i8**, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
