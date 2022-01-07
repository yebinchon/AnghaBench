; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_makeargv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_main.c_makeargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@margv = common dso_local global i8** null, align 8
@line = common dso_local global i32 0, align 4
@stringbase = common dso_local global i32 0, align 4
@argbuf = common dso_local global i32 0, align 4
@argbase = common dso_local global i32 0, align 4
@slrflag = common dso_local global i64 0, align 8
@margc = common dso_local global i32 0, align 4
@margvlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot realloc argv array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeargv() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = load i8**, i8*** @margv, align 8
  store i8** %3, i8*** %1, align 8
  %4 = load i32, i32* @line, align 4
  store i32 %4, i32* @stringbase, align 4
  %5 = load i32, i32* @argbuf, align 4
  store i32 %5, i32* @argbase, align 4
  store i64 0, i64* @slrflag, align 8
  store i32 0, i32* @margc, align 4
  br label %6

6:                                                ; preds = %61, %0
  %7 = load i32, i32* @margc, align 4
  %8 = load i32, i32* @margvlen, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = load i32, i32* @margvlen, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i64 @malloc(i32 160)
  %15 = inttoptr i64 %14 to i8**
  br label %25

16:                                               ; preds = %10
  %17 = load i8**, i8*** @margv, align 8
  %18 = load i32, i32* @margvlen, align 4
  %19 = add nsw i32 %18, 20
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @realloc(i8** %17, i32 %22)
  %24 = inttoptr i64 %23 to i8**
  br label %25

25:                                               ; preds = %16, %13
  %26 = phi i8** [ %15, %13 ], [ %24, %16 ]
  store i8** %26, i8*** @margv, align 8
  %27 = load i8**, i8*** @margv, align 8
  %28 = icmp eq i8** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @margvlen, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %43, %31
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @margvlen, align 4
  %36 = add nsw i32 %35, 20
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8**, i8*** @margv, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %33

46:                                               ; preds = %33
  %47 = load i32, i32* @margvlen, align 4
  %48 = add nsw i32 %47, 20
  store i32 %48, i32* @margvlen, align 4
  %49 = load i8**, i8*** @margv, align 8
  %50 = load i32, i32* @margc, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8** %52, i8*** %1, align 8
  br label %53

53:                                               ; preds = %46, %6
  %54 = call i32* (...) @slurpstring()
  %55 = bitcast i32* %54 to i8*
  %56 = load i8**, i8*** %1, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %1, align 8
  store i8* %55, i8** %56, align 8
  %58 = icmp eq i8* %55, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @margc, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @margc, align 4
  br label %6

64:                                               ; preds = %59
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @slurpstring(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
