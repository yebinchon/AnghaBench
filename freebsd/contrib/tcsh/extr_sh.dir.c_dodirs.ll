; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dodirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dodirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { %struct.directory*, %struct.directory* }
%struct.command = type { i32 }

@dodirs.flags = internal constant [8 x i8] c"plvnSLc\00", align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DIR_CLEAR = common dso_local global i32 0, align 4
@dcwd = common dso_local global %struct.directory* null, align 8
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@DIR_LOAD = common dso_local global i32 0, align 4
@DIR_SAVE = common dso_local global i32 0, align 4
@DIR_OLD = common dso_local global i32 0, align 4
@ERR_DIRUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dirs\00", align 1
@DIR_PRINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dodirs(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.directory*, align 8
  %7 = alloca %struct.directory*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %8 = call i32 @skipargs(i32*** %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @dodirs.flags, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = load %struct.command*, %struct.command** %4, align 8
  %10 = call i32 @USE(%struct.command* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DIR_CLEAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %17 = getelementptr inbounds %struct.directory, %struct.directory* %16, i32 0, i32 1
  %18 = load %struct.directory*, %struct.directory** %17, align 8
  store %struct.directory* %18, %struct.directory** %6, align 8
  br label %19

19:                                               ; preds = %33, %15
  %20 = load %struct.directory*, %struct.directory** %6, align 8
  %21 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %22 = icmp ne %struct.directory* %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.directory*, %struct.directory** %6, align 8
  store %struct.directory* %24, %struct.directory** %7, align 8
  %25 = load %struct.directory*, %struct.directory** %6, align 8
  %26 = getelementptr inbounds %struct.directory, %struct.directory* %25, i32 0, i32 1
  %27 = load %struct.directory*, %struct.directory** %26, align 8
  store %struct.directory* %27, %struct.directory** %6, align 8
  %28 = load %struct.directory*, %struct.directory** %7, align 8
  %29 = icmp ne %struct.directory* %28, @dhead
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.directory*, %struct.directory** %7, align 8
  %32 = call i32 @dfree(%struct.directory* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.directory*, %struct.directory** %6, align 8
  store %struct.directory* %35, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 0), align 8
  store %struct.directory* %35, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 1), align 8
  %36 = load %struct.directory*, %struct.directory** %6, align 8
  %37 = getelementptr inbounds %struct.directory, %struct.directory* %36, i32 0, i32 0
  store %struct.directory* @dhead, %struct.directory** %37, align 8
  %38 = load %struct.directory*, %struct.directory** %6, align 8
  %39 = getelementptr inbounds %struct.directory, %struct.directory* %38, i32 0, i32 1
  store %struct.directory* @dhead, %struct.directory** %39, align 8
  br label %40

40:                                               ; preds = %34, %2
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DIR_LOAD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32**, i32*** %3, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @loaddirs(i32* %47)
  br label %59

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DIR_SAVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32**, i32*** %3, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @recdirs(i32* %56, i32 1)
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32**, i32*** %3, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DIR_SAVE, align 4
  %66 = load i32, i32* @DIR_LOAD, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32**, i32*** %3, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i32 1
  store i32** %72, i32*** %3, align 8
  br label %73

73:                                               ; preds = %70, %63, %59
  %74 = load i32**, i32*** %3, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @DIR_OLD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %73
  %83 = load i32, i32* @ERR_DIRUS, align 4
  %84 = call i32 @stderror(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @dodirs.flags, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @DIR_CLEAR, align 4
  %88 = load i32, i32* @DIR_LOAD, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @DIR_SAVE, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %86, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @DIR_PRINT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %85
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @printdirs(i32 %100)
  br label %102

102:                                              ; preds = %99, %94
  ret void
}

declare dso_local i32 @skipargs(i32***, i8*, i8*) #1

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @dfree(%struct.directory*) #1

declare dso_local i32 @loaddirs(i32*) #1

declare dso_local i32 @recdirs(i32*, i32) #1

declare dso_local i32 @stderror(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printdirs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
