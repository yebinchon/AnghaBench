; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_free1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_free1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i64, i32, %struct.TYPE_2__*, i32*, i32*, i32*, i32*, i64, %struct.TYPE_2__*, i64, i32*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff*)* @roff_free1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_free1(%struct.roff* %0) #0 {
  %2 = alloca %struct.roff*, align 8
  %3 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %2, align 8
  %4 = load %struct.roff*, %struct.roff** %2, align 8
  %5 = getelementptr inbounds %struct.roff, %struct.roff* %4, i32 0, i32 14
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @tbl_free(i32 %6)
  %8 = load %struct.roff*, %struct.roff** %2, align 8
  %9 = getelementptr inbounds %struct.roff, %struct.roff* %8, i32 0, i32 12
  store i32* null, i32** %9, align 8
  %10 = load %struct.roff*, %struct.roff** %2, align 8
  %11 = getelementptr inbounds %struct.roff, %struct.roff* %10, i32 0, i32 13
  store i32 0, i32* %11, align 8
  %12 = load %struct.roff*, %struct.roff** %2, align 8
  %13 = getelementptr inbounds %struct.roff, %struct.roff* %12, i32 0, i32 14
  store i32 0, i32* %13, align 4
  %14 = load %struct.roff*, %struct.roff** %2, align 8
  %15 = getelementptr inbounds %struct.roff, %struct.roff* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @eqn_free(i32 %16)
  %18 = load %struct.roff*, %struct.roff** %2, align 8
  %19 = getelementptr inbounds %struct.roff, %struct.roff* %18, i32 0, i32 10
  store i32* null, i32** %19, align 8
  %20 = load %struct.roff*, %struct.roff** %2, align 8
  %21 = getelementptr inbounds %struct.roff, %struct.roff* %20, i32 0, i32 11
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %27, %1
  %23 = load %struct.roff*, %struct.roff** %2, align 8
  %24 = getelementptr inbounds %struct.roff, %struct.roff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.roff*, %struct.roff** %2, align 8
  %29 = call i32 @roff_userret(%struct.roff* %28)
  br label %22

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.roff*, %struct.roff** %2, align 8
  %33 = getelementptr inbounds %struct.roff, %struct.roff* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.roff*, %struct.roff** %2, align 8
  %38 = call i32 @roffnode_pop(%struct.roff* %37)
  br label %31

39:                                               ; preds = %31
  %40 = load %struct.roff*, %struct.roff** %2, align 8
  %41 = getelementptr inbounds %struct.roff, %struct.roff* %40, i32 0, i32 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @free(%struct.TYPE_2__* %42)
  %44 = load %struct.roff*, %struct.roff** %2, align 8
  %45 = getelementptr inbounds %struct.roff, %struct.roff* %44, i32 0, i32 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.roff*, %struct.roff** %2, align 8
  %47 = getelementptr inbounds %struct.roff, %struct.roff* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.roff*, %struct.roff** %2, align 8
  %49 = getelementptr inbounds %struct.roff, %struct.roff* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 8
  %50 = load %struct.roff*, %struct.roff** %2, align 8
  %51 = getelementptr inbounds %struct.roff, %struct.roff* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @roff_freereg(i32* %52)
  %54 = load %struct.roff*, %struct.roff** %2, align 8
  %55 = getelementptr inbounds %struct.roff, %struct.roff* %54, i32 0, i32 6
  store i32* null, i32** %55, align 8
  %56 = load %struct.roff*, %struct.roff** %2, align 8
  %57 = getelementptr inbounds %struct.roff, %struct.roff* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @roff_freestr(i32* %58)
  %60 = load %struct.roff*, %struct.roff** %2, align 8
  %61 = getelementptr inbounds %struct.roff, %struct.roff* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @roff_freestr(i32* %62)
  %64 = load %struct.roff*, %struct.roff** %2, align 8
  %65 = getelementptr inbounds %struct.roff, %struct.roff* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @roff_freestr(i32* %66)
  %68 = load %struct.roff*, %struct.roff** %2, align 8
  %69 = getelementptr inbounds %struct.roff, %struct.roff* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  %70 = load %struct.roff*, %struct.roff** %2, align 8
  %71 = getelementptr inbounds %struct.roff, %struct.roff* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.roff*, %struct.roff** %2, align 8
  %73 = getelementptr inbounds %struct.roff, %struct.roff* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  %74 = load %struct.roff*, %struct.roff** %2, align 8
  %75 = getelementptr inbounds %struct.roff, %struct.roff* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = icmp ne %struct.TYPE_2__* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %92, %78
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 128
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.roff*, %struct.roff** %2, align 8
  %84 = getelementptr inbounds %struct.roff, %struct.roff* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = call i32 @free(%struct.TYPE_2__* %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %79

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %39
  %97 = load %struct.roff*, %struct.roff** %2, align 8
  %98 = getelementptr inbounds %struct.roff, %struct.roff* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i32 @free(%struct.TYPE_2__* %99)
  %101 = load %struct.roff*, %struct.roff** %2, align 8
  %102 = getelementptr inbounds %struct.roff, %struct.roff* %101, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %102, align 8
  ret void
}

declare dso_local i32 @tbl_free(i32) #1

declare dso_local i32 @eqn_free(i32) #1

declare dso_local i32 @roff_userret(%struct.roff*) #1

declare dso_local i32 @roffnode_pop(%struct.roff*) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

declare dso_local i32 @roff_freereg(i32*) #1

declare dso_local i32 @roff_freestr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
