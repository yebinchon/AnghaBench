; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_cscope.c_run_cscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_cscope.c_run_cscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, i8*, i32 }

@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cd %s && exec cscope -dl -f %s\00", align 1
@_PATH_BSHELL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"execl: %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@CSCOPE_CMD_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @run_cscope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cscope(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 -1, i32* %14, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -1, i32* %16, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %18 = call i64 @pipe(i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %22 = call i64 @pipe(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @M_SYSERR, align 4
  %27 = call i32 @msgq(i32* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %36

28:                                               ; preds = %20
  %29 = call i32 @vfork() #4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  switch i32 %29, label %128 [
    i32 -1, label %32
    i32 0, label %69
  ]

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @M_SYSERR, align 4
  %35 = call i32 @msgq(i32* %33, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %24
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  store i32 1, i32* %4, align 4
  br label %154

69:                                               ; preds = %28
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @STDIN_FILENO, align 4
  %73 = call i32 @dup2(i32 %71, i32 %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @STDOUT_FILENO, align 4
  %77 = call i32 @dup2(i32 %75, i32 %76)
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @STDERR_FILENO, align 4
  %81 = call i32 @dup2(i32 %79, i32 %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @close(i32 %83)
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @quote(i8* %90)
  store i8* %91, i8** %11, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %69
  br label %112

94:                                               ; preds = %69
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @quote(i8* %95)
  store i8* %96, i8** %12, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @free(i8* %99)
  br label %112

101:                                              ; preds = %94
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @asprintf(i8** %10, i32 ptrtoint ([31 x i8]* @.str.2 to i32), i8* %102, i8* %103)
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i8*, i8** %10, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %98, %93
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @M_SYSERR, align 4
  %115 = call i32 @msgq(i32* %113, i32 %114, i8* null)
  %116 = call i32 @_exit(i32 1) #5
  unreachable

117:                                              ; preds = %101
  %118 = load i32, i32* @_PATH_BSHELL, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @execl(i32 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %119, i8* null)
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* @M_SYSERR, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @msgq_str(i32* %121, i32 %122, i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @free(i8* %125)
  %127 = call i32 @_exit(i32 127) #5
  unreachable

128:                                              ; preds = %28
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @close(i32 %130)
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @close(i32 %133)
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @fdopen(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @fdopen(i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %68
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i8* @quote(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @execl(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msgq_str(i32*, i32, i8*, i8*) #1

declare dso_local i8* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
