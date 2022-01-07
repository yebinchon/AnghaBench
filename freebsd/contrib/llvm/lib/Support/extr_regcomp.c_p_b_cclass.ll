; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_b_cclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_b_cclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cclass = type { i8*, i8*, i8* }
%struct.parse = type { i8* }

@cclasses = common dso_local global %struct.cclass* null, align 8
@REG_ECTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @p_b_cclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_b_cclass(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cclass*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.parse*, %struct.parse** %3, align 8
  %11 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %23, %2
  %14 = call i64 (...) @MORE()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i64 (...) @PEEK()
  %18 = trunc i64 %17 to i32
  %19 = call i64 @isalpha(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 (...) @NEXT()
  br label %13

25:                                               ; preds = %21
  %26 = load %struct.parse*, %struct.parse** %3, align 8
  %27 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load %struct.cclass*, %struct.cclass** @cclasses, align 8
  store %struct.cclass* %33, %struct.cclass** %6, align 8
  br label %34

34:                                               ; preds = %58, %25
  %35 = load %struct.cclass*, %struct.cclass** %6, align 8
  %36 = getelementptr inbounds %struct.cclass, %struct.cclass* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.cclass*, %struct.cclass** %6, align 8
  %41 = getelementptr inbounds %struct.cclass, %struct.cclass* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @strncmp(i8* %42, i8* %43, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.cclass*, %struct.cclass** %6, align 8
  %49 = getelementptr inbounds %struct.cclass, %struct.cclass* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %61

57:                                               ; preds = %47, %39
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.cclass*, %struct.cclass** %6, align 8
  %60 = getelementptr inbounds %struct.cclass, %struct.cclass* %59, i32 1
  store %struct.cclass* %60, %struct.cclass** %6, align 8
  br label %34

61:                                               ; preds = %56, %34
  %62 = load %struct.cclass*, %struct.cclass** %6, align 8
  %63 = getelementptr inbounds %struct.cclass, %struct.cclass* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @REG_ECTYPE, align 4
  %68 = call i32 @SETERROR(i32 %67)
  br label %103

69:                                               ; preds = %61
  %70 = load %struct.cclass*, %struct.cclass** %6, align 8
  %71 = getelementptr inbounds %struct.cclass, %struct.cclass* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %79, %69
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  %76 = load i8, i8* %74, align 1
  store i8 %76, i8* %9, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32*, i32** %4, align 8
  %81 = load i8, i8* %9, align 1
  %82 = call i32 @CHadd(i32* %80, i8 signext %81)
  br label %73

83:                                               ; preds = %73
  %84 = load %struct.cclass*, %struct.cclass** %6, align 8
  %85 = getelementptr inbounds %struct.cclass, %struct.cclass* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %8, align 8
  br label %87

87:                                               ; preds = %97, %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.parse*, %struct.parse** %3, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @MCadd(%struct.parse* %93, i32* %94, i8* %95)
  br label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = add nsw i64 %99, 1
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8* %102, i8** %8, align 8
  br label %87

103:                                              ; preds = %66, %87
  ret void
}

declare dso_local i64 @MORE(...) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @PEEK(...) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

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
