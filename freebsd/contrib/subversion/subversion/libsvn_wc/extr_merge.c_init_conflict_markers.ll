; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_init_conflict_markers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_init_conflict_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"<<<<<<< %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"<<<<<<< .working\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"||||||| %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"||||||| .old\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c">>>>>>> %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c">>>>>>> .new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, i8*, i8*, i8*, i32*)* @init_conflict_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_conflict_markers(i8** %0, i8** %1, i8** %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load i32*, i32** %14, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i8* @apr_psprintf(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8**, i8*** %8, align 8
  store i8* %20, i8** %21, align 8
  br label %24

22:                                               ; preds = %7
  %23 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %14, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i8* @apr_psprintf(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** %9, align 8
  store i8* %30, i8** %31, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %33, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* @apr_psprintf(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %43, align 8
  br label %44

44:                                               ; preds = %42, %37
  ret void
}

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
