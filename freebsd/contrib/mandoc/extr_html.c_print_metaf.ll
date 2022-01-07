; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_metaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_metaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32, i32* }

@TAG_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TAG_B = common dso_local global i32 0, align 4
@TAG_SPAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Li\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*)* @print_metaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_metaf(%struct.html* %0) #0 {
  %2 = alloca %struct.html*, align 8
  store %struct.html* %0, %struct.html** %2, align 8
  %3 = load %struct.html*, %struct.html** %2, align 8
  %4 = getelementptr inbounds %struct.html, %struct.html* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.html*, %struct.html** %2, align 8
  %9 = load %struct.html*, %struct.html** %2, align 8
  %10 = getelementptr inbounds %struct.html, %struct.html* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @print_tagq(%struct.html* %8, i32* %11)
  %13 = load %struct.html*, %struct.html** %2, align 8
  %14 = getelementptr inbounds %struct.html, %struct.html* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.html*, %struct.html** %2, align 8
  %17 = getelementptr inbounds %struct.html, %struct.html* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %50 [
    i32 128, label %19
    i32 130, label %26
    i32 131, label %33
    i32 129, label %43
  ]

19:                                               ; preds = %15
  %20 = load %struct.html*, %struct.html** %2, align 8
  %21 = load i32, i32* @TAG_I, align 4
  %22 = call i8* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %20, i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.html*, %struct.html** %2, align 8
  %25 = getelementptr inbounds %struct.html, %struct.html* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  br label %51

26:                                               ; preds = %15
  %27 = load %struct.html*, %struct.html** %2, align 8
  %28 = load i32, i32* @TAG_B, align 4
  %29 = call i8* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %27, i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.html*, %struct.html** %2, align 8
  %32 = getelementptr inbounds %struct.html, %struct.html* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  br label %51

33:                                               ; preds = %15
  %34 = load %struct.html*, %struct.html** %2, align 8
  %35 = load i32, i32* @TAG_B, align 4
  %36 = call i8* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %34, i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.html*, %struct.html** %2, align 8
  %39 = getelementptr inbounds %struct.html, %struct.html* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.html*, %struct.html** %2, align 8
  %41 = load i32, i32* @TAG_I, align 4
  %42 = call i8* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %40, i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %51

43:                                               ; preds = %15
  %44 = load %struct.html*, %struct.html** %2, align 8
  %45 = load i32, i32* @TAG_SPAN, align 4
  %46 = call i8* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %44, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.html*, %struct.html** %2, align 8
  %49 = getelementptr inbounds %struct.html, %struct.html* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  br label %51

50:                                               ; preds = %15
  br label %51

51:                                               ; preds = %50, %43, %33, %26, %19
  ret void
}

declare dso_local i32 @print_tagq(%struct.html*, i32*) #1

declare dso_local i8* @print_otag(%struct.html*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
