; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRnoglob = common dso_local global i32 0, align 4
@G_NONE = common dso_local global i32 0, align 4
@G_CSH = common dso_local global i32 0, align 4
@G_GLOB = common dso_local global i32 0, align 4
@blk_cleanup = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_NOMATCH = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @globone(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32*], align 16
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @STRnoglob, align 4
  %12 = call i64 @adrof(i32 %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32* %15, i32** %16, align 16
  %17 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %19 = call i32 @tglob(i32** %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @G_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @Strsave(i32* %24)
  %26 = call i32* @strip(i32* %25)
  store i32* %26, i32** %3, align 8
  br label %127

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @G_CSH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %34 = load i32, i32* %10, align 4
  %35 = call i32** @globexpand(i32** %33, i32 %34)
  store i32** %35, i32*** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @G_GLOB, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %32
  %44 = load i32**, i32*** %8, align 8
  store i32** %44, i32*** %7, align 8
  br label %94

45:                                               ; preds = %38
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32, i32* @blk_cleanup, align 4
  %48 = call i32 @cleanup_push(i32** %46, i32 %47)
  br label %64

49:                                               ; preds = %27
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @G_GLOB, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52, %49
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @Strsave(i32* %58)
  %60 = call i32* @strip(i32* %59)
  store i32* %60, i32** %3, align 8
  br label %127

61:                                               ; preds = %52
  %62 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32** %62, i32*** %8, align 8
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32**, i32*** %8, align 8
  %66 = call i32** @libglob(i32** %65)
  store i32** %66, i32*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @G_CSH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load i32**, i32*** %7, align 8
  %73 = load i32**, i32*** %8, align 8
  %74 = icmp ne i32** %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32**, i32*** %8, align 8
  %77 = call i32 @cleanup_until(i32** %76)
  br label %81

78:                                               ; preds = %71
  %79 = load i32**, i32*** %8, align 8
  %80 = call i32 @cleanup_ignore(i32** %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i32**, i32*** %7, align 8
  %84 = icmp eq i32** %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @short2str(i32* %86)
  %88 = call i32 @setname(i32 %87)
  %89 = load i32, i32* @ERR_NAME, align 4
  %90 = load i32, i32* @ERR_NOMATCH, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @stderror(i32 %91)
  br label %93

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93, %43
  %95 = load i32**, i32*** %7, align 8
  %96 = icmp ne i32** %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32**, i32*** %7, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32**, i32*** %7, align 8
  %104 = call i32 @xfree(i32** %103)
  %105 = load i32*, i32** @STRNULL, align 8
  %106 = call i32* @Strsave(i32* %105)
  store i32* %106, i32** %3, align 8
  br label %127

107:                                              ; preds = %97, %94
  %108 = load i32**, i32*** %7, align 8
  %109 = icmp ne i32** %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i32**, i32*** %7, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32*, i32** %4, align 8
  %117 = load i32**, i32*** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32* @handleone(i32* %116, i32** %117, i32 %118)
  store i32* %119, i32** %3, align 8
  br label %127

120:                                              ; preds = %110, %107
  %121 = load i32**, i32*** %7, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = call i32* @strip(i32* %122)
  store i32* %123, i32** %4, align 8
  %124 = load i32**, i32*** %7, align 8
  %125 = call i32 @xfree(i32** %124)
  %126 = load i32*, i32** %4, align 8
  store i32* %126, i32** %3, align 8
  br label %127

127:                                              ; preds = %120, %115, %102, %57, %23
  %128 = load i32*, i32** %3, align 8
  ret i32* %128
}

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @tglob(i32**) #1

declare dso_local i32* @strip(i32*) #1

declare dso_local i32* @Strsave(i32*) #1

declare dso_local i32** @globexpand(i32**, i32) #1

declare dso_local i32 @cleanup_push(i32**, i32) #1

declare dso_local i32** @libglob(i32**) #1

declare dso_local i32 @cleanup_until(i32**) #1

declare dso_local i32 @cleanup_ignore(i32**) #1

declare dso_local i32 @setname(i32) #1

declare dso_local i32 @short2str(i32*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @xfree(i32**) #1

declare dso_local i32* @handleone(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
