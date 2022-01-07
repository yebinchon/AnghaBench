; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_args.c_args_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_args.c_args_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i8**, i32, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"xzcat\00", align 1
@MODE_DECOMPRESS = common dso_local global i64 0, align 8
@opt_mode = common dso_local global i64 0, align 8
@opt_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"unxz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lzcat\00", align 1
@FORMAT_LZMA = common dso_local global i64 0, align 8
@opt_format = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"unlzma\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"XZ_DEFAULTS\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"XZ_OPT\00", align 1
@MODE_COMPRESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"Compression support was disabled at build time\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Decompression support was disabled at build time\00", align 1
@MODE_TEST = common dso_local global i64 0, align 8
@opt_keep_original = common dso_local global i32 0, align 4
@FORMAT_AUTO = common dso_local global i64 0, align 8
@FORMAT_XZ = common dso_local global i64 0, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@args_parse.names_stdin = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @args_parse(%struct.TYPE_5__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8 0, i8* %13, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @strstr(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @MODE_DECOMPRESS, align 8
  store i64 %32, i64* @opt_mode, align 8
  store i32 1, i32* @opt_stdout, align 4
  br label %63

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @strstr(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @MODE_DECOMPRESS, align 8
  store i64 %38, i64* @opt_mode, align 8
  br label %62

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32* @strstr(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* @FORMAT_LZMA, align 8
  store i64 %44, i64* @opt_format, align 8
  %45 = load i64, i64* @MODE_DECOMPRESS, align 8
  store i64 %45, i64* @opt_mode, align 8
  store i32 1, i32* @opt_stdout, align 4
  br label %61

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = call i32* @strstr(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* @FORMAT_LZMA, align 8
  store i64 %51, i64* @opt_format, align 8
  %52 = load i64, i64* @MODE_DECOMPRESS, align 8
  store i64 %52, i64* @opt_mode, align 8
  br label %60

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = call i32* @strstr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @FORMAT_LZMA, align 8
  store i64 %58, i64* @opt_format, align 8
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @parse_environment(%struct.TYPE_5__* %64, i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = load i8**, i8*** %6, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @parse_environment(%struct.TYPE_5__* %69, i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i8**, i8*** %6, align 8
  %77 = call i32 @parse_real(%struct.TYPE_5__* %74, i32 %75, i8** %76)
  %78 = load i64, i64* @opt_mode, align 8
  %79 = load i64, i64* @MODE_COMPRESS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %83 = call i32 @message_fatal(i32 %82)
  br label %84

84:                                               ; preds = %81, %63
  %85 = load i64, i64* @opt_mode, align 8
  %86 = load i64, i64* @MODE_COMPRESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %90 = call i32 @message_fatal(i32 %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* @opt_stdout, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* @opt_mode, align 8
  %96 = load i64, i64* @MODE_TEST, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %91
  store i32 1, i32* @opt_keep_original, align 4
  store i32 1, i32* @opt_stdout, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i64, i64* @opt_mode, align 8
  %101 = load i64, i64* @MODE_COMPRESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i64, i64* @opt_format, align 8
  %105 = load i64, i64* @FORMAT_AUTO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i64, i64* @FORMAT_XZ, align 8
  store i64 %108, i64* @opt_format, align 8
  br label %109

109:                                              ; preds = %107, %103, %99
  %110 = load i64, i64* @opt_mode, align 8
  %111 = load i64, i64* @MODE_COMPRESS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* @opt_format, align 8
  %115 = load i64, i64* @FORMAT_RAW, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113, %109
  %118 = call i32 (...) @coder_set_compression_settings()
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i8**, i8*** %6, align 8
  %121 = load i64, i64* @optind, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @args_parse.names_stdin, i64 0, i64 0), i8*** %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  br label %148

135:                                              ; preds = %125, %119
  %136 = load i8**, i8*** %6, align 8
  %137 = load i64, i64* @optind, align 8
  %138 = getelementptr inbounds i8*, i8** %136, i64 %137
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i8** %138, i8*** %140, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @optind, align 8
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %135, %130
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @parse_environment(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @parse_real(%struct.TYPE_5__*, i32, i8**) #1

declare dso_local i32 @message_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @coder_set_compression_settings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
