; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_envinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_envinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"ENVIRON\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ARR = common dso_local global i32 0, align 4
@symtab = common dso_local global i64 0, align 8
@NSYMTAB = common dso_local global i32 0, align 4
@ENVtab = common dso_local global i64 0, align 8
@STR = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @envinit(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %5 = load i32, i32* @ARR, align 4
  %6 = load i64, i64* @symtab, align 8
  %7 = call %struct.TYPE_3__* @setsymtab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), double 0.000000e+00, i32 %5, i64 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* @NSYMTAB, align 4
  %9 = call i64 @makesymtab(i32 %8)
  store i64 %9, i64* @ENVtab, align 8
  %10 = load i64, i64* @ENVtab, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %57, %1
  %15 = load i8**, i8*** %2, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load i8**, i8*** %2, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 61)
  store i8* %21, i8** %4, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %57

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = load i8**, i8*** %2, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 0, i8* %31, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @is_number(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i8**, i8*** %2, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call double @atof(i8* %40)
  %42 = load i32, i32* @STR, align 4
  %43 = load i32, i32* @NUM, align 4
  %44 = or i32 %42, %43
  %45 = load i64, i64* @ENVtab, align 8
  %46 = call %struct.TYPE_3__* @setsymtab(i8* %38, i8* %39, double %41, i32 %44, i64 %45)
  br label %54

47:                                               ; preds = %30
  %48 = load i8**, i8*** %2, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* @STR, align 4
  %52 = load i64, i64* @ENVtab, align 8
  %53 = call %struct.TYPE_3__* @setsymtab(i8* %49, i8* %50, double 0.000000e+00, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %36
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8 61, i8* %56, align 1
  br label %57

57:                                               ; preds = %54, %29, %23
  %58 = load i8**, i8*** %2, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %2, align 8
  br label %14

60:                                               ; preds = %14
  ret void
}

declare dso_local %struct.TYPE_3__* @setsymtab(i8*, i8*, double, i32, i64) #1

declare dso_local i64 @makesymtab(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @is_number(i8*) #1

declare dso_local double @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
