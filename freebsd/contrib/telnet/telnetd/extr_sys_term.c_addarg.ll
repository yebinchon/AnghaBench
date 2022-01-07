; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_addarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_addarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failure allocating argument space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8*)* @addarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @addarg(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = icmp eq i8** %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = call i64 @malloc(i32 96)
  %10 = inttoptr i64 %9 to i8**
  store i8** %10, i8*** %3, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = icmp eq i8** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @net, align 4
  %15 = call i32 @fatal(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i8**, i8*** %3, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %3, align 8
  store i8* inttoptr (i64 10 to i8*), i8** %17, align 8
  %19 = load i8**, i8*** %3, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i8**, i8*** %3, align 8
  store i8** %21, i8*** %5, align 8
  br label %22

22:                                               ; preds = %27, %20
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %5, align 8
  br label %22

30:                                               ; preds = %22
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8**, i8*** %3, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 -1
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = getelementptr inbounds i8*, i8** %32, i64 %36
  %38 = icmp eq i8** %31, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = load i8**, i8*** %3, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 -1
  store i8** %41, i8*** %3, align 8
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = add nsw i64 %44, 10
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8**, i8*** %3, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i8**, i8*** %3, align 8
  %49 = load i8**, i8*** %3, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = add nsw i64 %51, 2
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @realloc(i8** %48, i32 %54)
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %3, align 8
  %57 = load i8**, i8*** %3, align 8
  %58 = icmp eq i8** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %39
  %60 = load i32, i32* @net, align 4
  %61 = call i32 @fatal(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %39
  %63 = load i8**, i8*** %3, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %3, align 8
  %65 = load i8**, i8*** %3, align 8
  %66 = load i8**, i8*** %3, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 -1
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = sub nsw i64 %69, 10
  %71 = getelementptr inbounds i8*, i8** %65, i64 %70
  store i8** %71, i8*** %5, align 8
  br label %72

72:                                               ; preds = %62, %30
  %73 = load i8*, i8** %4, align 8
  %74 = call i32* @strdup(i8* %73)
  %75 = bitcast i32* %74 to i8*
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  %78 = icmp eq i8* %75, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @net, align 4
  %81 = call i32 @fatal(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i8**, i8*** %5, align 8
  store i8* null, i8** %83, align 8
  %84 = load i8**, i8*** %3, align 8
  ret i8** %84
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
