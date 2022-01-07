; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_printdirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_printdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { i32*, %struct.directory* }

@dcwd = common dso_local global %struct.directory* null, align 8
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@DIR_VERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@DIR_LONG = common dso_local global i32 0, align 4
@DIR_LINE = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"~%S\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%-S%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @printdirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printdirs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.directory*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.directory*, %struct.directory** @dcwd, align 8
  store %struct.directory* %9, %struct.directory** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %84, %1
  %11 = load %struct.directory*, %struct.directory** %3, align 8
  %12 = icmp eq %struct.directory* %11, @dhead
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %84

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DIR_VERT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = sext i32 %20 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 (i8*, i32*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.directory*, %struct.directory** %3, align 8
  %27 = getelementptr inbounds %struct.directory, %struct.directory* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @DIR_LONG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = call i32* @getusername(i32** %4)
  store i32* %34, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @Strlen(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @Strlen(i32* %39)
  %41 = add nsw i64 %38, %40
  %42 = add nsw i64 %41, 2
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %33, %25
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @Strlen(i32* %45)
  %47 = add nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @DIR_LINE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @TermH, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TermH, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i32 @xputchar(i8 signext 10)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %62, %57, %49
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 (i8*, i32*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @DIR_VERT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 10, i32 32
  %83 = call i32 (i8*, i32*, ...) @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %76, i32 %82)
  br label %84

84:                                               ; preds = %75, %13
  %85 = load %struct.directory*, %struct.directory** %3, align 8
  %86 = getelementptr inbounds %struct.directory, %struct.directory* %85, i32 0, i32 1
  %87 = load %struct.directory*, %struct.directory** %86, align 8
  store %struct.directory* %87, %struct.directory** %3, align 8
  %88 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %89 = icmp ne %struct.directory* %87, %88
  br i1 %89, label %10, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @DIR_VERT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = call i32 @xputchar(i8 signext 10)
  br label %97

97:                                               ; preds = %95, %90
  ret void
}

declare dso_local i32 @xprintf(i8*, i32*, ...) #1

declare dso_local i32* @getusername(i32**) #1

declare dso_local i64 @Strlen(i32*) #1

declare dso_local i32 @xputchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
