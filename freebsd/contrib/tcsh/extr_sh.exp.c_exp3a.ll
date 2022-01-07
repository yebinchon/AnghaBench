; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp3a.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp3a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"exp3a p1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@xfree = common dso_local global i32 0, align 4
@compat_expr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"exp3a p2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8***, i32)* @exp3a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @exp3a(i8*** %0, i32 %1) #0 {
  %3 = alloca i8***, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8*** %0, i8**** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8***, i8**** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @exp4(i8*** %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8***, i8**** %3, align 8
  %14 = call i32 @etracc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12, i8*** %13)
  %15 = load i8***, i8**** %3, align 8
  %16 = load i8**, i8*** %15, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %86

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @any(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %26
  %37 = load i8***, i8**** %3, align 8
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %37, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @xfree, align 4
  %42 = call i32 @cleanup_push(i8* %40, i32 %41)
  %43 = load i64, i64* @compat_expr, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i8***, i8**** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @exp3a(i8*** %46, i32 %47)
  br label %53

49:                                               ; preds = %36
  %50 = load i8***, i8**** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @exp4(i8*** %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i8* [ %48, %45 ], [ %52, %49 ]
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @xfree, align 4
  %57 = call i32 @cleanup_push(i8* %55, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i8***, i8**** %3, align 8
  %60 = call i32 @etracc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8*** %59)
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 60
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @egetn(i8* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @egetn(i8* %69)
  %71 = shl i32 %68, %70
  store i32 %71, i32* %8, align 4
  br label %78

72:                                               ; preds = %53
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @egetn(i8* %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @egetn(i8* %75)
  %77 = ashr i32 %74, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @cleanup_until(i8* %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i8* @putn(i32 %81)
  store i8* %82, i8** %5, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8***, i8**** %3, align 8
  %85 = call i32 @etracc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %83, i8*** %84)
  br label %86

86:                                               ; preds = %78, %26, %20, %2
  %87 = load i8*, i8** %5, align 8
  ret i8* %87
}

declare dso_local i8* @exp4(i8***, i32) #1

declare dso_local i32 @etracc(i8*, i8*, i8***) #1

declare dso_local i64 @any(i8*, i8 signext) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @egetn(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i8* @putn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
