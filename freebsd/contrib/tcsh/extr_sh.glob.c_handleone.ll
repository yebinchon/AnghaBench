; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_handleone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_handleone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_AMBIG = common dso_local global i32 0, align 4
@TRIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i32)* @handleone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handleone(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %81 [
    i32 129, label %12
    i32 130, label %22
    i32 128, label %74
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @short2str(i8* %13)
  %15 = call i32 @setname(i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @blkfree(i8** %16)
  %18 = load i32, i32* @ERR_NAME, align 4
  %19 = load i32, i32* @ERR_AMBIG, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @stderror(i32 %20)
  br label %82

22:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8** %23, i8*** %8, align 8
  br label %24

24:                                               ; preds = %34, %22
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %8, align 8
  %27 = load i8*, i8** %25, align 8
  store i8* %27, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @Strlen(i8* %30)
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %38, 1
  %40 = call i8* @xmalloc(i64 %39)
  store i8* %40, i8** %4, align 8
  %41 = load i8**, i8*** %5, align 8
  store i8** %41, i8*** %8, align 8
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %66, %37
  %44 = load i8**, i8*** %8, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %8, align 8
  %46 = load i8*, i8** %44, align 8
  store i8* %46, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = load i32, i32* @TRIM, align 4
  %59 = and i32 %57, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  store i8 %60, i8* %61, align 1
  br label %49

63:                                               ; preds = %49
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  store i8 32, i8* %64, align 1
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %43

69:                                               ; preds = %43
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %10, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8**, i8*** %5, align 8
  %73 = call i32 @blkfree(i8** %72)
  br label %82

74:                                               ; preds = %3
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strip(i8* %76)
  %78 = call i8* @Strsave(i32 %77)
  store i8* %78, i8** %4, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = call i32 @blkfree(i8** %79)
  br label %82

81:                                               ; preds = %3
  br label %82

82:                                               ; preds = %81, %74, %69, %12
  %83 = load i8*, i8** %4, align 8
  ret i8* %83
}

declare dso_local i32 @setname(i32) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i32 @blkfree(i8**) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @Strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @Strsave(i32) #1

declare dso_local i32 @strip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
