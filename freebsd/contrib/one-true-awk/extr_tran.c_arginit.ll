; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_arginit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_arginit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ARGC\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NUM = common dso_local global i32 0, align 4
@symtab = common dso_local global i64 0, align 8
@ARGC = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@ARR = common dso_local global i32 0, align 4
@NSYMTAB = common dso_local global i32 0, align 4
@ARGVtab = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arginit(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [50 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sitofp i32 %8 to double
  %10 = load i32, i32* @NUM, align 4
  %11 = load i64, i64* @symtab, align 8
  %12 = call %struct.TYPE_3__* @setsymtab(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), double %9, i32 %10, i64 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32* %13, i32** @ARGC, align 8
  %14 = load i32, i32* @ARR, align 4
  %15 = load i64, i64* @symtab, align 8
  %16 = call %struct.TYPE_3__* @setsymtab(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), double 0.000000e+00, i32 %14, i64 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load i32, i32* @NSYMTAB, align 4
  %18 = call i64 @makesymtab(i32 %17)
  store i64 %18, i64* @ARGVtab, align 8
  %19 = load i64, i64* @ARGVtab, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %57, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @is_number(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call double @atof(i8* %40)
  %42 = load i32, i32* @STR, align 4
  %43 = load i32, i32* @NUM, align 4
  %44 = or i32 %42, %43
  %45 = load i64, i64* @ARGVtab, align 8
  %46 = call %struct.TYPE_3__* @setsymtab(i8* %36, i8* %38, double %41, i32 %44, i64 %45)
  br label %54

47:                                               ; preds = %27
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @STR, align 4
  %52 = load i64, i64* @ARGVtab, align 8
  %53 = call %struct.TYPE_3__* @setsymtab(i8* %48, i8* %50, double 0.000000e+00, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %35
  %55 = load i8**, i8*** %4, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %4, align 8
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %23

60:                                               ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_3__* @setsymtab(i8*, i8*, double, i32, i64) #1

declare dso_local i64 @makesymtab(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @is_number(i8*) #1

declare dso_local double @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
