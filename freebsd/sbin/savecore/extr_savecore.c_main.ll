; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i32 0, align 4
@keep = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@clear = common dso_local global i32 0, align 4
@compress = common dso_local global i32 0, align 4
@checkfor = common dso_local global i32 0, align 4
@nerr = common dso_local global i64 0, align 8
@nsaved = common dso_local global i64 0, align 8
@nfound = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"savecore\00", align 1
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@infohandler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Ccfkm:vz\00", align 1
@optarg = common dso_local global i32 0, align 4
@maxdumps = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid maxdump value\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"chdir(%s): %m\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"open(%s): %m\00", align 1
@CAP_CREATE = common dso_local global i32 0, align 4
@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_FSTATAT = common dso_local global i32 0, align 4
@CAP_FSTATFS = common dso_local global i32 0, align 4
@CAP_PREAD = common dso_local global i32 0, align 4
@CAP_SYMLINKAT = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CAP_UNLINKAT = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"cap_rights_limit(): %m\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"No dump exists\0A\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"no dumps found\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"unsaved dumps found but not saved\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"no unsaved dumps found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* @verbose, align 4
  store i32 0, i32* @keep, align 4
  store i32 0, i32* @force, align 4
  store i32 0, i32* @clear, align 4
  store i32 0, i32* @compress, align 4
  store i32 0, i32* @checkfor, align 4
  store i64 0, i64* @nerr, align 8
  store i64 0, i64* @nsaved, align 8
  store i64 0, i64* @nfound, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = load i32, i32* @LOG_PERROR, align 4
  %13 = load i32, i32* @LOG_DAEMON, align 4
  %14 = call i32 @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @SIGINFO, align 4
  %16 = load i32, i32* @infohandler, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @xo_parse_args(i32 %18, i8** %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %52 [
    i32 67, label %33
    i32 99, label %34
    i32 102, label %35
    i32 107, label %36
    i32 109, label %37
    i32 118, label %47
    i32 122, label %50
    i32 63, label %51
  ]

33:                                               ; preds = %31
  store i32 1, i32* @checkfor, align 4
  br label %54

34:                                               ; preds = %31
  store i32 1, i32* @clear, align 4
  br label %54

35:                                               ; preds = %31
  store i32 1, i32* @force, align 4
  br label %54

36:                                               ; preds = %31
  store i32 1, i32* @keep, align 4
  br label %54

37:                                               ; preds = %31
  %38 = load i32, i32* @optarg, align 4
  %39 = call i64 @atoi(i32 %38)
  store i64 %39, i64* @maxdumps, align 8
  %40 = load i64, i64* @maxdumps, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = call i32 (i32, i8*, ...) @logmsg(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %37
  br label %54

47:                                               ; preds = %31
  %48 = load i32, i32* @verbose, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @verbose, align 4
  br label %54

50:                                               ; preds = %31
  store i32 1, i32* @compress, align 4
  br label %54

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %31, %51
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %50, %47, %46, %36, %35, %34, %33
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* @checkfor, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* @clear, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @force, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @keep, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61, %58
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %64, %55
  %70 = load i32, i32* @clear, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* @compress, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @keep, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %72
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %75, %69
  %81 = load i64, i64* @maxdumps, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32, i32* @checkfor, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @clear, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %83
  %90 = call i32 (...) @usage()
  br label %91

91:                                               ; preds = %89, %86, %80
  %92 = load i64, i64* @optind, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load i64, i64* @optind, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 %97
  store i8** %99, i8*** %5, align 8
  %100 = load i32, i32* %4, align 4
  %101 = icmp sge i32 %100, 1
  br i1 %101, label %102, label %130

102:                                              ; preds = %91
  %103 = load i32, i32* @checkfor, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @clear, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %105
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @chdir(i8* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i32, i32* @LOG_ERR, align 4
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i32, i8*, ...) @logmsg(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = call i32 @exit(i32 1) #3
  unreachable

122:                                              ; preds = %108
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %7, align 8
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %4, align 4
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %5, align 8
  br label %130

130:                                              ; preds = %122, %105, %102, %91
  %131 = load i32, i32* %4, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i8** @enum_dumpdevs(i32* %4)
  store i8** %134, i8*** %5, align 8
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* @O_RDONLY, align 4
  %138 = load i32, i32* @O_DIRECTORY, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @open(i8* %136, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load i32, i32* @LOG_ERR, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 (i32, i8*, ...) @logmsg(i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %145)
  %147 = call i32 @exit(i32 1) #3
  unreachable

148:                                              ; preds = %135
  %149 = load i32, i32* @CAP_CREATE, align 4
  %150 = load i32, i32* @CAP_FCNTL, align 4
  %151 = load i32, i32* @CAP_FSTATAT, align 4
  %152 = load i32, i32* @CAP_FSTATFS, align 4
  %153 = load i32, i32* @CAP_PREAD, align 4
  %154 = load i32, i32* @CAP_SYMLINKAT, align 4
  %155 = load i32, i32* @CAP_FTRUNCATE, align 4
  %156 = load i32, i32* @CAP_UNLINKAT, align 4
  %157 = load i32, i32* @CAP_WRITE, align 4
  %158 = call i32 @cap_rights_init(i32* %6, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %11, align 4
  %160 = call i64 @caph_rights_limit(i32 %159, i32* %6)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %148
  %163 = load i32, i32* @LOG_ERR, align 4
  %164 = call i32 (i32, i8*, ...) @logmsg(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %165 = call i32 @exit(i32 1) #3
  unreachable

166:                                              ; preds = %148
  %167 = load i32, i32* %4, align 4
  %168 = load i8**, i8*** %5, align 8
  %169 = call i32 @init_caps(i32 %167, i8** %168)
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %183, %166
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @DoFile(i8* %175, i32 %176, i8* %181)
  br label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %170

186:                                              ; preds = %170
  %187 = load i64, i64* @nfound, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %186
  %190 = load i32, i32* @checkfor, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load i32, i32* @verbose, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %197

197:                                              ; preds = %195, %192
  %198 = call i32 @exit(i32 1) #3
  unreachable

199:                                              ; preds = %189
  %200 = load i32, i32* @verbose, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @LOG_WARNING, align 4
  %204 = call i32 (i32, i8*, ...) @logmsg(i32 %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %199
  br label %229

206:                                              ; preds = %186
  %207 = load i64, i64* @nsaved, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %206
  %210 = load i64, i64* @nerr, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load i32, i32* @verbose, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* @LOG_WARNING, align 4
  %217 = call i32 (i32, i8*, ...) @logmsg(i32 %216, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %218

218:                                              ; preds = %215, %212
  %219 = call i32 @exit(i32 1) #3
  unreachable

220:                                              ; preds = %209
  %221 = load i32, i32* @verbose, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* @LOG_WARNING, align 4
  %225 = call i32 (i32, i8*, ...) @logmsg(i32 %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227, %206
  br label %229

229:                                              ; preds = %228, %205
  ret i32 0
}

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i8** @enum_dumpdevs(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @init_caps(i32, i8**) #1

declare dso_local i32 @DoFile(i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
