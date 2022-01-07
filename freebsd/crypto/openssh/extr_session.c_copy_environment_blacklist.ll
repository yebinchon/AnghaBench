; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_copy_environment_blacklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_copy_environment_blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Copy environment: %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8***, i32*, i8*)* @copy_environment_blacklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_environment_blacklist(i8** %0, i8*** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %61

15:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %58, %15
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %16
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @xstrdup(i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @free(i8* %34)
  br label %58

36:                                               ; preds = %23
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @match_pattern_list(i8* %42, i8* %43, i32 0)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @debug3(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load i8***, i8**** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @child_set_env(i8*** %50, i32* %51, i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %33
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %16

61:                                               ; preds = %14, %16
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

declare dso_local i32 @debug3(i8*, i8*, i8*) #1

declare dso_local i32 @child_set_env(i8***, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
