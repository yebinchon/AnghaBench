; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/praudit/extr_praudit.c_print_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/praudit/extr_praudit.c_print_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@partial = common dso_local global i64 0, align 8
@AUT_HEADER32 = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@del = common dso_local global i8* null, align 8
@oflags = common dso_local global i32 0, align 4
@oneline = common dso_local global i64 0, align 8
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @print_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_tokens(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i64, i64* @partial, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %14, %10
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @fgetc(i32* %12)
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AUT_HEADER32, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %11, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @ungetc(i64 %19, i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @au_read_rec(i32* %24, i64** %3)
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %67, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load i64*, i64** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @au_fetch_tok(%struct.TYPE_4__* %4, i64* %36, i32 %39)
  %41 = icmp eq i32 -1, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %68

43:                                               ; preds = %32
  %44 = load i32, i32* @stdout, align 4
  %45 = load i8*, i8** @del, align 8
  %46 = load i32, i32* @oflags, align 4
  %47 = call i32 @au_print_flags_tok(i32 %44, %struct.TYPE_4__* %4, i8* %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* @oneline, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %43
  %57 = load i32, i32* @oflags, align 4
  %58 = load i32, i32* @AU_OFLAG_XML, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** @del, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %67

65:                                               ; preds = %43
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %64
  br label %28

68:                                               ; preds = %42, %28
  %69 = load i64*, i64** %3, align 8
  %70 = call i32 @free(i64* %69)
  %71 = load i64, i64* @oneline, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32, i32* @stdout, align 4
  %77 = call i32 @fflush(i32 %76)
  br label %23

78:                                               ; preds = %23
  ret i32 0
}

declare dso_local i64 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i64, i32*) #1

declare dso_local i32 @au_read_rec(i32*, i64**) #1

declare dso_local i32 @au_fetch_tok(%struct.TYPE_4__*, i64*, i32) #1

declare dso_local i32 @au_print_flags_tok(i32, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
