; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_gen_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.assignment* }
%struct.type_handler = type { i8*, i32 (i8*)*, i32 (i8*, %struct.assignment.0*)* }
%struct.assignment.0 = type opaque

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"int %s(struct %s_options*, int, char **);\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"int %s(void*, int, char **);\0A\00", align 1
@cfile = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"static int\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s_wrap(int argc, char **argv)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"struct %s_options opt;\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"int ret;\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"int optidx = 0;\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"struct getargs args[] = {\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\22%s\22, \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"NULL, \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"'%c', \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"0, \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" },\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"{ \22help\22, 'h', arg_flag, NULL, NULL, NULL }\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"int help_flag = 0;\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"args[%d].value = &opt.%s;\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"args[%d].value = &help_flag;\0A\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"if(getarg(args, %d, argc, argv, &optidx))\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"goto usage;\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"min_args\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"min_args is not numeric\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"min_args must be non-negative\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"max_args\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"max_args is not numeric\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"max_args must be non-negative\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"if(argc - optidx != %d) {\0A\00", align 1
@.str.41 = private unnamed_addr constant [80 x i8] c"fprintf(stderr, \22Need exactly %u parameters (%%u given).\\n\\n\22, argc - optidx);\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"if(argc - optidx > %d) {\0A\00", align 1
@.str.44 = private unnamed_addr constant [91 x i8] c"fprintf(stderr, \22Arguments given (%%u) are more than expected (%u).\\n\\n\22, argc - optidx);\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"if(argc - optidx < %d) {\0A\00", align 1
@.str.46 = private unnamed_addr constant [91 x i8] c"fprintf(stderr, \22Arguments given (%%u) are less than expected (%u).\\n\\n\22, argc - optidx);\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"if(help_flag)\0A\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"ret = %s(%s, argc - optidx, argv + optidx);\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"&opt\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"return ret;\0A\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"arg_printusage (args, %d, \22%s\22, \22%s\22);\0A\00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"return 0;\0A\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assignment*)* @gen_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_wrapper(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca %struct.assignment*, align 8
  %5 = alloca %struct.assignment*, align 8
  %6 = alloca %struct.assignment*, align 8
  %7 = alloca %struct.assignment*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.assignment*, align 8
  %13 = alloca %struct.assignment*, align 8
  %14 = alloca %struct.assignment*, align 8
  %15 = alloca %struct.assignment*, align 8
  %16 = alloca %struct.assignment*, align 8
  %17 = alloca %struct.type_handler*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.assignment*, align 8
  %20 = alloca %struct.assignment*, align 8
  %21 = alloca %struct.type_handler*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.assignment*, align 8
  %28 = alloca %struct.type_handler*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.assignment*, align 8
  %31 = alloca %struct.type_handler*, align 8
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load %struct.assignment*, %struct.assignment** %2, align 8
  %33 = call %struct.assignment* @find(%struct.assignment* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.assignment* %33, %struct.assignment** %3, align 8
  %34 = load %struct.assignment*, %struct.assignment** %3, align 8
  %35 = getelementptr inbounds %struct.assignment, %struct.assignment* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @gen_name(i8* %39)
  %41 = load %struct.assignment*, %struct.assignment** %2, align 8
  %42 = call %struct.assignment* @find(%struct.assignment* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.assignment* %42, %struct.assignment** %4, align 8
  %43 = load %struct.assignment*, %struct.assignment** %4, align 8
  %44 = icmp ne %struct.assignment* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %1
  %49 = load %struct.assignment*, %struct.assignment** %2, align 8
  %50 = call %struct.assignment* @find(%struct.assignment* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %50, %struct.assignment** %5, align 8
  %51 = load %struct.assignment*, %struct.assignment** %2, align 8
  %52 = call %struct.assignment* @find(%struct.assignment* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.assignment* %52, %struct.assignment** %6, align 8
  %53 = load %struct.assignment*, %struct.assignment** %6, align 8
  %54 = icmp ne %struct.assignment* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.assignment*, %struct.assignment** %6, align 8
  %57 = getelementptr inbounds %struct.assignment, %struct.assignment* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  br label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = load %struct.assignment*, %struct.assignment** %5, align 8
  %64 = icmp ne %struct.assignment* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.assignment*, %struct.assignment** %5, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @gen_options(%struct.assignment* %66, i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @hprint(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %69, i8* %70)
  br label %75

72:                                               ; preds = %62
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 (i32, i8*, i8*, ...) @hprint(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* @cfile, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* @cfile, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @cfile, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %83 = load %struct.assignment*, %struct.assignment** %5, align 8
  %84 = icmp ne %struct.assignment* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %75
  %89 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %90 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %91 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %92 = load %struct.assignment*, %struct.assignment** %2, align 8
  %93 = call %struct.assignment* @find(%struct.assignment* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %93, %struct.assignment** %7, align 8
  br label %94

94:                                               ; preds = %191, %88
  %95 = load %struct.assignment*, %struct.assignment** %7, align 8
  %96 = icmp ne %struct.assignment* %95, null
  br i1 %96, label %97, label %194

97:                                               ; preds = %94
  %98 = load %struct.assignment*, %struct.assignment** %7, align 8
  %99 = getelementptr inbounds %struct.assignment, %struct.assignment* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.assignment*, %struct.assignment** %100, align 8
  %102 = call %struct.assignment* @find(%struct.assignment* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store %struct.assignment* %102, %struct.assignment** %12, align 8
  %103 = load %struct.assignment*, %struct.assignment** %7, align 8
  %104 = getelementptr inbounds %struct.assignment, %struct.assignment* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load %struct.assignment*, %struct.assignment** %105, align 8
  %107 = call %struct.assignment* @find(%struct.assignment* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store %struct.assignment* %107, %struct.assignment** %13, align 8
  %108 = load %struct.assignment*, %struct.assignment** %7, align 8
  %109 = getelementptr inbounds %struct.assignment, %struct.assignment* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load %struct.assignment*, %struct.assignment** %110, align 8
  %112 = call %struct.assignment* @find(%struct.assignment* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  store %struct.assignment* %112, %struct.assignment** %14, align 8
  %113 = load %struct.assignment*, %struct.assignment** %7, align 8
  %114 = getelementptr inbounds %struct.assignment, %struct.assignment* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load %struct.assignment*, %struct.assignment** %115, align 8
  %117 = call %struct.assignment* @find(%struct.assignment* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.assignment* %117, %struct.assignment** %15, align 8
  %118 = load %struct.assignment*, %struct.assignment** %7, align 8
  %119 = getelementptr inbounds %struct.assignment, %struct.assignment* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load %struct.assignment*, %struct.assignment** %120, align 8
  %122 = call %struct.assignment* @find(%struct.assignment* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  store %struct.assignment* %122, %struct.assignment** %16, align 8
  %123 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %124 = load %struct.assignment*, %struct.assignment** %13, align 8
  %125 = icmp ne %struct.assignment* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %97
  %127 = load i32, i32* @cfile, align 4
  %128 = load %struct.assignment*, %struct.assignment** %13, align 8
  %129 = getelementptr inbounds %struct.assignment, %struct.assignment* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %131)
  br label %136

133:                                              ; preds = %97
  %134 = load i32, i32* @cfile, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %126
  %137 = load %struct.assignment*, %struct.assignment** %14, align 8
  %138 = icmp ne %struct.assignment* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* @cfile, align 4
  %141 = load %struct.assignment*, %struct.assignment** %14, align 8
  %142 = getelementptr inbounds %struct.assignment, %struct.assignment* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %146)
  br label %151

148:                                              ; preds = %136
  %149 = load i32, i32* @cfile, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %139
  %152 = load %struct.assignment*, %struct.assignment** %12, align 8
  %153 = call %struct.type_handler* @find_handler(%struct.assignment* %152)
  store %struct.type_handler* %153, %struct.type_handler** %17, align 8
  %154 = load i32, i32* @cfile, align 4
  %155 = load %struct.type_handler*, %struct.type_handler** %17, align 8
  %156 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* @cfile, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %161 = load %struct.assignment*, %struct.assignment** %16, align 8
  %162 = icmp ne %struct.assignment* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %151
  %164 = load i32, i32* @cfile, align 4
  %165 = load %struct.assignment*, %struct.assignment** %16, align 8
  %166 = getelementptr inbounds %struct.assignment, %struct.assignment* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %168)
  br label %173

170:                                              ; preds = %151
  %171 = load i32, i32* @cfile, align 4
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %163
  %174 = load %struct.assignment*, %struct.assignment** %15, align 8
  %175 = icmp ne %struct.assignment* %174, null
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load i32, i32* @cfile, align 4
  %178 = load %struct.assignment*, %struct.assignment** %15, align 8
  %179 = getelementptr inbounds %struct.assignment, %struct.assignment* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* %181)
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %188

185:                                              ; preds = %173
  %186 = load i32, i32* @cfile, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %176
  %189 = load i32, i32* @cfile, align 4
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188
  %192 = load %struct.assignment*, %struct.assignment** %7, align 8
  %193 = call %struct.assignment* @find_next(%struct.assignment* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %193, %struct.assignment** %7, align 8
  br label %94

194:                                              ; preds = %94
  %195 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0))
  %196 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %197 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %198 = load %struct.assignment*, %struct.assignment** %2, align 8
  %199 = call %struct.assignment* @find(%struct.assignment* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %199, %struct.assignment** %7, align 8
  br label %200

200:                                              ; preds = %230, %194
  %201 = load %struct.assignment*, %struct.assignment** %7, align 8
  %202 = icmp ne %struct.assignment* %201, null
  br i1 %202, label %203, label %233

203:                                              ; preds = %200
  %204 = load %struct.assignment*, %struct.assignment** %7, align 8
  %205 = getelementptr inbounds %struct.assignment, %struct.assignment* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load %struct.assignment*, %struct.assignment** %206, align 8
  %208 = call %struct.assignment* @find(%struct.assignment* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store %struct.assignment* %208, %struct.assignment** %19, align 8
  %209 = load %struct.assignment*, %struct.assignment** %7, align 8
  %210 = getelementptr inbounds %struct.assignment, %struct.assignment* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load %struct.assignment*, %struct.assignment** %211, align 8
  %213 = call %struct.assignment* @find(%struct.assignment* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  store %struct.assignment* %213, %struct.assignment** %20, align 8
  %214 = load %struct.assignment*, %struct.assignment** %7, align 8
  %215 = getelementptr inbounds %struct.assignment, %struct.assignment* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load %struct.assignment*, %struct.assignment** %216, align 8
  %218 = call i8* @make_name(%struct.assignment* %217)
  store i8* %218, i8** %18, align 8
  %219 = load %struct.assignment*, %struct.assignment** %19, align 8
  %220 = call %struct.type_handler* @find_handler(%struct.assignment* %219)
  store %struct.type_handler* %220, %struct.type_handler** %21, align 8
  %221 = load %struct.type_handler*, %struct.type_handler** %21, align 8
  %222 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %221, i32 0, i32 2
  %223 = load i32 (i8*, %struct.assignment.0*)*, i32 (i8*, %struct.assignment.0*)** %222, align 8
  %224 = load i8*, i8** %18, align 8
  %225 = load %struct.assignment*, %struct.assignment** %20, align 8
  %226 = bitcast %struct.assignment* %225 to %struct.assignment.0*
  %227 = call i32 %223(i8* %224, %struct.assignment.0* %226)
  %228 = load i8*, i8** %18, align 8
  %229 = call i32 @free(i8* %228)
  br label %230

230:                                              ; preds = %203
  %231 = load %struct.assignment*, %struct.assignment** %7, align 8
  %232 = call %struct.assignment* @find_next(%struct.assignment* %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %232, %struct.assignment** %7, align 8
  br label %200

233:                                              ; preds = %200
  %234 = load %struct.assignment*, %struct.assignment** %2, align 8
  %235 = call %struct.assignment* @find(%struct.assignment* %234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %235, %struct.assignment** %7, align 8
  br label %236

236:                                              ; preds = %251, %233
  %237 = load %struct.assignment*, %struct.assignment** %7, align 8
  %238 = icmp ne %struct.assignment* %237, null
  br i1 %238, label %239, label %254

239:                                              ; preds = %236
  %240 = load %struct.assignment*, %struct.assignment** %7, align 8
  %241 = getelementptr inbounds %struct.assignment, %struct.assignment* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 1
  %243 = load %struct.assignment*, %struct.assignment** %242, align 8
  %244 = call i8* @make_name(%struct.assignment* %243)
  store i8* %244, i8** %22, align 8
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  %247 = load i8*, i8** %22, align 8
  %248 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 %245, i8* %247)
  %249 = load i8*, i8** %22, align 8
  %250 = call i32 @free(i8* %249)
  br label %251

251:                                              ; preds = %239
  %252 = load %struct.assignment*, %struct.assignment** %7, align 8
  %253 = call %struct.assignment* @find_next(%struct.assignment* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %253, %struct.assignment** %7, align 8
  br label %236

254:                                              ; preds = %236
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  %257 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i32 %255)
  %258 = load i32, i32* %10, align 4
  %259 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.32, i64 0, i64 0), i32 %258)
  %260 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %261 = load i32, i32* %11, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  store i32 0, i32* %24, align 4
  br label %317

264:                                              ; preds = %254
  %265 = load %struct.assignment*, %struct.assignment** %2, align 8
  %266 = call %struct.assignment* @find(%struct.assignment* %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  store %struct.assignment* %266, %struct.assignment** %7, align 8
  %267 = icmp ne %struct.assignment* %266, null
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = load %struct.assignment*, %struct.assignment** %7, align 8
  %270 = getelementptr inbounds %struct.assignment, %struct.assignment* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @strtol(i8* %272, i8** %25, i32 0)
  store i32 %273, i32* %23, align 4
  %274 = load i8*, i8** %25, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %268
  %279 = load %struct.assignment*, %struct.assignment** %7, align 8
  %280 = call i32 @ex(%struct.assignment* %279, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0))
  %281 = call i32 @exit(i32 1) #3
  unreachable

282:                                              ; preds = %268
  %283 = load i32, i32* %23, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load %struct.assignment*, %struct.assignment** %7, align 8
  %287 = call i32 @ex(%struct.assignment* %286, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  %288 = call i32 @exit(i32 1) #3
  unreachable

289:                                              ; preds = %282
  br label %290

290:                                              ; preds = %289, %264
  %291 = load %struct.assignment*, %struct.assignment** %2, align 8
  %292 = call %struct.assignment* @find(%struct.assignment* %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0))
  store %struct.assignment* %292, %struct.assignment** %7, align 8
  %293 = icmp ne %struct.assignment* %292, null
  br i1 %293, label %294, label %316

294:                                              ; preds = %290
  %295 = load %struct.assignment*, %struct.assignment** %7, align 8
  %296 = getelementptr inbounds %struct.assignment, %struct.assignment* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @strtol(i8* %298, i8** %25, i32 0)
  store i32 %299, i32* %24, align 4
  %300 = load i8*, i8** %25, align 8
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %294
  %305 = load %struct.assignment*, %struct.assignment** %7, align 8
  %306 = call i32 @ex(%struct.assignment* %305, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %307 = call i32 @exit(i32 1) #3
  unreachable

308:                                              ; preds = %294
  %309 = load i32, i32* %24, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load %struct.assignment*, %struct.assignment** %7, align 8
  %313 = call i32 @ex(%struct.assignment* %312, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0))
  %314 = call i32 @exit(i32 1) #3
  unreachable

315:                                              ; preds = %308
  br label %316

316:                                              ; preds = %315, %290
  br label %317

317:                                              ; preds = %316, %263
  %318 = load i32, i32* %23, align 4
  %319 = icmp ne i32 %318, -1
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %24, align 4
  %322 = icmp ne i32 %321, -1
  br i1 %322, label %323, label %356

323:                                              ; preds = %320, %317
  %324 = load i32, i32* %23, align 4
  %325 = load i32, i32* %24, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %323
  %328 = load i32, i32* %23, align 4
  %329 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* %23, align 4
  %331 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.41, i64 0, i64 0), i32 %330)
  %332 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %333 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0))
  br label %355

334:                                              ; preds = %323
  %335 = load i32, i32* %24, align 4
  %336 = icmp ne i32 %335, -1
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i32, i32* %24, align 4
  %339 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i32 %338)
  %340 = load i32, i32* %24, align 4
  %341 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.44, i64 0, i64 0), i32 %340)
  %342 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %343 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0))
  br label %344

344:                                              ; preds = %337, %334
  %345 = load i32, i32* %23, align 4
  %346 = icmp ne i32 %345, -1
  br i1 %346, label %347, label %354

347:                                              ; preds = %344
  %348 = load i32, i32* %23, align 4
  %349 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* %23, align 4
  %351 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.46, i64 0, i64 0), i32 %350)
  %352 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %353 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0))
  br label %354

