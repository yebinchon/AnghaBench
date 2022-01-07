; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_areadlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_areadlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @areadlink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @xmalloc(i64 %11)
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @readlink(i8* %14, i8* %15, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = mul i64 %22, 2
  store i64 %23, i64* %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @xrealloc(i8* %24, i32 %26)
  store i8* %27, i8** %4, align 8
  br label %13

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @xfree(i8* %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %45

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i8* @xrealloc(i8* %41, i32 %43)
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %36, %31
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @readlink(i8*, i8*, i64) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
