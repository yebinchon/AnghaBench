; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globtilde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globtilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRnonomatch = common dso_local global i32 0, align 4
@ERR_UNKUSER = common dso_local global i32 0, align 4
@ERR_NOHOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @globtilde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @globtilde(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 58
  br label %26

26:                                               ; preds = %21, %16, %11
  %27 = phi i1 [ false, %16 ], [ false, %11 ], [ %25, %21 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %11

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @Strnsave(i8* %34, i32 %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @cleanup_push(i8* %43, i32 (i8*)* @xfree)
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @gethdir(i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %32
  %50 = load i32, i32* @STRnonomatch, align 4
  %51 = call i64 @adrof(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @cleanup_until(i8* %54)
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %2, align 8
  br label %103

57:                                               ; preds = %49
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @ERR_UNKUSER, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @short2str(i8* %63)
  %65 = call i32 (i32, ...) @stderror(i32 %62, i32 %64)
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @ERR_NOHOME, align 4
  %68 = call i32 (i32, ...) @stderror(i32 %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %32
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @cleanup_until(i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %3, align 8
  %92 = call i8* @Strsave(i8* %91)
  store i8* %92, i8** %7, align 8
  br label %97

93:                                               ; preds = %84, %78, %70
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = call i8* @Strspl(i8* %94, i8* %95)
  store i8* %96, i8** %7, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @xfree(i8* %98)
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @xfree(i8* %100)
  %102 = load i8*, i8** %7, align 8
  store i8* %102, i8** %2, align 8
  br label %103

103:                                              ; preds = %97, %53
  %104 = load i8*, i8** %2, align 8
  ret i8* %104
}

declare dso_local i8* @Strnsave(i8*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @gethdir(i8*) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i8* @Strspl(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
