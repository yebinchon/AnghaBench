; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_agetcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_agetcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @agetcwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @agetcwd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i64, i64* @MAXPATHLEN, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i8* @xmalloc(i64 %7)
  store i8* %8, i8** %2, align 8
  br label %9

9:                                                ; preds = %23, %0
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32* @getcwd(i8* %10, i64 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ERANGE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @xfree(i8* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* @errno, align 4
  store i32* null, i32** %1, align 8
  br label %43

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 %24, 2
  store i64 %25, i64* %4, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i8* @xrealloc(i8* %26, i64 %27)
  store i8* %28, i8** %2, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @xfree(i8* %35)
  store i32* null, i32** %1, align 8
  br label %43

37:                                               ; preds = %29
  %38 = load i8*, i8** %2, align 8
  %39 = call i32* @SAVE(i8* %38)
  store i32* %39, i32** %3, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @xfree(i8* %40)
  %42 = load i32*, i32** %3, align 8
  store i32* %42, i32** %1, align 8
  br label %43

43:                                               ; preds = %37, %34, %19
  %44 = load i32*, i32** %1, align 8
  ret i32* %44
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32* @getcwd(i8*, i64) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32* @SAVE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
