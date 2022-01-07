; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_skipargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_skipargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIR_OLD = common dso_local global i32 0, align 4
@ERR_DIRUS = common dso_local global i32 0, align 4
@DIR_LONG = common dso_local global i32 0, align 4
@DIR_VERT = common dso_local global i32 0, align 4
@DIR_LINE = common dso_local global i32 0, align 4
@DIR_PRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8***, i8*, i8*)* @skipargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipargs(i8*** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8*** %0, i8**** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8***, i8**** %4, align 8
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %7, align 8
  br label %16

16:                                               ; preds = %97, %3
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br label %30

30:                                               ; preds = %23, %19, %16
  %31 = phi i1 [ false, %19 ], [ false, %16 ], [ %29, %23 ]
  br i1 %31, label %32, label %100

32:                                               ; preds = %30
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @DIR_OLD, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %96

43:                                               ; preds = %32
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %7, align 8
  br label %100

60:                                               ; preds = %50, %43
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = call i8* @strchr(i8* %67, i32 %71)
  store i8* %72, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = shl i32 1, %80
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %93

84:                                               ; preds = %66
  %85 = load i32, i32* @ERR_DIRUS, align 4
  %86 = load i8***, i8**** %4, align 8
  %87 = load i8**, i8*** %86, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @short2str(i8* %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @stderror(i32 %85, i32 %89, i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %84, %74
  br label %61

94:                                               ; preds = %61
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %39
  br label %97

97:                                               ; preds = %96
  %98 = load i8**, i8*** %7, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %7, align 8
  br label %16

100:                                              ; preds = %57, %30
  %101 = load i8**, i8*** %7, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @DIR_OLD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, i32* @ERR_DIRUS, align 4
  %111 = load i8***, i8**** %4, align 8
  %112 = load i8**, i8*** %111, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @short2str(i8* %113)
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @stderror(i32 %110, i32 %114, i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %109, %104, %100
  %119 = load i8**, i8*** %7, align 8
  %120 = load i8***, i8**** %4, align 8
  store i8** %119, i8*** %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @DIR_LONG, align 4
  %123 = load i32, i32* @DIR_VERT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @DIR_LINE, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %121, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, i32* @DIR_PRINT, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %129, %118
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @stderror(i32, i32, i8*, i8*) #1

declare dso_local i32 @short2str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
