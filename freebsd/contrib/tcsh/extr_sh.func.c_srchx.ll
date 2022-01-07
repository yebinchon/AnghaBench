; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_srchx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_srchx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srch = type { i32*, i32 }

@inheredoc = common dso_local global i64 0, align 8
@srchn = common dso_local global %struct.srch* null, align 8
@nsrchn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srchx(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.srch*, align 8
  %5 = alloca %struct.srch*, align 8
  %6 = alloca %struct.srch*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i64, i64* @inheredoc, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.srch*, %struct.srch** @srchn, align 8
  store %struct.srch* %12, %struct.srch** %5, align 8
  %13 = load %struct.srch*, %struct.srch** @srchn, align 8
  %14 = load i32, i32* @nsrchn, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.srch, %struct.srch* %13, i64 %15
  store %struct.srch* %16, %struct.srch** %6, align 8
  br label %17

17:                                               ; preds = %59, %11
  %18 = load %struct.srch*, %struct.srch** %5, align 8
  %19 = load %struct.srch*, %struct.srch** %6, align 8
  %20 = icmp ult %struct.srch* %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load %struct.srch*, %struct.srch** %5, align 8
  %23 = load %struct.srch*, %struct.srch** %6, align 8
  %24 = load %struct.srch*, %struct.srch** %5, align 8
  %25 = ptrtoint %struct.srch* %23 to i64
  %26 = ptrtoint %struct.srch* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 16
  %29 = ashr i64 %28, 1
  %30 = getelementptr inbounds %struct.srch, %struct.srch* %22, i64 %29
  store %struct.srch* %30, %struct.srch** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.srch*, %struct.srch** %4, align 8
  %34 = getelementptr inbounds %struct.srch, %struct.srch* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %32, %36
  store i32 %37, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %21
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.srch*, %struct.srch** %4, align 8
  %42 = getelementptr inbounds %struct.srch, %struct.srch* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @str2short(i32* %43)
  %45 = call i32 @Strcmp(i32* %40, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.srch*, %struct.srch** %4, align 8
  %49 = getelementptr inbounds %struct.srch, %struct.srch* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %2, align 4
  br label %61

51:                                               ; preds = %39, %21
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load %struct.srch*, %struct.srch** %4, align 8
  store %struct.srch* %55, %struct.srch** %6, align 8
  br label %59

56:                                               ; preds = %51
  %57 = load %struct.srch*, %struct.srch** %4, align 8
  %58 = getelementptr inbounds %struct.srch, %struct.srch* %57, i64 1
  store %struct.srch* %58, %struct.srch** %5, align 8
  br label %59

59:                                               ; preds = %56, %54
  br label %17

60:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %47, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @Strcmp(i32*, i32) #1

declare dso_local i32 @str2short(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
