; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_t_glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_t_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@haderr = common dso_local global i64 0, align 8
@NeedsRedraw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, i32)* @t_glob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_glob(i32*** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32*** %0, i32**** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32***, i32**** %4, align 8
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %126

18:                                               ; preds = %2
  %19 = load i32***, i32**** %4, align 8
  %20 = load i32**, i32*** %19, align 8
  %21 = call i32 @tglob(i32** %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @getexit(i32 %25)
  %27 = call i64 (...) @cleanup_push_mark()
  store i64 %27, i64* %8, align 8
  %28 = call i64 (...) @setexit()
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32***, i32**** %4, align 8
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32** @globall(i32** %32, i32 %33)
  %35 = load i32***, i32**** %4, align 8
  store i32** %34, i32*** %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @cleanup_pop_mark(i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @resexit(i32 %39)
  %41 = load i64, i64* @haderr, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i64 0, i64* @haderr, align 8
  store i32 1, i32* @NeedsRedraw, align 4
  store i32 -1, i32* %3, align 4
  br label %126

44:                                               ; preds = %36
  %45 = load i32***, i32**** %4, align 8
  %46 = load i32**, i32*** %45, align 8
  %47 = icmp eq i32** %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %126

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %126

51:                                               ; preds = %49
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %122

54:                                               ; preds = %51
  %55 = load i32***, i32**** %4, align 8
  %56 = load i32**, i32*** %55, align 8
  store i32** %56, i32*** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %103, %54
  %58 = load i32**, i32*** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %106

64:                                               ; preds = %57
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @executable(i32* null, i32* %69, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load i32**, i32*** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %10, align 8
  %80 = load i32**, i32*** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* null, i32** %83, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @xfree(i32* %84)
  br label %102

86:                                               ; preds = %64
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i32**, i32*** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32**, i32*** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %95, i64 %99
  store i32* %94, i32** %100, align 8
  br label %101

101:                                              ; preds = %89, %86
  br label %102

102:                                              ; preds = %101, %72
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %57

106:                                              ; preds = %57
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32**, i32*** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32**, i32*** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %115, i64 %119
  store i32* %114, i32** %120, align 8
  br label %121

121:                                              ; preds = %109, %106
  br label %122

122:                                              ; preds = %121, %51
  %123 = load i32***, i32**** %4, align 8
  %124 = load i32**, i32*** %123, align 8
  %125 = call i32 @blklen(i32** %124)
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %50, %48, %43, %17
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @tglob(i32**) #1

declare dso_local i32 @getexit(i32) #1

declare dso_local i64 @cleanup_push_mark(...) #1

declare dso_local i64 @setexit(...) #1

declare dso_local i32** @globall(i32**, i32) #1

declare dso_local i32 @cleanup_pop_mark(i64) #1

declare dso_local i32 @resexit(i32) #1

declare dso_local i32 @executable(i32*, i32*, i32) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @blklen(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
