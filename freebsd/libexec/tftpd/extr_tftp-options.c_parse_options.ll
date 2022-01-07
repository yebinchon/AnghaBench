; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i64 (i32)*, i32 }

@options_rfc_enabled = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_OPTIONS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"option: '%s' value: '%s'\00", align 1
@options = common dso_local global %struct.TYPE_2__* null, align 8
@acting_as_client = common dso_local global i32 0, align 4
@options_extra_enabled = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Option '%s' with value '%s' found but it is not an RFC option\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown option: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @options_rfc_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %172

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %159, %17
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %170

22:                                               ; preds = %19
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @get_field(i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @get_field(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %170

46:                                               ; preds = %22
  %47 = load i32, i32* @debug, align 4
  %48 = load i32, i32* @DEBUG_OPTIONS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @LOG_DEBUG, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @tftp_log(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %12, align 8
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %73, %56
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isupper(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call signext i8 @tolower(i8 signext %69)
  %71 = load i8*, i8** %10, align 8
  store i8 %70, i8* %71, align 1
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %10, align 8
  br label %58

76:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %144, %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %147

85:                                               ; preds = %77
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @strcmp(i8* %86, i32* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %143

95:                                               ; preds = %85
  %96 = load i32, i32* @acting_as_client, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %13, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i8* %99, i8** %104, align 8
  br label %105

105:                                              ; preds = %98, %95
  %106 = load i32, i32* @options_extra_enabled, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @LOG_INFO, align 4
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 (i32, i8*, i8*, ...) @tftp_log(i32 %117, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %118, i8* %119)
  br label %144

121:                                              ; preds = %108, %105
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64 (i32)*, i64 (i32)** %126, align 8
  %128 = icmp ne i64 (i32)* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i64 (i32)*, i64 (i32)** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i64 %135(i32 %136)
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %129, %121
  br label %147

143:                                              ; preds = %85
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %77

147:                                              ; preds = %142, %77
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i32, i32* @LOG_WARNING, align 4
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 (i32, i8*, i8*, ...) @tftp_log(i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %155, %147
  %160 = load i8*, i8** %12, align 8
  %161 = call i64 @strlen(i8* %160)
  %162 = load i8*, i8** %13, align 8
  %163 = call i64 @strlen(i8* %162)
  %164 = add nsw i64 %161, %163
  %165 = add nsw i64 %164, 2
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %7, align 4
  br label %19

170:                                              ; preds = %45, %19
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %16
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @get_field(i32, i8*, i32) #1

declare dso_local i32 @tftp_log(i32, i8*, i8*, ...) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
