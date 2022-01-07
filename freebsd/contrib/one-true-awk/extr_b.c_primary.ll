; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtok = common dso_local global i32 0, align 4
@starttok = common dso_local global i8* null, align 8
@lastatom = common dso_local global i8* null, align 8
@NIL = common dso_local global i32* null, align 8
@rlxval = common dso_local global i32 0, align 4
@rlxstr = common dso_local global i64 0, align 8
@HAT = common dso_local global i32 0, align 4
@basestr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"syntax error in regular expression %s at %s\00", align 1
@lastre = common dso_local global i32 0, align 4
@prestr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"illegal primary in regular expression %s at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @primary() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @rtok, align 4
  switch i32 %4, label %103 [
    i32 131, label %5
    i32 133, label %14
    i32 129, label %20
    i32 130, label %26
    i32 132, label %33
    i32 128, label %44
    i32 94, label %55
    i32 36, label %62
    i32 40, label %68
  ]

5:                                                ; preds = %0
  %6 = load i8*, i8** @starttok, align 8
  store i8* %6, i8** @lastatom, align 8
  %7 = load i32*, i32** @NIL, align 8
  %8 = load i32, i32* @rlxval, align 4
  %9 = call i32* @itonp(i32 %8)
  %10 = call i32* @op2(i32 131, i32* %7, i32* %9)
  store i32* %10, i32** %2, align 8
  %11 = call i32 (...) @relex()
  store i32 %11, i32* @rtok, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @unary(i32* %12)
  store i32* %13, i32** %1, align 8
  br label %108

14:                                               ; preds = %0
  %15 = call i32 (...) @relex()
  store i32 %15, i32* @rtok, align 4
  %16 = load i32*, i32** @NIL, align 8
  %17 = load i32*, i32** @NIL, align 8
  %18 = call i32* @op2(i32 133, i32* %16, i32* %17)
  %19 = call i32* @unary(i32* %18)
  store i32* %19, i32** %1, align 8
  br label %108

20:                                               ; preds = %0
  %21 = call i32 (...) @relex()
  store i32 %21, i32* @rtok, align 4
  %22 = load i32*, i32** @NIL, align 8
  %23 = load i32*, i32** @NIL, align 8
  %24 = call i32* @op2(i32 129, i32* %22, i32* %23)
  %25 = call i32* @unary(i32* %24)
  store i32* %25, i32** %1, align 8
  br label %108

26:                                               ; preds = %0
  %27 = load i8*, i8** @starttok, align 8
  store i8* %27, i8** @lastatom, align 8
  %28 = call i32 (...) @relex()
  store i32 %28, i32* @rtok, align 4
  %29 = load i32*, i32** @NIL, align 8
  %30 = load i32*, i32** @NIL, align 8
  %31 = call i32* @op2(i32 130, i32* %29, i32* %30)
  %32 = call i32* @unary(i32* %31)
  store i32* %32, i32** %1, align 8
  br label %108

33:                                               ; preds = %0
  %34 = load i32*, i32** @NIL, align 8
  %35 = load i64, i64* @rlxstr, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @cclenter(i8* %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32* @op2(i32 132, i32* %34, i32* %38)
  store i32* %39, i32** %2, align 8
  %40 = load i8*, i8** @starttok, align 8
  store i8* %40, i8** @lastatom, align 8
  %41 = call i32 (...) @relex()
  store i32 %41, i32* @rtok, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i32* @unary(i32* %42)
  store i32* %43, i32** %1, align 8
  br label %108

44:                                               ; preds = %0
  %45 = load i32*, i32** @NIL, align 8
  %46 = load i64, i64* @rlxstr, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i64 @cclenter(i8* %47)
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32* @op2(i32 128, i32* %45, i32* %49)
  store i32* %50, i32** %2, align 8
  %51 = load i8*, i8** @starttok, align 8
  store i8* %51, i8** @lastatom, align 8
  %52 = call i32 (...) @relex()
  store i32 %52, i32* @rtok, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = call i32* @unary(i32* %53)
  store i32* %54, i32** %1, align 8
  br label %108

55:                                               ; preds = %0
  %56 = call i32 (...) @relex()
  store i32 %56, i32* @rtok, align 4
  %57 = load i32*, i32** @NIL, align 8
  %58 = load i32, i32* @HAT, align 4
  %59 = call i32* @itonp(i32 %58)
  %60 = call i32* @op2(i32 131, i32* %57, i32* %59)
  %61 = call i32* @unary(i32* %60)
  store i32* %61, i32** %1, align 8
  br label %108

62:                                               ; preds = %0
  %63 = call i32 (...) @relex()
  store i32 %63, i32* @rtok, align 4
  %64 = load i32*, i32** @NIL, align 8
  %65 = load i32*, i32** @NIL, align 8
  %66 = call i32* @op2(i32 131, i32* %64, i32* %65)
  %67 = call i32* @unary(i32* %66)
  store i32* %67, i32** %1, align 8
  br label %108

68:                                               ; preds = %0
  %69 = load i8*, i8** @starttok, align 8
  store i8* %69, i8** @lastatom, align 8
  %70 = load i8*, i8** @starttok, align 8
  %71 = load i8*, i8** @basestr, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %3, align 4
  %76 = call i32 (...) @relex()
  store i32 %76, i32* @rtok, align 4
  %77 = load i32, i32* @rtok, align 4
  %78 = icmp eq i32 %77, 41
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = call i32 (...) @relex()
  store i32 %80, i32* @rtok, align 4
  %81 = load i32*, i32** @NIL, align 8
  %82 = call i64 @tostring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32* @op2(i32 132, i32* %81, i32* %83)
  %85 = call i32* @unary(i32* %84)
  store i32* %85, i32** %1, align 8
  br label %108

86:                                               ; preds = %68
  %87 = call i32* (...) @regexp()
  store i32* %87, i32** %2, align 8
  %88 = load i32, i32* @rtok, align 4
  %89 = icmp eq i32 %88, 41
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i8*, i8** @basestr, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %91, i64 %93
  store i8* %94, i8** @lastatom, align 8
  %95 = call i32 (...) @relex()
  store i32 %95, i32* @rtok, align 4
  %96 = load i32*, i32** %2, align 8
  %97 = call i32* @unary(i32* %96)
  store i32* %97, i32** %1, align 8
  br label %108

98:                                               ; preds = %86
  %99 = load i32, i32* @lastre, align 4
  %100 = load i32, i32* @prestr, align 4
  %101 = call i32 @FATAL(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %0, %102
  %104 = load i32, i32* @lastre, align 4
  %105 = load i32, i32* @prestr, align 4
  %106 = call i32 @FATAL(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103
  store i32* null, i32** %1, align 8
  br label %108

108:                                              ; preds = %107, %90, %79, %62, %55, %44, %33, %26, %20, %14, %5
  %109 = load i32*, i32** %1, align 8
  ret i32* %109
}

declare dso_local i32* @op2(i32, i32*, i32*) #1

declare dso_local i32* @itonp(i32) #1

declare dso_local i32 @relex(...) #1

declare dso_local i32* @unary(i32*) #1

declare dso_local i64 @cclenter(i8*) #1

declare dso_local i64 @tostring(i8*) #1

declare dso_local i32* @regexp(...) #1

declare dso_local i32 @FATAL(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
