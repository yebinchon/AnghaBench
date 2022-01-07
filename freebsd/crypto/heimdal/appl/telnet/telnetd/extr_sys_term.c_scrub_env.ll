; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_scrub_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_scrub_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scrub_env.reject = internal global [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"TERMCAP=/\00", align 1
@scrub_env.accept = internal global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"XAUTH=\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"XAUTHORITY=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DISPLAY=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TERM=\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"EDITOR=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PAGER=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"PRINTER=\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"LOGNAME=\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"POSIXLY_CORRECT=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"TERMCAP=\00", align 1
@environ = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scrub_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_env() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = load i8**, i8*** @environ, align 8
  store i8** %5, i8*** %1, align 8
  store i8** %5, i8*** %2, align 8
  br label %6

6:                                                ; preds = %64, %0
  %7 = load i8**, i8*** %1, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @scrub_env.reject, i64 0, i64 0), i8*** %3, align 8
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i8**, i8*** %1, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %3, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i64 @strncmp(i8* %17, i8* %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i8**, i8*** %3, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %3, align 8
  br label %11

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %64

34:                                               ; preds = %30
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @scrub_env.accept, i64 0, i64 0), i8*** %3, align 8
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i8**, i8*** %3, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i8**, i8*** %1, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %3, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i64 @strncmp(i8* %41, i8* %43, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i8**, i8*** %3, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %3, align 8
  br label %35

54:                                               ; preds = %49, %35
  %55 = load i8**, i8*** %3, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8**, i8*** %1, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %2, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %2, align 8
  store i8* %60, i8** %61, align 8
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i8**, i8*** %1, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %1, align 8
  br label %6

67:                                               ; preds = %6
  %68 = load i8**, i8*** %2, align 8
  store i8* null, i8** %68, align 8
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
