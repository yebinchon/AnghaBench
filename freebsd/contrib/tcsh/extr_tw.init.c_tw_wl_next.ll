; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_wl_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_wl_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type opaque

@tw_word = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_wl_next(%struct.Strbuf* %0, %struct.Strbuf* %1, i32* %2) #0 {
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
  %14 = load i8*, i8** @tw_word, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** @tw_word, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %81

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i8*, i8** @tw_word, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** @tw_word, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @Isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** @tw_word, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @tw_word, align 8
  br label %24

39:                                               ; preds = %34
  %40 = load i8*, i8** @tw_word, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %55, %39
  %42 = load i8*, i8** @tw_word, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** @tw_word, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @Isspace(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i1 [ false, %41 ], [ %51, %46 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** @tw_word, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** @tw_word, align 8
  br label %41

58:                                               ; preds = %52
  %59 = load i8*, i8** @tw_word, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %81

63:                                               ; preds = %58
  %64 = load %struct.Strbuf*, %struct.Strbuf** %5, align 8
  %65 = bitcast %struct.Strbuf* %64 to i32*
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** @tw_word, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @Strbuf_appendn(i32* %65, i8* %66, i32 %72)
  %74 = load i8*, i8** @tw_word, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load i8*, i8** @tw_word, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** @tw_word, align 8
  br label %80

80:                                               ; preds = %77, %63
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %62, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @USE(i32*) #1

declare dso_local i64 @Isspace(i8 signext) #1

declare dso_local i32 @Strbuf_appendn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
