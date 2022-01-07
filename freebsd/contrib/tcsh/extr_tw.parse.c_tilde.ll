; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_tilde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_tilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Strbuf*, i32*)* @tilde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tilde(%struct.Strbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Strbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %11 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %95 [
    i32 126, label %15
    i32 61, label %79
  ]

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %6, align 8
  br label %19

19:                                               ; preds = %30, %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 47
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  br label %19

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32* @Strnsave(i32* %34, i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @gethdir(i32* %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @xfree(i32* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %102

50:                                               ; preds = %33
  %51 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @Strbuf_append(%struct.Strbuf* %51, i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @xfree(i32* %54)
  %56 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %57 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %75

63:                                               ; preds = %50
  %64 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %65 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  br label %75

75:                                               ; preds = %72, %68, %63, %50
  %76 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @Strbuf_append(%struct.Strbuf* %76, i32* %77)
  br label %99

79:                                               ; preds = %2
  %80 = load i32*, i32** %5, align 8
  %81 = call i32* @globequal(i32* %80)
  store i32* %81, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %102

84:                                               ; preds = %79
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ne i32* %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @Strbuf_append(%struct.Strbuf* %89, i32* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @xfree(i32* %92)
  br label %99

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %2, %94
  %96 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @Strbuf_append(%struct.Strbuf* %96, i32* %97)
  br label %99

99:                                               ; preds = %95, %88, %75
  %100 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %101 = call i32 @Strbuf_terminate(%struct.Strbuf* %100)
  store i32 0, i32* %3, align 4
  br label %105

102:                                              ; preds = %83, %49
  %103 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %104 = call i32 @Strbuf_terminate(%struct.Strbuf* %103)
  store i32 -1, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32* @Strnsave(i32*, i32) #1

declare dso_local i32* @gethdir(i32*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i32*) #1

declare dso_local i32* @globequal(i32*) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
