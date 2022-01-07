; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/praudit/extr_praudit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/praudit/extr_praudit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"d:lnprsx\00", align 1
@optarg = common dso_local global i32 0, align 4
@del = common dso_local global i32 0, align 4
@oneline = common dso_local global i32 0, align 4
@AU_OFLAG_NORESOLVE = common dso_local global i32 0, align 4
@oflags = common dso_local global i32 0, align 4
@partial = common dso_local global i32 0, align 4
@AU_OFLAG_SHORT = common dso_local global i32 0, align 4
@AU_OFLAG_RAW = common dso_local global i32 0, align 4
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENOSYS = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %53, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %51 [
    i32 100, label %16
    i32 108, label %18
    i32 110, label %19
    i32 112, label %23
    i32 114, label %24
    i32 115, label %35
    i32 120, label %46
    i32 63, label %50
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @optarg, align 4
  store i32 %17, i32* @del, align 4
  br label %53

18:                                               ; preds = %14
  store i32 1, i32* @oneline, align 4
  br label %53

19:                                               ; preds = %14
  %20 = load i32, i32* @AU_OFLAG_NORESOLVE, align 4
  %21 = load i32, i32* @oflags, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @oflags, align 4
  br label %53

23:                                               ; preds = %14
  store i32 1, i32* @partial, align 4
  br label %53

24:                                               ; preds = %14
  %25 = load i32, i32* @oflags, align 4
  %26 = load i32, i32* @AU_OFLAG_SHORT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* @AU_OFLAG_RAW, align 4
  %33 = load i32, i32* @oflags, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @oflags, align 4
  br label %53

35:                                               ; preds = %14
  %36 = load i32, i32* @oflags, align 4
  %37 = load i32, i32* @AU_OFLAG_RAW, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* @AU_OFLAG_SHORT, align 4
  %44 = load i32, i32* @oflags, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @oflags, align 4
  br label %53

46:                                               ; preds = %14
  %47 = load i32, i32* @AU_OFLAG_XML, align 4
  %48 = load i32, i32* @oflags, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @oflags, align 4
  br label %53

50:                                               ; preds = %14
  br label %51

51:                                               ; preds = %14, %50
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %46, %42, %31, %23, %19, %18, %16
  br label %9

54:                                               ; preds = %9
  %55 = load i32, i32* @oflags, align 4
  %56 = load i32, i32* @AU_OFLAG_XML, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @stdout, align 4
  %61 = call i32 @au_print_xml_header(i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @optind, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32*, i32** @stdin, align 8
  %68 = call i32 @print_tokens(i32* %67)
  store i32 1, i32* %3, align 4
  br label %117

69:                                               ; preds = %62
  %70 = load i32, i32* @optind, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %105, %69
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %71
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32* @fopen(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @perror(i8* %89)
  br label %105

91:                                               ; preds = %75
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @print_tokens(i32* %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @perror(i8* %100)
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @fclose(i32* %103)
  br label %105

105:                                              ; preds = %102, %84
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %71

108:                                              ; preds = %71
  %109 = load i32, i32* @oflags, align 4
  %110 = load i32, i32* @AU_OFLAG_XML, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @stdout, align 4
  %115 = call i32 @au_print_xml_footer(i32 %114)
  br label %116

116:                                              ; preds = %113, %108
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %66
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @au_print_xml_header(i32) #1

declare dso_local i32 @print_tokens(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @au_print_xml_footer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
