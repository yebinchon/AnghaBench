; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_tag_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_3__* @EXP(i32* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @TAILQ_FIRST(i32 %11)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @tagq_free(i32* %16, i32* %17)
  br label %8

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %27, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @TAILQ_FIRST(i32 %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @tagf_free(i32* %28, i32* %29)
  br label %20

31:                                               ; preds = %20
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @free(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @EXP(i32*) #1

declare dso_local i8* @TAILQ_FIRST(i32) #1

declare dso_local i32 @tagq_free(i32*, i32*) #1

declare dso_local i32 @tagf_free(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
