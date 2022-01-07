; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.str.c_short2qstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.str.c_short2qstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@short2qstr.sdst = internal global i8* null, align 8
@short2qstr.dstsize = internal global i64 0, align 8
@MALLOC_INCR = common dso_local global i64 0, align 8
@MALLOC_SURPLUS = common dso_local global i64 0, align 8
@QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @short2qstr(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %100

10:                                               ; preds = %1
  %11 = load i8*, i8** @short2qstr.sdst, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i64, i64* @MALLOC_INCR, align 8
  store i64 %14, i64* @short2qstr.dstsize, align 8
  %15 = load i64, i64* @short2qstr.dstsize, align 8
  %16 = load i64, i64* @MALLOC_SURPLUS, align 8
  %17 = add i64 %15, %16
  %18 = mul i64 %17, 1
  %19 = call i8* @xmalloc(i64 %18)
  store i8* %19, i8** @short2qstr.sdst, align 8
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i8*, i8** @short2qstr.sdst, align 8
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* @short2qstr.dstsize, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %96, %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @QUOTE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 92, i8* %36, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i64, i64* @MALLOC_INCR, align 8
  %43 = load i64, i64* @short2qstr.dstsize, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* @short2qstr.dstsize, align 8
  %45 = load i8*, i8** @short2qstr.sdst, align 8
  %46 = load i64, i64* @short2qstr.dstsize, align 8
  %47 = load i64, i64* @MALLOC_SURPLUS, align 8
  %48 = add i64 %46, %47
  %49 = mul i64 %48, 1
  %50 = call i8* @xrealloc(i8* %45, i64 %49)
  store i8* %50, i8** @short2qstr.sdst, align 8
  %51 = load i8*, i8** @short2qstr.sdst, align 8
  %52 = load i64, i64* @short2qstr.dstsize, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* @MALLOC_INCR, align 8
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %41, %35
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i8*, i8** %4, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @one_wctomb(i8* %60, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %4, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %3, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp uge i8* %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %59
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* @MALLOC_INCR, align 8
  %79 = load i64, i64* @short2qstr.dstsize, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* @short2qstr.dstsize, align 8
  %81 = load i8*, i8** @short2qstr.sdst, align 8
  %82 = load i64, i64* @short2qstr.dstsize, align 8
  %83 = load i64, i64* @MALLOC_SURPLUS, align 8
  %84 = add i64 %82, %83
  %85 = mul i64 %84, 1
  %86 = call i8* @xrealloc(i8* %81, i64 %85)
  store i8* %86, i8** @short2qstr.sdst, align 8
  %87 = load i8*, i8** @short2qstr.sdst, align 8
  %88 = load i64, i64* @short2qstr.dstsize, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* @MALLOC_INCR, align 8
  %92 = sub i64 0, %91
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %72, %59
  br label %25

97:                                               ; preds = %25
  %98 = load i8*, i8** %4, align 8
  store i8 0, i8* %98, align 1
  %99 = load i8*, i8** @short2qstr.sdst, align 8
  store i8* %99, i8** %2, align 8
  br label %100

100:                                              ; preds = %97, %9
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @one_wctomb(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
