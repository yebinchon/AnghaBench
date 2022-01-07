; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_getnum_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_getnum_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @getnum_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnum_str(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %73, %57, %29, %2
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ule i32* %12, %13
  br i1 %14, label %15, label %82

15:                                               ; preds = %10
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @isspace(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %82

29:                                               ; preds = %25
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %30, align 8
  br label %10

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 59
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32**, i32*** %4, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ule i32* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32**, i32*** %4, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 10
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load i32**, i32*** %4, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %50, align 8
  br label %37

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %82

57:                                               ; preds = %53
  br label %10

58:                                               ; preds = %33
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @isdigit(i32 %59) #3
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 41
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32**, i32*** %4, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 -1
  store i32* %71, i32** %69, align 8
  br label %82

72:                                               ; preds = %65, %62
  store i32 -1, i32* %3, align 4
  br label %86

73:                                               ; preds = %58
  %74 = load i32**, i32*** %4, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %74, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 10
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 48
  %81 = add nsw i32 %78, %80
  store i32 %81, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %10

82:                                               ; preds = %68, %56, %28, %10
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
