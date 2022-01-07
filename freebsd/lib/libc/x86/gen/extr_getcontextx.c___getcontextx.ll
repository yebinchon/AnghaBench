; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/x86/gen/extr_getcontextx.c___getcontextx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/x86/gen/extr_getcontextx.c___getcontextx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__getcontextx() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @__getcontextx_size()
  %5 = call i8* @malloc(i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %21

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @__fillcontextx(i8* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @errno, align 4
  store i32* null, i32** %1, align 8
  br label %21

18:                                               ; preds = %9
  %19 = load i8*, i8** %2, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %1, align 8
  br label %21

21:                                               ; preds = %18, %13, %8
  %22 = load i32*, i32** %1, align 8
  ret i32* %22
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @__getcontextx_size(...) #1

declare dso_local i32 @__fillcontextx(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
