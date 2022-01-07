; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_create_sconv_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_create_sconv_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i32, i32, i32, i64, i64, i32, i32, %struct.archive_string_conv*, i32*, i32* }

@SCONV_TO_CHARSET = common dso_local global i32 0, align 4
@SCONV_FROM_CHARSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@SCONV_TO_UTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@SCONV_TO_UTF16BE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@SCONV_TO_UTF16LE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF8 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16BE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16LE = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16 = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_C = common dso_local global i32 0, align 4
@CP_UTF16BE = common dso_local global i64 0, align 8
@CP_UTF16LE = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i64 0, align 8
@SCONV_BEST_EFFORT = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_D = common dso_local global i32 0, align 4
@SCONV_TO_UTF16 = common dso_local global i32 0, align 4
@SCONV_WIN_CP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_string_conv* (i8*, i8*, i32, i32)* @create_sconv_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_string_conv* @create_sconv_object(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.archive_string_conv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.archive_string_conv*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.archive_string_conv* @calloc(i32 1, i32 64)
  store %struct.archive_string_conv* %11, %struct.archive_string_conv** %10, align 8
  %12 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %13 = icmp eq %struct.archive_string_conv* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %5, align 8
  br label %178

15:                                               ; preds = %4
  %16 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %17 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %16, i32 0, i32 9
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @strdup(i8* %18)
  %20 = bitcast i8* %19 to %struct.archive_string_conv*
  %21 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %22 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %21, i32 0, i32 7
  store %struct.archive_string_conv* %20, %struct.archive_string_conv** %22, align 8
  %23 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %24 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %23, i32 0, i32 7
  %25 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %26 = icmp eq %struct.archive_string_conv* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %29 = call i32 @free(%struct.archive_string_conv* %28)
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %5, align 8
  br label %178

30:                                               ; preds = %15
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strdup(i8* %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %35 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %34, i32 0, i32 8
  store i32* %33, i32** %35, align 8
  %36 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %37 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %42 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %41, i32 0, i32 7
  %43 = load %struct.archive_string_conv*, %struct.archive_string_conv** %42, align 8
  %44 = call i32 @free(%struct.archive_string_conv* %43)
  %45 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %46 = call i32 @free(%struct.archive_string_conv* %45)
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %5, align 8
  br label %178

47:                                               ; preds = %30
  %48 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %49 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %48, i32 0, i32 6
  %50 = call i32 @archive_string_init(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @SCONV_TO_CHARSET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %58 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i8* @make_codepage_from_charset(i8* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %63 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %79

64:                                               ; preds = %47
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SCONV_FROM_CHARSET, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %72 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @make_codepage_from_charset(i8* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %77 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %69, %64
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @strcmp(i8* %80, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %86 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %91 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %94 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89, %79
  %98 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %99 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  br label %103

100:                                              ; preds = %89, %84
  %101 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %102 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @SCONV_TO_UTF8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %129

111:                                              ; preds = %103
  %112 = load i8*, i8** %7, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @SCONV_TO_UTF16BE, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %128

119:                                              ; preds = %111
  %120 = load i8*, i8** %7, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @SCONV_TO_UTF16LE, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %115
  br label %129

129:                                              ; preds = %128, %107
  %130 = load i8*, i8** %6, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* @SCONV_FROM_UTF8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  br label %155

137:                                              ; preds = %129
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i32, i32* @SCONV_FROM_UTF16BE, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %154

145:                                              ; preds = %137
  %146 = load i8*, i8** %6, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @SCONV_FROM_UTF16LE, align 4
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %141
  br label %155

155:                                              ; preds = %154, %133
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @SCONV_FROM_CHARSET, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @SCONV_FROM_UTF16, align 4
  %163 = load i32, i32* @SCONV_FROM_UTF8, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %167, %160, %155
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %174 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %176 = call i32 @setup_converter(%struct.archive_string_conv* %175)
  %177 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  store %struct.archive_string_conv* %177, %struct.archive_string_conv** %5, align 8
  br label %178

178:                                              ; preds = %171, %40, %27, %14
  %179 = load %struct.archive_string_conv*, %struct.archive_string_conv** %5, align 8
  ret %struct.archive_string_conv* %179
}

declare dso_local %struct.archive_string_conv* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.archive_string_conv*) #1

declare dso_local i32 @archive_string_init(i32*) #1

declare dso_local i8* @make_codepage_from_charset(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @setup_converter(%struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
