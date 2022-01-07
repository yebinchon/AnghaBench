; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___merge_environ.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getenv.c___merge_environ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intEnviron = common dso_local global i8** null, align 8
@environ = common dso_local global i8** null, align 8
@envActive = common dso_local global i64 0, align 8
@origEnviron = common dso_local global i8** null, align 8
@CorruptEnvValueMsg = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__merge_environ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__merge_environ() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = load i8**, i8*** @intEnviron, align 8
  %5 = icmp ne i8** %4, null
  br i1 %5, label %6, label %68

6:                                                ; preds = %0
  %7 = load i8**, i8*** @environ, align 8
  %8 = load i8**, i8*** @intEnviron, align 8
  %9 = icmp ne i8** %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* @envActive, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  %14 = load i8**, i8*** @environ, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %13, %6
  %19 = load i64, i64* @envActive, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  store i8** null, i8*** @origEnviron, align 8
  %22 = call i32 @__clean_env(i32 0)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8**, i8*** @environ, align 8
  store i8** %24, i8*** @origEnviron, align 8
  %25 = load i8**, i8*** @origEnviron, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load i8**, i8*** @origEnviron, align 8
  store i8** %28, i8*** %2, align 8
  br label %29

29:                                               ; preds = %63, %27
  %30 = load i8**, i8*** %2, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i8**, i8*** %2, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 61)
  store i8* %36, i8** %3, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @CorruptEnvValueMsg, align 4
  %40 = load i8**, i8*** %2, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %2, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @__env_warnx(i32 %39, i8* %41, i32 %44)
  %46 = load i32, i32* @EFAULT, align 4
  store i32 %46, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %69

47:                                               ; preds = %33
  %48 = load i8**, i8*** %2, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = load i8**, i8*** %2, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i32 @__setenv(i8* %49, i32 %56, i8* %58, i32 1)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i32 -1, i32* %1, align 4
  br label %69

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i8**, i8*** %2, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %2, align 8
  br label %29

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66, %23
  br label %68

68:                                               ; preds = %67, %13, %10, %0
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %68, %61, %38
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @__clean_env(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @__env_warnx(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__setenv(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