354:                                              ; preds = %347, %344
  br label %355

355:                                              ; preds = %354, %327
  br label %356

356:                                              ; preds = %355, %320
  %357 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  %358 = call i32 (i32, i8*, ...) @cprint(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %359 = load i8*, i8** %9, align 8
  %360 = load %struct.assignment*, %struct.assignment** %5, align 8
  %361 = icmp ne %struct.assignment* %360, null
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)
  %364 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.48, i64 0, i64 0), i8* %359, i8* %363)
  %365 = load %struct.assignment*, %struct.assignment** %2, align 8
  %366 = call %struct.assignment* @find(%struct.assignment* %365, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %366, %struct.assignment** %7, align 8
  br label %367

367:                                              ; preds = %396, %356
  %368 = load %struct.assignment*, %struct.assignment** %7, align 8
  %369 = icmp ne %struct.assignment* %368, null
  br i1 %369, label %370, label %399

370:                                              ; preds = %367
  %371 = load %struct.assignment*, %struct.assignment** %7, align 8
  %372 = getelementptr inbounds %struct.assignment, %struct.assignment* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 1
  %374 = load %struct.assignment*, %struct.assignment** %373, align 8
  %375 = call %struct.assignment* @find(%struct.assignment* %374, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store %struct.assignment* %375, %struct.assignment** %27, align 8
  %376 = load %struct.assignment*, %struct.assignment** %27, align 8
  %377 = call %struct.type_handler* @find_handler(%struct.assignment* %376)
  store %struct.type_handler* %377, %struct.type_handler** %28, align 8
  %378 = load %struct.type_handler*, %struct.type_handler** %28, align 8
  %379 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %378, i32 0, i32 1
  %380 = load i32 (i8*)*, i32 (i8*)** %379, align 8
  %381 = icmp eq i32 (i8*)* %380, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %370
  br label %396

383:                                              ; preds = %370
  %384 = load %struct.assignment*, %struct.assignment** %7, align 8
  %385 = getelementptr inbounds %struct.assignment, %struct.assignment* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 1
  %387 = load %struct.assignment*, %struct.assignment** %386, align 8
  %388 = call i8* @make_name(%struct.assignment* %387)
  store i8* %388, i8** %26, align 8
  %389 = load %struct.type_handler*, %struct.type_handler** %28, align 8
  %390 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %389, i32 0, i32 1
  %391 = load i32 (i8*)*, i32 (i8*)** %390, align 8
  %392 = load i8*, i8** %26, align 8
  %393 = call i32 %391(i8* %392)
  %394 = load i8*, i8** %26, align 8
  %395 = call i32 @free(i8* %394)
  br label %396

396:                                              ; preds = %383, %382
  %397 = load %struct.assignment*, %struct.assignment** %7, align 8
  %398 = call %struct.assignment* @find_next(%struct.assignment* %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %398, %struct.assignment** %7, align 8
  br label %367

399:                                              ; preds = %367
  %400 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  %401 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0))
  %402 = load i32, i32* %10, align 4
  %403 = load %struct.assignment*, %struct.assignment** %3, align 8
  %404 = getelementptr inbounds %struct.assignment, %struct.assignment* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = load %struct.assignment*, %struct.assignment** %4, align 8
  %408 = icmp ne %struct.assignment* %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %399
  %410 = load %struct.assignment*, %struct.assignment** %4, align 8
  %411 = getelementptr inbounds %struct.assignment, %struct.assignment* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 0
  %413 = load i8*, i8** %412, align 8
  br label %415

414:                                              ; preds = %399
  br label %415

415:                                              ; preds = %414, %409
  %416 = phi i8* [ %413, %409 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i64 0, i64 0), %414 ]
  %417 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0), i32 %402, i8* %406, i8* %416)
  %418 = load %struct.assignment*, %struct.assignment** %2, align 8
  %419 = call %struct.assignment* @find(%struct.assignment* %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %419, %struct.assignment** %7, align 8
  br label %420

420:                                              ; preds = %449, %415
  %421 = load %struct.assignment*, %struct.assignment** %7, align 8
  %422 = icmp ne %struct.assignment* %421, null
  br i1 %422, label %423, label %452

423:                                              ; preds = %420
  %424 = load %struct.assignment*, %struct.assignment** %7, align 8
  %425 = getelementptr inbounds %struct.assignment, %struct.assignment* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 1
  %427 = load %struct.assignment*, %struct.assignment** %426, align 8
  %428 = call %struct.assignment* @find(%struct.assignment* %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store %struct.assignment* %428, %struct.assignment** %30, align 8
  %429 = load %struct.assignment*, %struct.assignment** %30, align 8
  %430 = call %struct.type_handler* @find_handler(%struct.assignment* %429)
  store %struct.type_handler* %430, %struct.type_handler** %31, align 8
  %431 = load %struct.type_handler*, %struct.type_handler** %31, align 8
  %432 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %431, i32 0, i32 1
  %433 = load i32 (i8*)*, i32 (i8*)** %432, align 8
  %434 = icmp eq i32 (i8*)* %433, null
  br i1 %434, label %435, label %436

435:                                              ; preds = %423
  br label %449

436:                                              ; preds = %423
  %437 = load %struct.assignment*, %struct.assignment** %7, align 8
  %438 = getelementptr inbounds %struct.assignment, %struct.assignment* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 1
  %440 = load %struct.assignment*, %struct.assignment** %439, align 8
  %441 = call i8* @make_name(%struct.assignment* %440)
  store i8* %441, i8** %29, align 8
  %442 = load %struct.type_handler*, %struct.type_handler** %31, align 8
  %443 = getelementptr inbounds %struct.type_handler, %struct.type_handler* %442, i32 0, i32 1
  %444 = load i32 (i8*)*, i32 (i8*)** %443, align 8
  %445 = load i8*, i8** %29, align 8
  %446 = call i32 %444(i8* %445)
  %447 = load i8*, i8** %29, align 8
  %448 = call i32 @free(i8* %447)
  br label %449

449:                                              ; preds = %436, %435
  %450 = load %struct.assignment*, %struct.assignment** %7, align 8
  %451 = call %struct.assignment* @find_next(%struct.assignment* %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.assignment* %451, %struct.assignment** %7, align 8
  br label %420

452:                                              ; preds = %420
  %453 = call i32 (i32, i8*, ...) @cprint(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0))
  %454 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0))
  %455 = call i32 (i32, i8*, ...) @cprint(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  ret void
}

declare dso_local %struct.assignment* @find(%struct.assignment*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @gen_name(i8*) #1

declare dso_local i32 @gen_options(%struct.assignment*, i8*) #1

declare dso_local i32 @hprint(i32, i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @cprint(i32, i8*, ...) #1

declare dso_local %struct.type_handler* @find_handler(%struct.assignment*) #1

declare dso_local %struct.assignment* @find_next(%struct.assignment*, i8*) #1

declare dso_local i8* @make_name(%struct.assignment*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ex(%struct.assignment*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
