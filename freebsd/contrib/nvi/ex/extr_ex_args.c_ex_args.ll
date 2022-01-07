; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i8**, i32, i32* }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"114|No file list to display\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_args(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = icmp eq i8** %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = load i32, i32* @M_ERR, align 4
  %19 = call i32 @msgq(%struct.TYPE_7__* %17, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  store i8** %26, i8*** %11, align 8
  br label %27

27:                                               ; preds = %90, %20
  %28 = load i8**, i8*** %11, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = load i8**, i8*** %11, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i8**, i8*** %11, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = icmp eq i8** %37, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 0
  %44 = add nsw i32 %36, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = icmp sge i32 %47, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = call i32 @ex_puts(%struct.TYPE_7__* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %64

57:                                               ; preds = %31
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = call i32 @ex_puts(%struct.TYPE_7__* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load i8**, i8*** %11, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = icmp eq i8** %68, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %75 = load i8**, i8*** %11, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %11, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = icmp eq i8** %77, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %84 = call i32 @ex_printf(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %74, i8* %76, i8* %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = call i64 @INTERRUPTED(%struct.TYPE_7__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %64
  br label %93

89:                                               ; preds = %64
  br label %90

90:                                               ; preds = %89
  %91 = load i8**, i8*** %11, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %11, align 8
  br label %27

93:                                               ; preds = %88, %27
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = call i32 @ex_puts(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @msgq(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ex_puts(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ex_printf(%struct.TYPE_7__*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
