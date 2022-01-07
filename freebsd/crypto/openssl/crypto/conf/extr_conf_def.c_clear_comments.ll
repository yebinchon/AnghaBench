; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_clear_comments.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_clear_comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @clear_comments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_comments(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %20, %2
  %6 = load i32*, i32** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = call i64 @IS_FCOMMENT(i32* %6, i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load i8*, i8** %4, align 8
  store i8 0, i8* %12, align 1
  br label %73

13:                                               ; preds = %5
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @IS_WS(i32* %14, i8 signext %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %23

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  br label %5

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %72, %58, %48, %38, %23
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @IS_COMMENT(i32* %25, i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  store i8 0, i8* %31, align 1
  br label %73

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @IS_DQUOTE(i32* %33, i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @scan_dquote(i32* %39, i8* %40)
  store i8* %41, i8** %4, align 8
  br label %24

42:                                               ; preds = %32
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @IS_QUOTE(i32* %43, i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* @scan_quote(i32* %49, i8* %50)
  store i8* %51, i8** %4, align 8
  br label %24

52:                                               ; preds = %42
  %53 = load i32*, i32** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @IS_ESC(i32* %53, i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* @scan_esc(i32* %59, i8* %60)
  store i8* %61, i8** %4, align 8
  br label %24

62:                                               ; preds = %52
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @IS_EOF(i32* %63, i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %73

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %69
  br label %24

73:                                               ; preds = %68, %30, %11
  ret void
}

declare dso_local i64 @IS_FCOMMENT(i32*, i8 signext) #1

declare dso_local i32 @IS_WS(i32*, i8 signext) #1

declare dso_local i64 @IS_COMMENT(i32*, i8 signext) #1

declare dso_local i64 @IS_DQUOTE(i32*, i8 signext) #1

declare dso_local i8* @scan_dquote(i32*, i8*) #1

declare dso_local i64 @IS_QUOTE(i32*, i8 signext) #1

declare dso_local i8* @scan_quote(i32*, i8*) #1

declare dso_local i64 @IS_ESC(i32*, i8 signext) #1

declare dso_local i8* @scan_esc(i32*, i8*) #1

declare dso_local i64 @IS_EOF(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
