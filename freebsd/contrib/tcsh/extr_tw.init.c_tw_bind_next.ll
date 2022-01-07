; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_bind_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_bind_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.Strbuf = type opaque

@tw_bind = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_bind_next(%struct.Strbuf* %0, %struct.Strbuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Strbuf*, align 8
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %5, align 8
  store %struct.Strbuf* %1, %struct.Strbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %10 = bitcast %struct.Strbuf* %9 to i32*
  %11 = call i32 @USE(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @USE(i32* %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tw_bind, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tw_bind, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tw_bind, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %36, %21
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %32 = bitcast %struct.Strbuf* %31 to i32*
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @Strbuf_append1(i32* %32, i8 signext %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tw_bind, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** @tw_bind, align 8
  store i32 1, i32* %4, align 4
  br label %43

42:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @USE(i32*) #1

declare dso_local i32 @Strbuf_append1(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
