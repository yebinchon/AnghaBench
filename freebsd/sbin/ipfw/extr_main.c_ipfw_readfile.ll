; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_main.c_ipfw_readfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_main.c_ipfw_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cfNnp:qS\00", align 1
@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@optind = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no filename argument\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"bad arguments, for usage summary ``ipfw''\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"extraneous filename arguments %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"fopen: %s\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"cannot create pipe\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"dup2()\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"execvp(%s) failed\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"fdopen()\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Line %d\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"waitpid()\00", align 1
@EX_OK = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [35 x i8] c"preprocessor exited with status %d\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"preprocessor exited with signal %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @ipfw_readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipfw_readfile(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x i8], align 16
  %16 = alloca [2 x i8*], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %66, %2
  %28 = load i32, i32* %3, align 4
  %29 = load i8**, i8*** %4, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %63 [
    i32 99, label %34
    i32 102, label %35
    i32 78, label %36
    i32 110, label %37
    i32 112, label %38
    i32 113, label %61
    i32 83, label %62
  ]

34:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 4
  br label %66

35:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 1), align 4
  br label %66

36:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 2), align 4
  br label %66

37:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 3), align 4
  br label %66

38:                                               ; preds = %32
  %39 = load i32, i32* @optind, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EX_USAGE, align 4
  %44 = call i32 (i32, i8*, ...) @errx(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %7, align 8
  %47 = load i8**, i8*** %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  store i8* null, i8** %51, align 8
  %52 = load i32, i32* @optind, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i8**, i8*** %4, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8** %56, i8*** %4, align 8
  %57 = load i32, i32* @optind, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* @optind, align 4
  br label %66

61:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 4), align 4
  br label %66

62:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 5), align 4
  br label %66

63:                                               ; preds = %32
  %64 = load i32, i32* @EX_USAGE, align 4
  %65 = call i32 (i32, i8*, ...) @errx(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %62, %61, %45, %37, %36, %35, %34
  br label %27

67:                                               ; preds = %27
  %68 = load i8*, i8** %7, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @optind, align 4
  %73 = add nsw i32 %72, 1
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32, i32* @EX_USAGE, align 4
  %77 = load i8**, i8*** %4, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, ...) @errx(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %75, %70, %67
  %85 = load i8*, i8** %8, align 8
  %86 = call i32* @fopen(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %86, i32** %11, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @EX_UNAVAILABLE, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (i32, i8*, ...) @err(i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %160

95:                                               ; preds = %92
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %97 = call i32 @pipe(i32* %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @EX_OSERR, align 4
  %101 = call i32 (i32, i8*, ...) @err(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  %103 = call i32 (...) @fork()
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @EX_OSERR, align 4
  %108 = call i32 (i32, i8*, ...) @err(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %109
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @fileno(i32* %113)
  %115 = call i32 @dup2(i32 %114, i32 0)
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dup2(i32 %119, i32 1)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %112
  %123 = load i32, i32* @EX_OSERR, align 4
  %124 = call i32 (i32, i8*, ...) @err(i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @fclose(i32* %126)
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @close(i32 %132)
  %134 = load i8*, i8** %7, align 8
  %135 = load i8**, i8*** %4, align 8
  %136 = call i32 @execvp(i8* %134, i8** %135)
  %137 = load i32, i32* @EX_OSERR, align 4
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 (i32, i8*, ...) @err(i32 %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %138)
  br label %159

140:                                              ; preds = %109
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @fclose(i32* %141)
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @close(i32 %144)
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32* @fdopen(i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %148, i32** %11, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %140
  %151 = load i32, i32* @errno, align 4
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @SIGTERM, align 4
  %154 = call i32 @kill(i32 %152, i32 %153)
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* @errno, align 4
  %156 = load i32, i32* @EX_OSERR, align 4
  %157 = call i32 (i32, i8*, ...) @err(i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %158

158:                                              ; preds = %150, %140
  br label %159

159:                                              ; preds = %158, %125
  br label %160

160:                                              ; preds = %159, %92
  br label %161

161:                                              ; preds = %166, %160
  %162 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %163 = load i32*, i32** %11, align 8
  %164 = call i64 @fgets(i8* %162, i32 4096, i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @snprintf(i8* %169, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  %172 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %173 = call i32 @setprogname(i8* %172)
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  store i8* %174, i8** %175, align 16
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %177 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  store i8* %176, i8** %177, align 8
  %178 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %179 = call i32 @ipfw_main(i32 2, i8** %178)
  br label %161

180:                                              ; preds = %161
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @fclose(i32* %181)
  %183 = load i8*, i8** %7, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %217

185:                                              ; preds = %180
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @waitpid(i32 %186, i32* %17, i32 0)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* @EX_OSERR, align 4
  %191 = call i32 (i32, i8*, ...) @errx(i32 %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %185
  %193 = load i32, i32* %17, align 4
  %194 = call i64 @WIFEXITED(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load i32, i32* %17, align 4
  %198 = call i8* @WEXITSTATUS(i32 %197)
  %199 = load i8*, i8** @EX_OK, align 8
  %200 = icmp ne i8* %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i32, i32* @EX_UNAVAILABLE, align 4
  %203 = load i32, i32* %17, align 4
  %204 = call i8* @WEXITSTATUS(i32 %203)
  %205 = call i32 (i32, i8*, ...) @errx(i32 %202, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* %204)
  br label %216

206:                                              ; preds = %196, %192
  %207 = load i32, i32* %17, align 4
  %208 = call i64 @WIFSIGNALED(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32, i32* @EX_UNAVAILABLE, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i8* @WTERMSIG(i32 %212)
  %214 = call i32 (i32, i8*, ...) @errx(i32 %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8* %213)
  br label %215

215:                                              ; preds = %210, %206
  br label %216

216:                                              ; preds = %215, %201
  br label %217

217:                                              ; preds = %216, %180
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @ipfw_main(i32, i8**) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i8* @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i8* @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
