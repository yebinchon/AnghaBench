; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_spawn_pager.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_spawn_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.tag_files = type { i8*, i8*, i8*, i32, i32, i32 }

@__const.spawn_pager.timeout = private unnamed_addr constant %struct.timespec { i32 0, i32 100000000 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"MANPAGER\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"less -s\00", align 1
@MANDOCERR_FORK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@MANDOCERR_DUP = common dso_local global i32 0, align 4
@MANDOCERR_EXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@MANDOCERR_PLEDGE = common dso_local global i32 0, align 4
@MAX_PAGER_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tag_files*)* @spawn_pager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spawn_pager(%struct.tag_files* %0) #0 {
  %2 = alloca %struct.tag_files*, align 8
  %3 = alloca %struct.timespec, align 4
  %4 = alloca [16 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tag_files* %0, %struct.tag_files** %2, align 8
  %10 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timespec* @__const.spawn_pager.timeout to i8*), i64 8, i1 false)
  %11 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @mandoc_strdup(i8* %31)
  store i8* %32, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %65, %30
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 5
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 %41
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 32)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %66

48:                                               ; preds = %37
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 0, i8* %49, align 1
  br label %51

51:                                               ; preds = %56, %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %51

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %59
  br label %33

66:                                               ; preds = %64, %47, %33
  store i32 1, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.tag_files*, %struct.tag_files** %2, align 8
  %71 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 %75
  store i8* %72, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %66
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 %79
  store i8* null, i8** %80, align 8
  %81 = call i32 (...) @fork()
  store i32 %81, i32* %9, align 4
  switch i32 %81, label %92 [
    i32 -1, label %82
    i32 0, label %91
  ]

82:                                               ; preds = %77
  %83 = load i32, i32* @MANDOCERR_FORK, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %83, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = call i32 (...) @mandoc_msg_getrc()
  %90 = call i32 @exit(i32 %89) #4
  unreachable

91:                                               ; preds = %77
  br label %104

92:                                               ; preds = %77
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @setpgid(i32 %93, i32 0)
  %95 = load %struct.tag_files*, %struct.tag_files** %2, align 8
  %96 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @tcsetpgrp(i32 %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.tag_files*, %struct.tag_files** %2, align 8
  %102 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  ret i32 %103

104:                                              ; preds = %91
  %105 = load %struct.tag_files*, %struct.tag_files** %2, align 8
  %106 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @STDOUT_FILENO, align 4
  %109 = call i32 @dup2(i32 %107, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i32, i32* @MANDOCERR_DUP, align 4
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 @strerror(i32 %113)
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %112, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  %118 = call i32 (...) @mandoc_msg_getrc()
  %119 = call i32 @_exit(i32 %118) #4
  unreachable

120:                                              ; preds = %104
  %121 = load %struct.tag_files*, %struct.tag_files** %2, align 8
  %122 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @close(i32 %123)
  %125 = load %struct.tag_files*, %struct.tag_files** %2, align 8
  %126 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, -1
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  br label %131

131:                                              ; preds = %136, %120
  %132 = load i32, i32* @STDOUT_FILENO, align 4
  %133 = call i64 @tcgetpgrp(i32 %132)
  %134 = call i64 (...) @getpid()
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @nanosleep(%struct.timespec* %3, i32* null)
  br label %131

138:                                              ; preds = %131
  %139 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 0
  %140 = load i8*, i8** %139, align 16
  %141 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 0
  %142 = call i32 @execvp(i8* %140, i8** %141)
  %143 = load i32, i32* @MANDOCERR_EXEC, align 4
  %144 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 0
  %145 = load i8*, i8** %144, align 16
  %146 = load i32, i32* @errno, align 4
  %147 = call i32 @strerror(i32 %146)
  %148 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %143, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %145, i32 %147)
  %149 = call i32 (...) @mandoc_msg_getrc()
  %150 = call i32 @_exit(i32 %149) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @mandoc_strdup(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @mandoc_msg_getrc(...) #2

declare dso_local i32 @setpgid(i32, i32) #2

declare dso_local i32 @tcsetpgrp(i32, i32) #2

declare dso_local i32 @dup2(i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @close(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @tcgetpgrp(i32) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #2

declare dso_local i32 @execvp(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
