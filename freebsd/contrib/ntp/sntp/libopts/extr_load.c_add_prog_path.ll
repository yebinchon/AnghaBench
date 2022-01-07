; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_load.c_add_prog_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_load.c_add_prog_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @add_prog_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_prog_path(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 2, i32* %12, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %19 [
    i32 129, label %17
    i32 128, label %18
  ]

17:                                               ; preds = %4
  store i32 3, i32* %12, align 4
  br label %18

18:                                               ; preds = %4, %17
  br label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

20:                                               ; preds = %18
  %21 = load i8*, i8** %9, align 8
  %22 = call i32* @strchr(i8* %21, i32 129)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %10, align 8
  br label %34

26:                                               ; preds = %20
  %27 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @pathfind(i32 %27, i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %85

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @strrchr(i8* %35, i32 129)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %85

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 1
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add i32 %51, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %85

58:                                               ; preds = %40
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = add nsw i64 %65, 1
  %67 = call i32 @memcpy(i8* %59, i8* %60, i64 %66)
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %58
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @AGFREE(i8* %82)
  br label %84

84:                                               ; preds = %81, %58
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %57, %39, %32, %19
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i8* @pathfind(i32, i8*, i8*) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @AGFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
