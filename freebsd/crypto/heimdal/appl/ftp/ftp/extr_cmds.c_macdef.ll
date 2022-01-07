; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_macdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_macdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@macnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Limit of 16 macros have already been defined\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"macro name\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Usage: %s macro_name\0A\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"Enter macro line by line, terminating it with a null line\0A\00", align 1
@macros = common dso_local global %struct.TYPE_2__* null, align 8
@macbuf = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"macdef:end of file encountered\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Macro not defined - 4k buffer exceeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macdef(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* @macnum, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %147

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 -1, i32* @code, align 4
  br label %147

22:                                               ; preds = %14, %11
  %23 = load i64, i64* @interactive, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %29 = load i32, i32* @macnum, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlcpy(i32 %33, i8* %36, i32 4)
  %38 = load i32, i32* @macnum, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load i8*, i8** @macbuf, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %43 = load i32, i32* @macnum, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %41, i8** %46, align 8
  br label %61

47:                                               ; preds = %27
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %49 = load i32, i32* @macnum, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %57 = load i32, i32* @macnum, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  br label %61

61:                                               ; preds = %47, %40
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %63 = load i32, i32* @macnum, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %120, %61
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** @macbuf, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4096
  %72 = icmp ne i8* %69, %71
  br i1 %72, label %73, label %123

73:                                               ; preds = %68
  %74 = call signext i8 (...) @getchar()
  %75 = sext i8 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @EOF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %147

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %5, align 8
  store i8 %82, i8* %83, align 1
  %84 = sext i8 %82 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %120

86:                                               ; preds = %80
  %87 = load i8*, i8** %5, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %89 = load i32, i32* @macnum, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %87, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %98 = load i32, i32* @macnum, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @macnum, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i8* %96, i8** %102, align 8
  store i32 0, i32* @code, align 4
  br label %147

103:                                              ; preds = %86
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %113 = load i32, i32* @macnum, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @macnum, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i8* %111, i8** %117, align 8
  store i32 0, i32* @code, align 4
  br label %147

118:                                              ; preds = %103
  %119 = load i8*, i8** %5, align 8
  store i8 0, i8* %119, align 1
  br label %120

120:                                              ; preds = %118, %80
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  br label %68

123:                                              ; preds = %68
  br label %124

124:                                              ; preds = %123, %146
  br label %125

125:                                              ; preds = %135, %124
  %126 = call signext i8 (...) @getchar()
  %127 = sext i8 %126 to i32
  store i32 %127, i32* %6, align 4
  %128 = icmp ne i32 %127, 10
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @EOF, align 4
  %132 = icmp ne i32 %130, %131
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i1 [ false, %125 ], [ %132, %129 ]
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %125

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @EOF, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = call signext i8 (...) @getchar()
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 10
  br i1 %143, label %144, label %146

144:                                              ; preds = %140, %136
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %147

146:                                              ; preds = %140
  br label %124

147:                                              ; preds = %144, %109, %95, %78, %17, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local signext i8 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
