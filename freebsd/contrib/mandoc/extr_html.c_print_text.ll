; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32, i32*, i64 }

@HTML_NOSPACE = common dso_local global i32 0, align 4
@HTML_KEEP = common dso_local global i32 0, align 4
@HTML_PREKEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"&#x00A0;\00", align 1
@HTML_NONOSPACE = common dso_local global i32 0, align 4
@HTML_NONEWLINE = common dso_local global i32 0, align 4
@HTML_IGNDELIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_text(%struct.html* %0, i8* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca i8*, align 8
  store %struct.html* %0, %struct.html** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.html*, %struct.html** %3, align 8
  %6 = getelementptr inbounds %struct.html, %struct.html* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.html*, %struct.html** %3, align 8
  %11 = getelementptr inbounds %struct.html, %struct.html* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HTML_NOSPACE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %9
  %17 = load i32, i32* @HTML_KEEP, align 4
  %18 = load %struct.html*, %struct.html** %3, align 8
  %19 = getelementptr inbounds %struct.html, %struct.html* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @HTML_PREKEEP, align 4
  %25 = load %struct.html*, %struct.html** %3, align 8
  %26 = getelementptr inbounds %struct.html, %struct.html* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @HTML_KEEP, align 4
  %32 = load %struct.html*, %struct.html** %3, align 8
  %33 = getelementptr inbounds %struct.html, %struct.html* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.html*, %struct.html** %3, align 8
  %38 = call i32 @print_endword(%struct.html* %37)
  br label %42

39:                                               ; preds = %16
  %40 = load %struct.html*, %struct.html** %3, align 8
  %41 = call i32 @print_word(%struct.html* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %9, %2
  %44 = load %struct.html*, %struct.html** %3, align 8
  %45 = getelementptr inbounds %struct.html, %struct.html* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.html*, %struct.html** %3, align 8
  %51 = call i32 @print_metaf(%struct.html* %50)
  %52 = load %struct.html*, %struct.html** %3, align 8
  %53 = call i32 @print_indent(%struct.html* %52)
  %54 = load %struct.html*, %struct.html** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @print_encode(%struct.html* %54, i8* %55, i32* null, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %43
  %59 = load %struct.html*, %struct.html** %3, align 8
  %60 = getelementptr inbounds %struct.html, %struct.html* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HTML_NONOSPACE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @HTML_NOSPACE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.html*, %struct.html** %3, align 8
  %69 = getelementptr inbounds %struct.html, %struct.html* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* @HTML_NONEWLINE, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.html*, %struct.html** %3, align 8
  %76 = getelementptr inbounds %struct.html, %struct.html* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %87

79:                                               ; preds = %43
  %80 = load i32, i32* @HTML_NOSPACE, align 4
  %81 = load i32, i32* @HTML_NONEWLINE, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.html*, %struct.html** %3, align 8
  %84 = getelementptr inbounds %struct.html, %struct.html* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.html*, %struct.html** %3, align 8
  %89 = getelementptr inbounds %struct.html, %struct.html* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.html*, %struct.html** %3, align 8
  %94 = load %struct.html*, %struct.html** %3, align 8
  %95 = getelementptr inbounds %struct.html, %struct.html* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @print_tagq(%struct.html* %93, i32* %96)
  %98 = load %struct.html*, %struct.html** %3, align 8
  %99 = getelementptr inbounds %struct.html, %struct.html* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %92, %87
  %101 = load i32, i32* @HTML_IGNDELIM, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.html*, %struct.html** %3, align 8
  %104 = getelementptr inbounds %struct.html, %struct.html* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  ret void
}

declare dso_local i32 @print_endword(%struct.html*) #1

declare dso_local i32 @print_word(%struct.html*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @print_metaf(%struct.html*) #1

declare dso_local i32 @print_indent(%struct.html*) #1

declare dso_local i32 @print_encode(%struct.html*, i8*, i32*, i32) #1

declare dso_local i32 @print_tagq(%struct.html*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
