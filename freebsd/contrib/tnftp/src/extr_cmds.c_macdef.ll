; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_macdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_macdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@macnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Limit of 16 macros have already been defined.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"macro name\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"usage: %s macro_name\0A\00", align 1
@interactive = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"Enter macro line by line, terminating it with a null line.\0A\00", align 1
@macros = common dso_local global %struct.TYPE_2__* null, align 8
@macbuf = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"macdef: end of file encountered.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Macro not defined - 4K buffer exceeded.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macdef(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @macnum, align 4
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @ttyout, align 4
  %15 = call i32 @fputs(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* @code, align 4
  br label %159

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @UPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  store i32 -1, i32* @code, align 4
  br label %159

31:                                               ; preds = %22
  %32 = load i64, i64* @interactive, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ttyout, align 4
  %36 = call i32 @fputs(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %39 = load i32, i32* @macnum, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlcpy(i32 %43, i8* %46, i32 4)
  %48 = load i32, i32* @macnum, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load i8*, i8** @macbuf, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %53 = load i32, i32* @macnum, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %51, i8** %56, align 8
  br label %71

57:                                               ; preds = %37
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %59 = load i32, i32* @macnum, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %67 = load i32, i32* @macnum, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %65, i8** %70, align 8
  br label %71

71:                                               ; preds = %57, %50
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %73 = load i32, i32* @macnum, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %131, %71
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** @macbuf, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4096
  %82 = icmp ne i8* %79, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %78
  %84 = call signext i8 (...) @getchar()
  %85 = sext i8 %84 to i32
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @EOF, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @ttyout, align 4
  %90 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  store i32 -1, i32* @code, align 4
  br label %159

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %5, align 8
  store i8 %93, i8* %94, align 1
  %95 = sext i8 %93 to i32
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %131

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %100 = load i32, i32* @macnum, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %98, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %97
  %107 = load i8*, i8** %5, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %109 = load i32, i32* @macnum, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @macnum, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i8* %107, i8** %113, align 8
  store i32 0, i32* @code, align 4
  br label %159

114:                                              ; preds = %97
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 -1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %124 = load i32, i32* @macnum, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @macnum, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i8* %122, i8** %128, align 8
  store i32 0, i32* @code, align 4
  br label %159

129:                                              ; preds = %114
  %130 = load i8*, i8** %5, align 8
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %129, %91
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  br label %78

134:                                              ; preds = %78
  br label %135

135:                                              ; preds = %134, %158
  br label %136

136:                                              ; preds = %146, %135
  %137 = call signext i8 (...) @getchar()
  %138 = sext i8 %137 to i32
  store i32 %138, i32* %6, align 4
  %139 = icmp ne i32 %138, 10
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @EOF, align 4
  %143 = icmp ne i32 %141, %142
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i1 [ false, %136 ], [ %143, %140 ]
  br i1 %145, label %146, label %147

146:                                              ; preds = %144
  br label %136

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @EOF, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = call signext i8 (...) @getchar()
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %155, label %158

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @ttyout, align 4
  %157 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  store i32 -1, i32* @code, align 4
  br label %159

158:                                              ; preds = %151
  br label %135

159:                                              ; preds = %155, %120, %106, %88, %26, %13
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local signext i8 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
