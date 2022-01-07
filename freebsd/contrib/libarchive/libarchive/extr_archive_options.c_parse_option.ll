; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_options.c_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_options.c_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8**, i8**, i8**)* @parse_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_option(i8** %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 44)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %14, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %14, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = icmp eq i64 0, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = load i8**, i8*** %6, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  store i8* null, i8** %32, align 8
  %33 = load i8**, i8*** %8, align 8
  store i8* null, i8** %33, align 8
  %34 = load i8**, i8*** %9, align 8
  store i8* null, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %5, align 8
  br label %75

36:                                               ; preds = %25
  %37 = load i8*, i8** %12, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 58)
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %14, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %12, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %14, align 8
  store i8* %45, i8** %12, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 61)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** %14, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %14, align 8
  store i8* %54, i8** %13, align 8
  br label %65

55:                                               ; preds = %46
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 33
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  store i8* null, i8** %13, align 8
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %51
  %66 = load i8*, i8** %10, align 8
  %67 = load i8**, i8*** %6, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8**, i8*** %7, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8**, i8*** %8, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %5, align 8
  br label %75

75:                                               ; preds = %65, %29
  %76 = load i8*, i8** %5, align 8
  ret i8* %76
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
