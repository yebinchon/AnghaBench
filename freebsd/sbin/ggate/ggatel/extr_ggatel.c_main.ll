; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@action = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"rescue\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fo:s:t:u:v\00", align 1
@force = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@optarg = common dso_local global i8* null, align 8
@G_GATE_FLAG_READONLY = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@G_GATE_FLAG_WRITEONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Invalid argument for '-o' option.\00", align 1
@errno = common dso_local global i32 0, align 4
@sectorsize = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Invalid sectorsize.\00", align 1
@timeout = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"Invalid timeout.\00", align 1
@unit = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid unit number.\00", align 1
@g_gate_verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@path = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"Required unit number.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @usage()
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcasecmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 132, i32* @action, align 4
  br label %44

18:                                               ; preds = %11
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 129, i32* @action, align 4
  br label %43

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 131, i32* @action, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 130, i32* @action, align 4
  br label %41

39:                                               ; preds = %32
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %38
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8** %48, i8*** %5, align 8
  br label %49

49:                                               ; preds = %151, %44
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = call i32 @getopt(i32 %50, i8** %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %152

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %149 [
    i32 102, label %58
    i32 111, label %64
    i32 115, label %95
    i32 116, label %112
    i32 117, label %129
    i32 118, label %141
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* @action, align 4
  %60 = icmp ne i32 %59, 131
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %58
  store i32 1, i32* @force, align 4
  br label %151

64:                                               ; preds = %56
  %65 = load i32, i32* @action, align 4
  %66 = icmp ne i32 %65, 132
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @action, align 4
  %69 = icmp ne i32 %68, 129
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %67, %64
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @G_GATE_FLAG_READONLY, align 4
  store i32 %77, i32* @flags, align 4
  br label %94

78:                                               ; preds = %72
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @G_GATE_FLAG_WRITEONLY, align 4
  store i32 %83, i32* @flags, align 4
  br label %93

84:                                               ; preds = %78
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 0, i32* @flags, align 4
  br label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  %91 = call i32 @errx(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %88
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %76
  br label %151

95:                                               ; preds = %56
  %96 = load i32, i32* @action, align 4
  %97 = icmp ne i32 %96, 132
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %95
  store i32 0, i32* @errno, align 4
  %101 = load i8*, i8** @optarg, align 8
  %102 = call i8* @strtoul(i8* %101, i32* null, i32 10)
  store i8* %102, i8** @sectorsize, align 8
  %103 = load i8*, i8** @sectorsize, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @errno, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  %110 = call i32 @errx(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105, %100
  br label %151

112:                                              ; preds = %56
  %113 = load i32, i32* @action, align 4
  %114 = icmp ne i32 %113, 132
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (...) @usage()
  br label %117

117:                                              ; preds = %115, %112
  store i32 0, i32* @errno, align 4
  %118 = load i8*, i8** @optarg, align 8
  %119 = call i8* @strtoul(i8* %118, i32* null, i32 10)
  store i8* %119, i8** @timeout, align 8
  %120 = load i8*, i8** @timeout, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @errno, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @EXIT_FAILURE, align 4
  %127 = call i32 @errx(i32 %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122, %117
  br label %151

129:                                              ; preds = %56
  store i32 0, i32* @errno, align 4
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i32 @strtol(i8* %130, i32* null, i32 10)
  store i32 %131, i32* @unit, align 4
  %132 = load i32, i32* @unit, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @errno, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  %139 = call i32 @errx(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %134, %129
  br label %151

141:                                              ; preds = %56
  %142 = load i32, i32* @action, align 4
  %143 = icmp eq i32 %142, 131
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (...) @usage()
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* @g_gate_verbose, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @g_gate_verbose, align 4
  br label %151

149:                                              ; preds = %56
  %150 = call i32 (...) @usage()
  br label %151

151:                                              ; preds = %149, %146, %140, %128, %111, %94, %63
  br label %49

152:                                              ; preds = %55
  %153 = load i64, i64* @optind, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %4, align 4
  %158 = load i64, i64* @optind, align 8
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 %158
  store i8** %160, i8*** %5, align 8
  %161 = load i32, i32* @action, align 4
  switch i32 %161, label %209 [
    i32 132, label %162
    i32 129, label %174
    i32 131, label %192
    i32 130, label %204
    i32 128, label %208
  ]

162:                                              ; preds = %152
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 1
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 (...) @usage()
  br label %167

167:                                              ; preds = %165, %162
  %168 = call i32 (...) @g_gate_load_module()
  %169 = call i32 (...) @g_gate_open_device()
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** @path, align 8
  %173 = call i32 (...) @g_gatel_create()
  br label %211

174:                                              ; preds = %152
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 1
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = call i32 (...) @usage()
  br label %179

179:                                              ; preds = %177, %174
  %180 = load i32, i32* @unit, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32, i32* @stderr, align 4
  %184 = call i32 @fprintf(i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %185 = call i32 (...) @usage()
  br label %186

186:                                              ; preds = %182, %179
  %187 = call i32 (...) @g_gate_open_device()
  %188 = load i8**, i8*** %5, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 0
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** @path, align 8
  %191 = call i32 (...) @g_gatel_rescue()
  br label %211

192:                                              ; preds = %152
  %193 = load i32, i32* @unit, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 @fprintf(i32 %196, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %198 = call i32 (...) @usage()
  br label %199

199:                                              ; preds = %195, %192
  store i32 1, i32* @g_gate_verbose, align 4
  %200 = call i32 (...) @g_gate_open_device()
  %201 = load i32, i32* @unit, align 4
  %202 = load i32, i32* @force, align 4
  %203 = call i32 @g_gate_destroy(i32 %201, i32 %202)
  br label %211

204:                                              ; preds = %152
  %205 = load i32, i32* @unit, align 4
  %206 = load i32, i32* @g_gate_verbose, align 4
  %207 = call i32 @g_gate_list(i32 %205, i32 %206)
  br label %211

208:                                              ; preds = %152
  br label %209

209:                                              ; preds = %152, %208
  %210 = call i32 (...) @usage()
  br label %211

211:                                              ; preds = %209, %204, %199, %186, %167
  %212 = call i32 (...) @g_gate_close_device()
  %213 = load i32, i32* @EXIT_SUCCESS, align 4
  %214 = call i32 @exit(i32 %213) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @g_gate_load_module(...) #1

declare dso_local i32 @g_gate_open_device(...) #1

declare dso_local i32 @g_gatel_create(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @g_gatel_rescue(...) #1

declare dso_local i32 @g_gate_destroy(i32, i32) #1

declare dso_local i32 @g_gate_list(i32, i32) #1

declare dso_local i32 @g_gate_close_device(...) #1

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
