; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_b_coll_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_b_coll_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cname = type { i32, i32* }
%struct.parse = type { i8* }

@REG_EBRACK = common dso_local global i32 0, align 4
@cnames = common dso_local global %struct.cname* null, align 8
@REG_ILLSEQ = common dso_local global i32 0, align 4
@REG_ECOLLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*, i32)* @p_b_coll_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_b_coll_elem(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cname*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.parse*, %struct.parse** %4, align 8
  %13 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %25, %2
  %16 = call i64 (...) @MORE()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @SEETWO(i32 %19, i8 signext 93)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 (...) @NEXT()
  br label %15

27:                                               ; preds = %23
  %28 = call i64 (...) @MORE()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @REG_EBRACK, align 4
  %32 = call i32 @SETERROR(i32 %31)
  store i32 0, i32* %3, align 4
  br label %93

33:                                               ; preds = %27
  %34 = load %struct.parse*, %struct.parse** %4, align 8
  %35 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  store i64 %40, i64* %11, align 8
  %41 = load %struct.cname*, %struct.cname** @cnames, align 8
  store %struct.cname* %41, %struct.cname** %7, align 8
  br label %42

42:                                               ; preds = %67, %33
  %43 = load %struct.cname*, %struct.cname** %7, align 8
  %44 = getelementptr inbounds %struct.cname, %struct.cname* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.cname*, %struct.cname** %7, align 8
  %49 = getelementptr inbounds %struct.cname, %struct.cname* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @strncmp(i32* %50, i8* %51, i64 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.cname*, %struct.cname** %7, align 8
  %57 = getelementptr inbounds %struct.cname, %struct.cname* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @strlen(i32* %58)
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.cname*, %struct.cname** %7, align 8
  %64 = getelementptr inbounds %struct.cname, %struct.cname* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %3, align 4
  br label %93

66:                                               ; preds = %55, %47
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.cname*, %struct.cname** %7, align 8
  %69 = getelementptr inbounds %struct.cname, %struct.cname* %68, i32 1
  store %struct.cname* %69, %struct.cname** %7, align 8
  br label %42

70:                                               ; preds = %42
  %71 = call i32 @memset(i32* %8, i32 0, i32 4)
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @mbrtowc(i32* %9, i8* %72, i64 %73, i32* %8)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %93

79:                                               ; preds = %70
  %80 = load i64, i64* %10, align 8
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, -2
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @REG_ILLSEQ, align 4
  %87 = call i32 @SETERROR(i32 %86)
  br label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @REG_ECOLLATE, align 4
  %90 = call i32 @SETERROR(i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %77, %62, %30
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @MORE(...) #1

declare dso_local i32 @SEETWO(i32, i8 signext) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
