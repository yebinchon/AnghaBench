; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_dosub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_dosub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wordent = type { %struct.wordent*, i32*, %struct.wordent* }
%struct.Hist = type { %struct.wordent }

@exclc = common dso_local global i32 0, align 4
@FLAG_G = common dso_local global i32 0, align 4
@FLAG_A = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@ERR_MODFAIL = common dso_local global i32 0, align 4
@HIST_PURGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wordent* (i32, %struct.wordent*, i32)* @dosub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wordent* @dosub(i32 %0, %struct.wordent* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wordent, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wordent*, align 8
  %11 = alloca %struct.wordent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.Hist*, align 8
  %14 = alloca %struct.wordent*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.wordent* %1, %struct.wordent** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.wordent* %7, %struct.wordent** %10, align 8
  %18 = load i32, i32* @exclc, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.wordent*, %struct.wordent** %10, align 8
  store %struct.wordent* %19, %struct.wordent** %11, align 8
  br label %20

20:                                               ; preds = %104, %3
  %21 = load i32, i32* %12, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %12, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = call %struct.wordent* @xcalloc(i32 1, i32 24)
  store %struct.wordent* %25, %struct.wordent** %14, align 8
  %26 = load %struct.wordent*, %struct.wordent** %14, align 8
  %27 = getelementptr inbounds %struct.wordent, %struct.wordent* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.wordent*, %struct.wordent** %11, align 8
  %29 = load %struct.wordent*, %struct.wordent** %14, align 8
  %30 = getelementptr inbounds %struct.wordent, %struct.wordent* %29, i32 0, i32 0
  store %struct.wordent* %28, %struct.wordent** %30, align 8
  %31 = load %struct.wordent*, %struct.wordent** %10, align 8
  %32 = load %struct.wordent*, %struct.wordent** %14, align 8
  %33 = getelementptr inbounds %struct.wordent, %struct.wordent* %32, i32 0, i32 2
  store %struct.wordent* %31, %struct.wordent** %33, align 8
  %34 = load %struct.wordent*, %struct.wordent** %14, align 8
  %35 = load %struct.wordent*, %struct.wordent** %11, align 8
  %36 = getelementptr inbounds %struct.wordent, %struct.wordent* %35, i32 0, i32 2
  store %struct.wordent* %34, %struct.wordent** %36, align 8
  %37 = load %struct.wordent*, %struct.wordent** %14, align 8
  store %struct.wordent* %37, %struct.wordent** %11, align 8
  %38 = load %struct.wordent*, %struct.wordent** %5, align 8
  %39 = getelementptr inbounds %struct.wordent, %struct.wordent* %38, i32 0, i32 2
  %40 = load %struct.wordent*, %struct.wordent** %39, align 8
  store %struct.wordent* %40, %struct.wordent** %5, align 8
  %41 = load %struct.wordent*, %struct.wordent** %5, align 8
  %42 = getelementptr inbounds %struct.wordent, %struct.wordent* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %104

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FLAG_G, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %50, %45
  store i64 0, i64* %17, align 8
  %54 = load %struct.wordent*, %struct.wordent** %5, align 8
  %55 = getelementptr inbounds %struct.wordent, %struct.wordent* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32* @subword(i32* %56, i32 %57, i32* %9, i64* %17)
  store i32* %58, i32** %15, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @FLAG_A, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** @STRNULL, align 8
  %74 = icmp ne i32* %72, %73
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  br i1 %76, label %77, label %93

77:                                               ; preds = %75
  %78 = load i32*, i32** %15, align 8
  store i32* %78, i32** %16, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32* @subword(i32* %79, i32 %80, i32* %9, i64* %17)
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = call i64 @Strcmp(i32* %82, i32* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @xfree(i32* %87)
  br label %93

89:                                               ; preds = %77
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @xfree(i32* %90)
  br label %92

92:                                               ; preds = %89
  br label %68

93:                                               ; preds = %86, %75
  br label %94

94:                                               ; preds = %93, %62
  br label %100

95:                                               ; preds = %50
  %96 = load %struct.wordent*, %struct.wordent** %5, align 8
  %97 = getelementptr inbounds %struct.wordent, %struct.wordent* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32* @Strsave(i32* %98)
  store i32* %99, i32** %15, align 8
  br label %100

100:                                              ; preds = %95, %94
  %101 = load i32*, i32** %15, align 8
  %102 = load %struct.wordent*, %struct.wordent** %11, align 8
  %103 = getelementptr inbounds %struct.wordent, %struct.wordent* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  br label %104

104:                                              ; preds = %100, %24
  br label %20

105:                                              ; preds = %20
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @ERR_MODFAIL, align 4
  %110 = call i32 @seterror(i32 %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.wordent*, %struct.wordent** %11, align 8
  %113 = load %struct.wordent*, %struct.wordent** %10, align 8
  %114 = getelementptr inbounds %struct.wordent, %struct.wordent* %113, i32 0, i32 0
  store %struct.wordent* %112, %struct.wordent** %114, align 8
  %115 = load i32, i32* @HIST_PURGE, align 4
  %116 = call %struct.Hist* @enthist(i32 %115, %struct.wordent* %7, i32 0, i32 0, i32 -1)
  store %struct.Hist* %116, %struct.Hist** %13, align 8
  %117 = load %struct.Hist*, %struct.Hist** %13, align 8
  %118 = getelementptr inbounds %struct.Hist, %struct.Hist* %117, i32 0, i32 0
  ret %struct.wordent* %118
}

declare dso_local %struct.wordent* @xcalloc(i32, i32) #1

declare dso_local i32* @subword(i32*, i32, i32*, i64*) #1

declare dso_local i64 @Strcmp(i32*, i32*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32* @Strsave(i32*) #1

declare dso_local i32 @seterror(i32) #1

declare dso_local %struct.Hist* @enthist(i32, %struct.wordent*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
