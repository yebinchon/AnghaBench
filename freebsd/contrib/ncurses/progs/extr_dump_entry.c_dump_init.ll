; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_dump_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_dump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@pretty = common dso_local global i32 0, align 4
@V_ALLCAPS = common dso_local global i32 0, align 4
@tversion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SVr1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SVR1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Ultrix\00", align 1
@V_SVR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@V_HPUX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"AIX\00", align 1
@V_AIX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"BSD\00", align 1
@V_BSD = common dso_local global i32 0, align 4
@outform = common dso_local global i32 0, align 4
@boolnames = common dso_local global i32 0, align 4
@bool_names = common dso_local global i32 0, align 4
@numnames = common dso_local global i32 0, align 4
@num_names = common dso_local global i32 0, align 4
@strnames = common dso_local global i32 0, align 4
@str_names = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@separator = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@trailer = common dso_local global i8* null, align 8
@boolfnames = common dso_local global i32 0, align 4
@numfnames = common dso_local global i32 0, align 4
@strfnames = common dso_local global i32 0, align 4
@boolcodes = common dso_local global i32 0, align 4
@numcodes = common dso_local global i32 0, align 4
@strcodes = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\\\0A\09:\00", align 1
@sortmode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"%s: sorting by term structure order\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"%s: sorting by terminfo name order\0A\00", align 1
@bool_terminfo_sort = common dso_local global i32 0, align 4
@bool_indirect = common dso_local global i32 0, align 4
@num_terminfo_sort = common dso_local global i32 0, align 4
@num_indirect = common dso_local global i32 0, align 4
@str_terminfo_sort = common dso_local global i32 0, align 4
@str_indirect = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"%s: sorting by C variable order\0A\00", align 1
@bool_variable_sort = common dso_local global i32 0, align 4
@num_variable_sort = common dso_local global i32 0, align 4
@str_variable_sort = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"%s: sorting by termcap name order\0A\00", align 1
@bool_termcap_sort = common dso_local global i32 0, align 4
@num_termcap_sort = common dso_local global i32 0, align 4
@str_termcap_sort = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"%s: width = %d, tversion = %d, outform = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_init(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  store i32 %15, i32* @width, align 4
  %16 = load i32, i32* %12, align 4
  store i32 %16, i32* @height, align 4
  %17 = load i32, i32* %14, align 4
  store i32 %17, i32* @pretty, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32, i32* @V_ALLCAPS, align 4
  store i32 %21, i32* @tversion, align 4
  br label %60

22:                                               ; preds = %7
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30, %26, %22
  %35 = load i32, i32* @V_SVR1, align 4
  store i32 %35, i32* @tversion, align 4
  br label %59

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @V_HPUX, align 4
  store i32 %41, i32* @tversion, align 4
  br label %58

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @V_AIX, align 4
  store i32 %47, i32* @tversion, align 4
  br label %57

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @V_BSD, align 4
  store i32 %53, i32* @tversion, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @V_ALLCAPS, align 4
  store i32 %55, i32* @tversion, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* @outform, align 4
  switch i32 %61, label %92 [
    i32 136, label %62
    i32 133, label %62
    i32 132, label %75
    i32 134, label %88
    i32 135, label %88
  ]

62:                                               ; preds = %60, %60
  %63 = load i32, i32* @boolnames, align 4
  store i32 %63, i32* @bool_names, align 4
  %64 = load i32, i32* @numnames, align 4
  store i32 %64, i32* @num_names, align 4
  %65 = load i32, i32* @strnames, align 4
  store i32 %65, i32* @str_names, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %69, 1
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i1 [ false, %62 ], [ %70, %68 ]
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  store i8* %74, i8** @separator, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** @trailer, align 8
  br label %92

75:                                               ; preds = %60
  %76 = load i32, i32* @boolfnames, align 4
  store i32 %76, i32* @bool_names, align 4
  %77 = load i32, i32* @numfnames, align 4
  store i32 %77, i32* @num_names, align 4
  %78 = load i32, i32* @strfnames, align 4
  store i32 %78, i32* @str_names, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 1
  br label %84

84:                                               ; preds = %81, %75
  %85 = phi i1 [ false, %75 ], [ %83, %81 ]
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  store i8* %87, i8** @separator, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** @trailer, align 8
  br label %92

88:                                               ; preds = %60, %60
  %89 = load i32, i32* @boolcodes, align 4
  store i32 %89, i32* @bool_names, align 4
  %90 = load i32, i32* @numcodes, align 4
  store i32 %90, i32* @num_names, align 4
  %91 = load i32, i32* @strcodes, align 4
  store i32 %91, i32* @str_names, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** @separator, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** @trailer, align 8
  br label %92

92:                                               ; preds = %60, %88, %84, %71
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* @sortmode, align 4
  switch i32 %93, label %135 [
    i32 131, label %94
    i32 129, label %102
    i32 128, label %113
    i32 130, label %124
  ]

94:                                               ; preds = %92
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** @_nc_progname, align 8
  %100 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %135

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = load i8*, i8** @_nc_progname, align 8
  %108 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* @bool_terminfo_sort, align 4
  store i32 %110, i32* @bool_indirect, align 4
  %111 = load i32, i32* @num_terminfo_sort, align 4
  store i32 %111, i32* @num_indirect, align 4
  %112 = load i32, i32* @str_terminfo_sort, align 4
  store i32 %112, i32* @str_indirect, align 4
  br label %135

113:                                              ; preds = %92
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @stderr, align 4
  %118 = load i8*, i8** @_nc_progname, align 8
  %119 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* @bool_variable_sort, align 4
  store i32 %121, i32* @bool_indirect, align 4
  %122 = load i32, i32* @num_variable_sort, align 4
  store i32 %122, i32* @num_indirect, align 4
  %123 = load i32, i32* @str_variable_sort, align 4
  store i32 %123, i32* @str_indirect, align 4
  br label %135

124:                                              ; preds = %92
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8*, i8** @_nc_progname, align 8
  %130 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, i32* @bool_termcap_sort, align 4
  store i32 %132, i32* @bool_indirect, align 4
  %133 = load i32, i32* @num_termcap_sort, align 4
  store i32 %133, i32* @num_indirect, align 4
  %134 = load i32, i32* @str_termcap_sort, align 4
  store i32 %134, i32* @str_indirect, align 4
  br label %135

135:                                              ; preds = %92, %131, %120, %109, %101
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8*, i8** @_nc_progname, align 8
  %141 = load i32, i32* @width, align 4
  %142 = load i32, i32* @tversion, align 4
  %143 = load i32, i32* @outform, align 4
  %144 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %135
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
