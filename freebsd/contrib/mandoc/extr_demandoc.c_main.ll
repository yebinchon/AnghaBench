; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_demandoc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_demandoc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"demandoc\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"ikm:pw\00", align 1
@MANDOCLEVEL_BADARG = common dso_local global i64 0, align 8
@optind = external dso_local global i32, align 4
@MPARSE_SO = common dso_local global i32 0, align 4
@MPARSE_UTF8 = common dso_local global i32 0, align 4
@MPARSE_LATIN1 = common dso_local global i32 0, align 4
@MPARSE_VALIDATE = common dso_local global i32 0, align 4
@MANDOC_OS_OTHER = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@MANDOCLEVEL_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mparse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %28

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** @progname, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** @progname, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i8*, i8** @progname, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** @progname, align 8
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %13
  store %struct.mparse* null, %struct.mparse** %6, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 -1, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %38 [
    i32 105, label %36
    i32 107, label %36
    i32 109, label %36
    i32 112, label %36
    i32 119, label %37
  ]

36:                                               ; preds = %34, %34, %34, %34
  br label %42

37:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %42

38:                                               ; preds = %34
  %39 = call i32 (...) @usage()
  %40 = load i64, i64* @MANDOCLEVEL_BADARG, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %112

42:                                               ; preds = %37, %36
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* @optind, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @optind, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8** %50, i8*** %5, align 8
  %51 = call i32 (...) @mchars_alloc()
  %52 = load i32, i32* @MPARSE_SO, align 4
  %53 = load i32, i32* @MPARSE_UTF8, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MPARSE_LATIN1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MPARSE_VALIDATE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MANDOC_OS_OTHER, align 4
  %60 = call %struct.mparse* @mparse_alloc(i32 %58, i32 %59, i32* null)
  store %struct.mparse* %60, %struct.mparse** %6, align 8
  %61 = load %struct.mparse*, %struct.mparse** %6, align 8
  %62 = call i32 @assert(%struct.mparse* %61)
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = load %struct.mparse*, %struct.mparse** %6, align 8
  %67 = load i32, i32* @STDIN_FILENO, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @pmandoc(%struct.mparse* %66, i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %43
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %103, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = load %struct.mparse*, %struct.mparse** %6, align 8
  %77 = call i32 @mparse_reset(%struct.mparse* %76)
  %78 = load %struct.mparse*, %struct.mparse** %6, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @mparse_open(%struct.mparse* %78, i8* %83)
  store i32 %84, i32* %8, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %93

86:                                               ; preds = %75
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @perror(i8* %91)
  br label %103

93:                                               ; preds = %75
  %94 = load %struct.mparse*, %struct.mparse** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @pmandoc(%struct.mparse* %94, i32 %95, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %93, %86
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %71

106:                                              ; preds = %71
  %107 = load %struct.mparse*, %struct.mparse** %6, align 8
  %108 = call i32 @mparse_free(%struct.mparse* %107)
  %109 = call i32 (...) @mchars_free()
  %110 = load i64, i64* @MANDOCLEVEL_OK, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %38
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @mchars_alloc(...) #1

declare dso_local %struct.mparse* @mparse_alloc(i32, i32, i32*) #1

declare dso_local i32 @assert(%struct.mparse*) #1

declare dso_local i32 @pmandoc(%struct.mparse*, i32, i8*, i32) #1

declare dso_local i32 @mparse_reset(%struct.mparse*) #1

declare dso_local i32 @mparse_open(%struct.mparse*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @mparse_free(%struct.mparse*) #1

declare dso_local i32 @mchars_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
