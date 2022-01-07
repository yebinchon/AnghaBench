; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_b_coll_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_b_coll_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cname = type { i8, i32* }
%struct.parse = type { i8* }

@REG_EBRACK = common dso_local global i32 0, align 4
@cnames = common dso_local global %struct.cname* null, align 8
@REG_ECOLLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parse*, i32)* @p_b_coll_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @p_b_coll_elem(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cname*, align 8
  %8 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.parse*, %struct.parse** %4, align 8
  %10 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = call i64 (...) @MORE()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @SEETWO(i32 %16, i8 signext 93)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 (...) @NEXT()
  br label %12

24:                                               ; preds = %20
  %25 = call i64 (...) @MORE()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @REG_EBRACK, align 4
  %29 = call i32 @SETERROR(i32 %28)
  store i8 0, i8* %3, align 1
  br label %76

30:                                               ; preds = %24
  %31 = load %struct.parse*, %struct.parse** %4, align 8
  %32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.cname*, %struct.cname** @cnames, align 8
  store %struct.cname* %38, %struct.cname** %7, align 8
  br label %39

39:                                               ; preds = %64, %30
  %40 = load %struct.cname*, %struct.cname** %7, align 8
  %41 = getelementptr inbounds %struct.cname, %struct.cname* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.cname*, %struct.cname** %7, align 8
  %46 = getelementptr inbounds %struct.cname, %struct.cname* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @STRLEN(i32* %47)
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.cname*, %struct.cname** %7, align 8
  %53 = getelementptr inbounds %struct.cname, %struct.cname* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @MEMCMP(i32* %54, i8* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.cname*, %struct.cname** %7, align 8
  %61 = getelementptr inbounds %struct.cname, %struct.cname* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 8
  store i8 %62, i8* %3, align 1
  br label %76

63:                                               ; preds = %51, %44
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.cname*, %struct.cname** %7, align 8
  %66 = getelementptr inbounds %struct.cname, %struct.cname* %65, i32 1
  store %struct.cname* %66, %struct.cname** %7, align 8
  br label %39

67:                                               ; preds = %39
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %3, align 1
  br label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @REG_ECOLLATE, align 4
  %75 = call i32 @SETERROR(i32 %74)
  store i8 0, i8* %3, align 1
  br label %76

76:                                               ; preds = %73, %70, %59, %27
  %77 = load i8, i8* %3, align 1
  ret i8 %77
}

declare dso_local i64 @MORE(...) #1

declare dso_local i32 @SEETWO(i32, i8 signext) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i64 @MEMCMP(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
