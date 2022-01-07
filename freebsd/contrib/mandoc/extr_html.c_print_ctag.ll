; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_ctag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_ctag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.html = type { i32, i32, i32, %struct.tag*, %struct.tag* }
%struct.tag = type { i32, i64, i64, i32 }

@htmltags = common dso_local global %struct.TYPE_2__* null, align 8
@HTML_INDENT = common dso_local global i32 0, align 4
@HTML_NOINDENT = common dso_local global i32 0, align 4
@HTML_NLEND = common dso_local global i32 0, align 4
@HTML_NLAFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*, %struct.tag*)* @print_ctag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ctag(%struct.html* %0, %struct.tag* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.tag*, align 8
  %5 = alloca i32, align 4
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.tag* %1, %struct.tag** %4, align 8
  %6 = load %struct.tag*, %struct.tag** %4, align 8
  %7 = getelementptr inbounds %struct.tag, %struct.tag* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %91

10:                                               ; preds = %2
  %11 = load %struct.tag*, %struct.tag** %4, align 8
  %12 = getelementptr inbounds %struct.tag, %struct.tag* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.tag*, %struct.tag** %4, align 8
  %14 = load %struct.html*, %struct.html** %3, align 8
  %15 = getelementptr inbounds %struct.html, %struct.html* %14, i32 0, i32 4
  %16 = load %struct.tag*, %struct.tag** %15, align 8
  %17 = icmp eq %struct.tag* %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.html*, %struct.html** %3, align 8
  %20 = getelementptr inbounds %struct.html, %struct.html* %19, i32 0, i32 4
  store %struct.tag* null, %struct.tag** %20, align 8
  br label %21

21:                                               ; preds = %18, %10
  %22 = load %struct.tag*, %struct.tag** %4, align 8
  %23 = load %struct.html*, %struct.html** %3, align 8
  %24 = getelementptr inbounds %struct.html, %struct.html* %23, i32 0, i32 3
  %25 = load %struct.tag*, %struct.tag** %24, align 8
  %26 = icmp eq %struct.tag* %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.html*, %struct.html** %3, align 8
  %29 = getelementptr inbounds %struct.html, %struct.html* %28, i32 0, i32 3
  store %struct.tag* null, %struct.tag** %29, align 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @htmltags, align 8
  %32 = load %struct.tag*, %struct.tag** %4, align 8
  %33 = getelementptr inbounds %struct.tag, %struct.tag* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HTML_INDENT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.html*, %struct.html** %3, align 8
  %44 = getelementptr inbounds %struct.html, %struct.html* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %30
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @HTML_NOINDENT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.html*, %struct.html** %3, align 8
  %54 = getelementptr inbounds %struct.html, %struct.html* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @HTML_NLEND, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.html*, %struct.html** %3, align 8
  %64 = call i32 @print_endline(%struct.html* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.html*, %struct.html** %3, align 8
  %67 = call i32 @print_indent(%struct.html* %66)
  %68 = load %struct.html*, %struct.html** %3, align 8
  %69 = call i32 @print_byte(%struct.html* %68, i8 signext 60)
  %70 = load %struct.html*, %struct.html** %3, align 8
  %71 = call i32 @print_byte(%struct.html* %70, i8 signext 47)
  %72 = load %struct.html*, %struct.html** %3, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @htmltags, align 8
  %74 = load %struct.tag*, %struct.tag** %4, align 8
  %75 = getelementptr inbounds %struct.tag, %struct.tag* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @print_word(%struct.html* %72, i32 %79)
  %81 = load %struct.html*, %struct.html** %3, align 8
  %82 = call i32 @print_byte(%struct.html* %81, i8 signext 62)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @HTML_NLAFTER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %65
  %88 = load %struct.html*, %struct.html** %3, align 8
  %89 = call i32 @print_endline(%struct.html* %88)
  br label %90

90:                                               ; preds = %87, %65
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.tag*, %struct.tag** %4, align 8
  %93 = getelementptr inbounds %struct.tag, %struct.tag* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.tag*, %struct.tag** %4, align 8
  %98 = getelementptr inbounds %struct.tag, %struct.tag* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.html*, %struct.html** %3, align 8
  %101 = getelementptr inbounds %struct.html, %struct.html* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tag*, %struct.tag** %4, align 8
  %103 = call i32 @free(%struct.tag* %102)
  br label %104

104:                                              ; preds = %96, %91
  ret void
}

declare dso_local i32 @print_endline(%struct.html*) #1

declare dso_local i32 @print_indent(%struct.html*) #1

declare dso_local i32 @print_byte(%struct.html*, i8 signext) #1

declare dso_local i32 @print_word(%struct.html*, i32) #1

declare dso_local i32 @free(%struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
