; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_makeextralist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_makeextralist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXEXTRAS = common dso_local global i64 0, align 8
@VIS_NOLOCALE = common dso_local global i32 0, align 4
@VIS_GLOB = common dso_local global i32 0, align 4
@char_glob = common dso_local global i32* null, align 8
@VIS_SHELL = common dso_local global i32 0, align 4
@char_shell = common dso_local global i32* null, align 8
@VIS_SP = common dso_local global i32 0, align 4
@VIS_TAB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@VIS_DQ = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*)* @makeextralist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @makeextralist(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = call i32 @bzero(i32* %10, i32 4)
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MAXEXTRAS, align 8
  %17 = add i64 %15, %16
  %18 = call i32* @calloc(i64 %17, i32 4)
  store i32* %18, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %140

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VIS_NOLOCALE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @mbsrtowcs(i32* %27, i8** %5, i64 %28, i32* %10)
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %53

31:                                               ; preds = %26, %21
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %32

49:                                               ; preds = %32
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %7, align 8
  br label %59

53:                                               ; preds = %26
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @wcslen(i32* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @VIS_GLOB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load i32*, i32** @char_glob, align 8
  store i32* %65, i32** %9, align 8
  br label %66

66:                                               ; preds = %71, %64
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %9, align 8
  %74 = load i32, i32* %72, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  br label %66

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @VIS_SHELL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i32*, i32** @char_shell, align 8
  store i32* %84, i32** %9, align 8
  br label %85

85:                                               ; preds = %90, %83
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  %93 = load i32, i32* %91, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  br label %85

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @VIS_SP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %7, align 8
  store i32 32, i32* %103, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @VIS_TAB, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %7, align 8
  store i32 9, i32* %111, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @VIS_NL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  store i32 10, i32* %119, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @VIS_DQ, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %7, align 8
  store i32 34, i32* %127, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @VIS_NOSLASH, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %7, align 8
  store i32 92, i32* %135, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32*, i32** %7, align 8
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %6, align 8
  store i32* %139, i32** %3, align 8
  br label %140

140:                                              ; preds = %137, %20
  %141 = load i32*, i32** %3, align 8
  ret i32* %141
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i64 @mbsrtowcs(i32*, i8**, i64, i32*) #1

declare dso_local i32 @wcslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
