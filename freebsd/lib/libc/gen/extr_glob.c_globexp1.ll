; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_globexp1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_globexp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.glob_limit = type { i32 }

@LBRACE = common dso_local global i32 0, align 4
@GLOB_LIMIT = common dso_local global i32 0, align 4
@GLOB_LIMIT_BRACE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.glob_limit*)* @globexp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globexp1(i32* %0, %struct.TYPE_5__* %1, %struct.glob_limit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.glob_limit*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.glob_limit* %2, %struct.glob_limit** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @LBRACE, align 4
  %11 = call i32* @g_strchr(i32* %9, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GLOB_LIMIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.glob_limit*, %struct.glob_limit** %7, align 8
  %22 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  %26 = load i64, i64* @GLOB_LIMIT_BRACE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @E2BIG, align 4
  store i32 %29, i32* @errno, align 4
  %30 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %20, %13
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = load %struct.glob_limit*, %struct.glob_limit** %7, align 8
  %36 = call i32 @globexp2(i32* %32, i32* %33, %struct.TYPE_5__* %34, %struct.glob_limit* %35)
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %3
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load %struct.glob_limit*, %struct.glob_limit** %7, align 8
  %41 = call i32 @glob0(i32* %38, %struct.TYPE_5__* %39, %struct.glob_limit* %40, i32* null)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %31, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32* @g_strchr(i32*, i32) #1

declare dso_local i32 @globexp2(i32*, i32*, %struct.TYPE_5__*, %struct.glob_limit*) #1

declare dso_local i32 @glob0(i32*, %struct.TYPE_5__*, %struct.glob_limit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
