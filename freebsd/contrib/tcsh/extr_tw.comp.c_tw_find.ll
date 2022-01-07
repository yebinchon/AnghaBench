; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i8*, i32**, %struct.varent*, %struct.varent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32*, %struct.varent*, i32)* @tw_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @tw_find(i32* %0, %struct.varent* %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.varent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.varent* %1, %struct.varent** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.varent*, %struct.varent** %6, align 8
  %10 = getelementptr inbounds %struct.varent, %struct.varent* %9, i32 0, i32 2
  %11 = load %struct.varent*, %struct.varent** %10, align 8
  store %struct.varent* %11, %struct.varent** %6, align 8
  br label %12

12:                                               ; preds = %76, %3
  %13 = load %struct.varent*, %struct.varent** %6, align 8
  %14 = icmp ne %struct.varent* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %12
  %16 = load %struct.varent*, %struct.varent** %6, align 8
  %17 = getelementptr inbounds %struct.varent, %struct.varent* %16, i32 0, i32 2
  %18 = load %struct.varent*, %struct.varent** %17, align 8
  %19 = icmp ne %struct.varent* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.varent*, %struct.varent** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32** @tw_find(i32* %21, %struct.varent* %22, i32 %23)
  store i32** %24, i32*** %8, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32**, i32*** %8, align 8
  store i32** %27, i32*** %4, align 8
  br label %81

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load %struct.varent*, %struct.varent** %6, align 8
  %33 = getelementptr inbounds %struct.varent, %struct.varent* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 45
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %76

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.varent*, %struct.varent** %6, align 8
  %43 = getelementptr inbounds %struct.varent, %struct.varent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i64 @Gmatch(i32* %41, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.varent*, %struct.varent** %6, align 8
  %50 = getelementptr inbounds %struct.varent, %struct.varent* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.varent*, %struct.varent** %6, align 8
  %55 = getelementptr inbounds %struct.varent, %struct.varent* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  store i32** %56, i32*** %4, align 8
  br label %81

57:                                               ; preds = %48, %40
  br label %75

58:                                               ; preds = %28
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.varent*, %struct.varent** %6, align 8
  %61 = getelementptr inbounds %struct.varent, %struct.varent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @Gmatch(i32* %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.varent*, %struct.varent** %6, align 8
  %67 = getelementptr inbounds %struct.varent, %struct.varent* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.varent*, %struct.varent** %6, align 8
  %72 = getelementptr inbounds %struct.varent, %struct.varent* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  store i32** %73, i32*** %4, align 8
  br label %81

74:                                               ; preds = %65, %58
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %39
  %77 = load %struct.varent*, %struct.varent** %6, align 8
  %78 = getelementptr inbounds %struct.varent, %struct.varent* %77, i32 0, i32 3
  %79 = load %struct.varent*, %struct.varent** %78, align 8
  store %struct.varent* %79, %struct.varent** %6, align 8
  br label %12

80:                                               ; preds = %12
  store i32** null, i32*** %4, align 8
  br label %81

81:                                               ; preds = %80, %70, %53, %26
  %82 = load i32**, i32*** %4, align 8
  ret i32** %82
}

declare dso_local i64 @Gmatch(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
