; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_tolocal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_tolocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"exec %s%s%s %s %s\00", align 1
@_PATH_CP = common dso_local global i32 0, align 4
@iamrecursive = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" -PR\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" -p\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@errs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@pwd = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"%s -f %s\00", align 1
@cmd = common dso_local global i32 0, align 4
@remin = common dso_local global i32 0, align 4
@remout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tolocal(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %138, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %141

16:                                               ; preds = %11
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @colon(i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @_PATH_CP, align 4
  %26 = load i64, i64* @iamrecursive, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i64, i64* @pflag, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i8**, i8*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %29, i8* %33, i8* %38, i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %24
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %24
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @susystem(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @errs, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @errs, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free(i8* %58)
  br label %138

60:                                               ; preds = %16
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  store i8 0, i8* %61, align 1
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i8**, i8*** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 64)
  store i8* %74, i8** %7, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load i8**, i8*** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %9, align 8
  br label %108

85:                                               ; preds = %68
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  store i8 0, i8* %86, align 1
  %88 = load i8**, i8*** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %9, align 8
  br label %107

101:                                              ; preds = %85
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @okname(i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %138

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %97
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i32, i32* @cmd, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %109, i8* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %108
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @do_cmd(i8* %117, i8* %118, i8* %119, i32* @remin, i32* @remout)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32, i32* @errs, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @errs, align 4
  br label %138

127:                                              ; preds = %116
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8**, i8*** %4, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = getelementptr inbounds i8*, i8** %133, i64 -1
  %135 = call i32 @sink(i32 1, i8** %134)
  %136 = load i32, i32* @remin, align 4
  %137 = call i32 @close(i32 %136)
  store i32 -1, i32* @remout, align 4
  store i32 -1, i32* @remin, align 4
  br label %138

138:                                              ; preds = %127, %122, %105, %57
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %11

141:                                              ; preds = %11
  ret void
}

declare dso_local i8* @colon(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @susystem(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @okname(i8*) #1

declare dso_local i64 @do_cmd(i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @sink(i32, i8**) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
