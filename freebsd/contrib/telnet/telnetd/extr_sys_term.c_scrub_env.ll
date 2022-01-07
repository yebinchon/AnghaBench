; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_scrub_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_scrub_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scrub_env.rej = internal global [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"TERMCAP=/\00", align 1
@scrub_env.acc = internal global [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"XAUTH=\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"XAUTHORITY=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DISPLAY=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TERM=\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"EDITOR=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PAGER=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LOGNAME=\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"POSIXLY_CORRECT=\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"PRINTER=\00", align 1
@environ = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scrub_env() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 1, i64* %5, align 8
  %7 = load i8**, i8*** @environ, align 8
  store i8** %7, i8*** %1, align 8
  br label %8

8:                                                ; preds = %13, %0
  %9 = load i8**, i8*** %1, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %5, align 8
  %16 = load i8**, i8*** %1, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %1, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load i64, i64* %5, align 8
  %20 = mul i64 %19, 8
  %21 = call i8** @malloc(i64 %20)
  store i8** %21, i8*** %4, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8** null, i8*** @environ, align 8
  br label %97

24:                                               ; preds = %18
  %25 = load i8**, i8*** %4, align 8
  store i8** %25, i8*** %2, align 8
  %26 = load i8**, i8*** @environ, align 8
  store i8** %26, i8*** %1, align 8
  br label %27

27:                                               ; preds = %91, %24
  %28 = load i8**, i8*** %1, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %94

31:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @scrub_env.rej, i64 0, i64 0), i8*** %3, align 8
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i8**, i8*** %3, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i8**, i8*** %1, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %3, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i64 @strncmp(i8* %38, i8* %40, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i8**, i8*** %3, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %3, align 8
  br label %32

51:                                               ; preds = %46, %32
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %91

55:                                               ; preds = %51
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @scrub_env.acc, i64 0, i64 0), i8*** %3, align 8
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i8**, i8*** %3, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i8**, i8*** %1, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %3, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i64 @strncmp(i8* %62, i8* %64, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %75

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i8**, i8*** %3, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %3, align 8
  br label %56

75:                                               ; preds = %70, %56
  %76 = load i8**, i8*** %3, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i8**, i8*** %1, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32* @strdup(i8* %81)
  %83 = bitcast i32* %82 to i8*
  %84 = load i8**, i8*** %2, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %2, align 8
  store i8* %83, i8** %84, align 8
  %86 = icmp eq i8* %83, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i8**, i8*** %4, align 8
  store i8** %88, i8*** @environ, align 8
  br label %97

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i8**, i8*** %1, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %1, align 8
  br label %27

94:                                               ; preds = %27
  %95 = load i8**, i8*** %2, align 8
  store i8* null, i8** %95, align 8
  %96 = load i8**, i8*** %4, align 8
  store i8** %96, i8*** @environ, align 8
  br label %97

97:                                               ; preds = %94, %87, %23
  ret void
}

declare dso_local i8** @malloc(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
