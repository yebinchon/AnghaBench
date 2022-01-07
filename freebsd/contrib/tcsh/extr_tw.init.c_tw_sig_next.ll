; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_sig_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_sig_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.Strbuf = type opaque

@tw_index = common dso_local global i64 0, align 8
@nsig = common dso_local global i64 0, align 8
@mesg = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_sig_next(%struct.Strbuf* %0, %struct.Strbuf* %1, i32* %2) #0 {
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
  br label %14

14:                                               ; preds = %49, %3
  %15 = load i64, i64* @tw_index, align 8
  %16 = load i64, i64* @nsig, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mesg, align 8
  %20 = load i64, i64* @tw_index, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mesg, align 8
  %28 = load i64, i64* @tw_index, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %43, %26
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %39 = bitcast %struct.Strbuf* %38 to i32*
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @Strbuf_append1(i32* %39, i8 signext %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load i64, i64* @tw_index, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @tw_index, align 8
  store i32 1, i32* %4, align 4
  br label %53

49:                                               ; preds = %25
  %50 = load i64, i64* @tw_index, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* @tw_index, align 8
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @USE(i32*) #1

declare dso_local i32 @Strbuf_append1(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
