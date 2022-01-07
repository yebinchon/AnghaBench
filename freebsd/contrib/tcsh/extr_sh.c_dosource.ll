; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_dosource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_dosource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@STRmh = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_HFLAG = common dso_local global i32 0, align 4
@STRmm = common dso_local global i32 0, align 4
@ERR_MFLAG = common dso_local global i32 0, align 4
@G_ERROR = common dso_local global i32 0, align 4
@blk_cleanup = common dso_local global i32 0, align 4
@bequiet = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dosource(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.command*, %struct.command** %4, align 8
  %9 = call i32 @USE(%struct.command* %8)
  %10 = load i32**, i32*** %3, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %11, i32*** %3, align 8
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load i32**, i32*** %3, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @STRmh, align 4
  %19 = call i64 @eq(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32**, i32*** %3, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i32 1
  store i32** %23, i32*** %3, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @ERR_NAME, align 4
  %28 = load i32, i32* @ERR_HFLAG, align 4
  %29 = or i32 %27, %28
  %30 = call i32 (i32, ...) @stderror(i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %56

34:                                               ; preds = %15, %2
  %35 = load i32**, i32*** %3, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32**, i32*** %3, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @STRmm, align 4
  %42 = call i64 @eq(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load i32**, i32*** %3, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i32 1
  store i32** %46, i32*** %3, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @ERR_NAME, align 4
  %51 = load i32, i32* @ERR_MFLAG, align 4
  %52 = or i32 %50, %51
  %53 = call i32 (i32, ...) @stderror(i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  store i32 2, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %38, %34
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32**, i32*** %3, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i32 1
  store i32** %58, i32*** %3, align 8
  %59 = load i32*, i32** %57, align 8
  %60 = ptrtoint i32* %59 to i32
  %61 = load i32, i32* @G_ERROR, align 4
  %62 = call i32* @globone(i32 %60, i32 %61)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @short2str(i32* %63)
  %65 = call i8* @strsave(i32 %64)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @cleanup_push(i8* %66, i32 (i32*)* @xfree)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @xfree(i32* %68)
  %70 = load i32**, i32*** %3, align 8
  %71 = call i32** @glob_all_or_error(i32** %70)
  store i32** %71, i32*** %3, align 8
  %72 = load i32**, i32*** %3, align 8
  %73 = bitcast i32** %72 to i8*
  %74 = load i32, i32* @blk_cleanup, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32 (i32*)*
  %77 = call i32 @cleanup_push(i8* %73, i32 (i32*)* %76)
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32**, i32*** %3, align 8
  %81 = call i32 @srcfile(i8* %78, i32 0, i32 %79, i32** %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %56
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @bequiet, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @ERR_SYSTEM, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @strerror(i32 %92)
  %94 = call i32 (i32, ...) @stderror(i32 %90, i8* %91, i32 %93)
  br label %95

95:                                               ; preds = %89, %86, %83, %56
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @cleanup_until(i8* %96)
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i64 @eq(i32*, i32) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i32* @globone(i32, i32) #1

declare dso_local i8* @strsave(i32) #1

declare dso_local i32 @short2str(i32*) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i32*)*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32** @glob_all_or_error(i32**) #1

declare dso_local i32 @srcfile(i8*, i32, i32, i32**) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
