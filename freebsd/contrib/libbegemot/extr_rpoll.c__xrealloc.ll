; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c__xrealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c__xrealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"out of memory: xrealloc(%lx, %lu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @_xrealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_xrealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i8* @malloc(i32 1)
  store i8* %17, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %13
  %20 = load i8*, i8** %3, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @_panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %16, %8
  br label %56

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %5, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = call i8* @malloc(i32 1)
  store i8* %36, i8** %5, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %3, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @_panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %35, %28
  br label %55

44:                                               ; preds = %25
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i8* @realloc(i8* %45, i64 %46)
  store i8* %47, i8** %5, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @_panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i8*, i8** %5, align 8
  ret i8* %57
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @_panic(i8*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
