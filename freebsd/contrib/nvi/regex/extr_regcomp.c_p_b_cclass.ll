; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_b_cclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_b_cclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cclass = type { i8*, i8*, i32* }
%struct.parse = type { i32* }

@cclasses = common dso_local global %struct.cclass* null, align 8
@REG_ECTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @p_b_cclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_b_cclass(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cclass*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.parse*, %struct.parse** %3, align 8
  %11 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %22, %2
  %14 = call i64 (...) @MORE()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call i32 (...) @PEEK()
  %18 = call i64 @isalpha(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 (...) @NEXT()
  br label %13

24:                                               ; preds = %20
  %25 = load %struct.parse*, %struct.parse** %3, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  store i64 %32, i64* %7, align 8
  %33 = load %struct.cclass*, %struct.cclass** @cclasses, align 8
  store %struct.cclass* %33, %struct.cclass** %6, align 8
  br label %34

34:                                               ; preds = %56, %24
  %35 = load %struct.cclass*, %struct.cclass** %6, align 8
  %36 = getelementptr inbounds %struct.cclass, %struct.cclass* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.cclass*, %struct.cclass** %6, align 8
  %41 = getelementptr inbounds %struct.cclass, %struct.cclass* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @STRLEN(i32* %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.cclass*, %struct.cclass** %6, align 8
  %48 = getelementptr inbounds %struct.cclass, %struct.cclass* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @MEMCMP(i32* %49, i32* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46, %39
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.cclass*, %struct.cclass** %6, align 8
  %58 = getelementptr inbounds %struct.cclass, %struct.cclass* %57, i32 1
  store %struct.cclass* %58, %struct.cclass** %6, align 8
  br label %34

59:                                               ; preds = %54, %34
  %60 = load %struct.cclass*, %struct.cclass** %6, align 8
  %61 = getelementptr inbounds %struct.cclass, %struct.cclass* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @REG_ECTYPE, align 4
  %66 = call i32 @SETERROR(i32 %65)
  br label %101

67:                                               ; preds = %59
  %68 = load %struct.cclass*, %struct.cclass** %6, align 8
  %69 = getelementptr inbounds %struct.cclass, %struct.cclass* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %77, %67
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %9, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32*, i32** %4, align 8
  %79 = load i8, i8* %9, align 1
  %80 = call i32 @CHadd(i32* %78, i8 signext %79)
  br label %71

81:                                               ; preds = %71
  %82 = load %struct.cclass*, %struct.cclass** %6, align 8
  %83 = getelementptr inbounds %struct.cclass, %struct.cclass* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %8, align 8
  br label %85

85:                                               ; preds = %95, %81
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.parse*, %struct.parse** %3, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @MCadd(%struct.parse* %91, i32* %92, i8* %93)
  br label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = add nsw i64 %97, 1
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %8, align 8
  br label %85

101:                                              ; preds = %64, %85
  ret void
}

declare dso_local i64 @MORE(...) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @PEEK(...) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @MEMCMP(i32*, i32*, i64) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @CHadd(i32*, i8 signext) #1

declare dso_local i32 @MCadd(%struct.parse*, i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
