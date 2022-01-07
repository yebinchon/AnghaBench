; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_Gnmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_Gnmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLOBSPACE = common dso_local global i32 0, align 4
@blk_indirect_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Gnmatch(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 94
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = call i8* @xmalloc(i32 8)
  %23 = bitcast i8* %22 to i8***
  store i8*** %23, i8**** %7, align 8
  %24 = load i32, i32* @GLOBSPACE, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @xmalloc(i32 %27)
  %29 = bitcast i8* %28 to i8**
  %30 = load i8***, i8**** %7, align 8
  store i8** %29, i8*** %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @Strsave(i8* %31)
  %33 = load i8***, i8**** %7, align 8
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %32, i8** %35, align 8
  %36 = load i8***, i8**** %7, align 8
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* null, i8** %38, align 8
  %39 = load i8***, i8**** %7, align 8
  %40 = load i32, i32* @blk_indirect_cleanup, align 4
  %41 = call i32 @cleanup_push(i8*** %39, i32 %40)
  %42 = load i8***, i8**** %7, align 8
  %43 = load i32, i32* @GLOBSPACE, align 4
  %44 = call i32 @expbrace(i8*** %42, i32* null, i32 %43)
  %45 = load i8**, i8*** %6, align 8
  %46 = icmp eq i8** %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %21
  %48 = load i8***, i8**** %7, align 8
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %8, align 8
  br label %50

50:                                               ; preds = %64, %47
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @t_pmatch(i8* %55, i8* %57, i8** %9, i32 1)
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i8**, i8*** %8, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %8, align 8
  br label %50

67:                                               ; preds = %50
  br label %99

68:                                               ; preds = %21
  %69 = load i8*, i8** %4, align 8
  %70 = call i8* @Strend(i8* %69)
  store i8* %70, i8** %12, align 8
  %71 = load i8***, i8**** %7, align 8
  %72 = load i8**, i8*** %71, align 8
  store i8** %72, i8*** %8, align 8
  br label %73

73:                                               ; preds = %93, %68
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load i8*, i8** %4, align 8
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @t_pmatch(i8* %78, i8* %80, i8** %9, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ugt i8* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i8*, i8** %9, align 8
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %89, %83
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92
  %94 = load i8**, i8*** %8, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %8, align 8
  br label %73

96:                                               ; preds = %73
  %97 = load i8*, i8** %12, align 8
  %98 = load i8**, i8*** %6, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %96, %67
  %100 = load i8***, i8**** %7, align 8
  %101 = call i32 @cleanup_until(i8*** %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  ret i32 %105
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i32 @cleanup_push(i8***, i32) #1

declare dso_local i32 @expbrace(i8***, i32*, i32) #1

declare dso_local i32 @t_pmatch(i8*, i8*, i8**, i32) #1

declare dso_local i8* @Strend(i8*) #1

declare dso_local i32 @cleanup_until(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
