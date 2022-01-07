; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob-compat11.c_globexp0.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob-compat11.c_globexp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.glob_limit = type { i32 }

@LBRACE = common dso_local global i64 0, align 8
@RBRACE = common dso_local global i64 0, align 8
@EOS = common dso_local global i64 0, align 8
@GLOB_LIMIT = common dso_local global i32 0, align 4
@GLOB_LIMIT_BRACE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_6__*, %struct.glob_limit*, i8*)* @globexp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globexp0(i64* %0, %struct.TYPE_6__* %1, %struct.glob_limit* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.glob_limit*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.glob_limit* %2, %struct.glob_limit** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LBRACE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %4
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RBRACE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EOS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GLOB_LIMIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %38 = getelementptr inbounds %struct.glob_limit, %struct.glob_limit* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = sext i32 %39 to i64
  %42 = load i64, i64* @GLOB_LIMIT_BRACE, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @E2BIG, align 4
  store i32 %45, i32* @errno, align 4
  %46 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %46, i32* %5, align 4
  br label %70

47:                                               ; preds = %36, %29
  %48 = load i64*, i64** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @glob0(i64* %48, %struct.TYPE_6__* %49, %struct.glob_limit* %50, i8* %51)
  store i32 %52, i32* %5, align 4
  br label %70

53:                                               ; preds = %23, %17, %4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %60 = call i32 @globexp1(i64* %57, %struct.TYPE_6__* %58, %struct.glob_limit* %59)
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %70

64:                                               ; preds = %53
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load %struct.glob_limit*, %struct.glob_limit** %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @globfinal(%struct.TYPE_6__* %65, %struct.glob_limit* %66, i64 %67, i8* %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %62, %47, %44
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @glob0(i64*, %struct.TYPE_6__*, %struct.glob_limit*, i8*) #1

declare dso_local i32 @globexp1(i64*, %struct.TYPE_6__*, %struct.glob_limit*) #1

declare dso_local i32 @globfinal(%struct.TYPE_6__*, %struct.glob_limit*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
