; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_resp_searchform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_resp_searchform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [98 x i8] c"<form action=\22/%s\22 method=\22get\22>\0A  <fieldset>\0A    <legend>Manual Page Search Parameters</legend>\0A\00", align 1
@scriptname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"    <input type=\22search\22 name=\22query\22 value=\22\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\22 size=\2240\22\00", align 1
@FOCUS_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" autofocus\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.5 = private unnamed_addr constant [143 x i8] c"    <button type=\22submit\22 name=\22apropos\22 value=\220\22>man</button>\0A    <button type=\22submit\22 name=\22apropos\22 value=\221\22>apropos</button>\0A    <br/>\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"    <select name=\22sec\22>\00", align 1
@sec_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"      <option value=\22%s\22\00", align 1
@sec_numbers = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c" selected=\22selected\22\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c">%s</option>\0A\00", align 1
@sec_names = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"    </select>\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"    <select name=\22arch\22>\0A      <option value=\22default\22\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c">All Architectures</option>\00", align 1
@arch_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"      <option\00", align 1
@arch_names = common dso_local global i8** null, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"    <select name=\22manpath\22>\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"</option>\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  </fieldset>\0A</form>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, i32)* @resp_searchform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resp_searchform(%struct.req* %0, i32 %1) #0 {
  %3 = alloca %struct.req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.req* %0, %struct.req** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** @scriptname, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.req*, %struct.req** %3, align 8
  %10 = getelementptr inbounds %struct.req, %struct.req* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.req*, %struct.req** %3, align 8
  %16 = getelementptr inbounds %struct.req, %struct.req* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @html_print(i32* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FOCUS_QUERY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %68, %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @sec_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load i8**, i8*** @sec_numbers, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %40)
  %42 = load %struct.req*, %struct.req** %3, align 8
  %43 = getelementptr inbounds %struct.req, %struct.req* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* null, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %35
  %48 = load i8**, i8*** @sec_numbers, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.req*, %struct.req** %3, align 8
  %54 = getelementptr inbounds %struct.req, %struct.req* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @strcmp(i8* %52, i32* %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %47, %35
  %62 = load i8**, i8*** @sec_names, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %31

71:                                               ; preds = %31
  %72 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %74 = load %struct.req*, %struct.req** %3, align 8
  %75 = getelementptr inbounds %struct.req, %struct.req* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* null, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %71
  %82 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %115, %81
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @arch_MAX, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %83
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %89 = load %struct.req*, %struct.req** %3, align 8
  %90 = getelementptr inbounds %struct.req, %struct.req* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* null, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load i8**, i8*** @arch_names, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.req*, %struct.req** %3, align 8
  %101 = getelementptr inbounds %struct.req, %struct.req* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @strcmp(i8* %99, i32* %103)
  %105 = icmp eq i64 0, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %94, %87
  %109 = load i8**, i8*** @arch_names, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %83

118:                                              ; preds = %83
  %119 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %120 = load %struct.req*, %struct.req** %3, align 8
  %121 = getelementptr inbounds %struct.req, %struct.req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %165

124:                                              ; preds = %118
  %125 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %160, %124
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.req*, %struct.req** %3, align 8
  %129 = getelementptr inbounds %struct.req, %struct.req* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %126
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %134 = load %struct.req*, %struct.req** %3, align 8
  %135 = getelementptr inbounds %struct.req, %struct.req* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.req*, %struct.req** %3, align 8
  %139 = getelementptr inbounds %struct.req, %struct.req* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @strcmp(i8* %137, i32* %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %132
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %132
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %151 = load %struct.req*, %struct.req** %3, align 8
  %152 = getelementptr inbounds %struct.req, %struct.req* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @html_print(i32* %157)
  %159 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %126

163:                                              ; preds = %126
  %164 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %118
  %166 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @html_print(i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
