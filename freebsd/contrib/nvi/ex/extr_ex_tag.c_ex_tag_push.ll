; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8* }

@M_SYSERR = common dso_local global i32 0, align 4
@O_TAGLENGTH = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"158|No previous tag entered\00", align 1
@E_NEWSCREEN = common dso_local global i32 0, align 4
@E_C_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_tag_push(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_8__* @EXP(i32* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %77 [
    i32 1, label %14
    i32 0, label %67
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @v_wstrdup(i32* %25, i32 %32, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = icmp eq i8* %40, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @M_SYSERR, align 4
  %47 = call i32 @msgq(i32* %45, i32 %46, i8* null)
  store i32 1, i32* %3, align 4
  br label %102

48:                                               ; preds = %24
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @O_TAGLENGTH, align 4
  %51 = call i64 @O_VAL(i32* %49, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @STRLEN(i8* %56)
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %60, %53, %48
  br label %79

67:                                               ; preds = %2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @M_ERR, align 4
  %75 = call i32 @msgq(i32* %73, i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

76:                                               ; preds = %67
  br label %79

77:                                               ; preds = %2
  %78 = call i32 (...) @abort() #3
  unreachable

79:                                               ; preds = %76, %66
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32* @ctag_slist(i32* %80, i8* %83)
  store i32* %84, i32** %7, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %102

87:                                               ; preds = %79
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load i32, i32* @E_NEWSCREEN, align 4
  %92 = call i32 @F_ISSET(%struct.TYPE_9__* %90, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @E_C_FORCE, align 4
  %97 = call i32 @FL_ISSET(i32 %95, i32 %96)
  %98 = call i64 @tagq_push(i32* %88, i32* %89, i32 %92, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  store i32 1, i32* %3, align 4
  br label %102

101:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %100, %86, %72, %44
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_8__* @EXP(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @v_wstrdup(i32*, i32, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i64 @O_VAL(i32*, i32) #1

declare dso_local i64 @STRLEN(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @ctag_slist(i32*, i8*) #1

declare dso_local i64 @tagq_push(i32*, i32*, i32, i32) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
