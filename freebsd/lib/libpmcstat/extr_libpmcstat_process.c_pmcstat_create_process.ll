; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_create_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_create_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_args = type { i32, i32* }
%struct.kevent = type { i32 }
%struct.pmcstat_target = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ERROR: cannot create socket pair\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ERROR: cannot fork\00", align 1
@PARENTSOCKET = common dso_local global i64 0, align 8
@CHILDSOCKET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ERROR (child): cannot write token\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"ERROR (child): cannot read token\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"ERROR: execvp \22%s\22 failed\00", align 1
@EVFILT_PROC = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"ERROR: cannot monitor child process %d\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory.\00", align 1
@pt_next = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"ERROR (parent): cannot read token\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_create_process(i32* %0, %struct.pmcstat_args* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pmcstat_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.kevent, align 4
  %10 = alloca %struct.pmcstat_target*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pmcstat_args* %1, %struct.pmcstat_args** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @AF_UNIX, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @socketpair(i32 %11, i32 %12, i32 0, i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EX_OSERR, align 4
  %18 = call i32 (i32, i8*, ...) @err(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %3
  %20 = call i32 (...) @fork()
  store i32 %20, i32* %8, align 4
  switch i32 %20, label %72 [
    i32 -1, label %21
    i32 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @EX_OSERR, align 4
  %23 = call i32 (i32, i8*, ...) @err(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %21
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* @PARENTSOCKET, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* @CHILDSOCKET, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @write(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EX_OSERR, align 4
  %38 = call i32 (i32, i8*, ...) @err(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* @CHILDSOCKET, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @read(i32 %43, i8* %7, i32 1)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EX_OSERR, align 4
  %48 = call i32 (i32, i8*, ...) @err(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* @CHILDSOCKET, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load %struct.pmcstat_args*, %struct.pmcstat_args** %5, align 8
  %56 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pmcstat_args*, %struct.pmcstat_args** %5, align 8
  %60 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @execvp(i32 %58, i32* %61)
  %63 = call i32 (...) @getppid()
  %64 = load i32, i32* @SIGCHLD, align 4
  %65 = call i32 @kill(i32 %63, i32 %64)
  %66 = load i32, i32* @EX_OSERR, align 4
  %67 = load %struct.pmcstat_args*, %struct.pmcstat_args** %5, align 8
  %68 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @err(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %19, %49
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* @CHILDSOCKET, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @EVFILT_PROC, align 4
  %81 = load i32, i32* @EV_ADD, align 4
  %82 = load i32, i32* @EV_ONESHOT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @NOTE_EXIT, align 4
  %85 = call i32 @EV_SET(%struct.kevent* %9, i32 %79, i32 %80, i32 %83, i32 %84, i32 0, i32* null)
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @kevent(i32 %86, %struct.kevent* %9, i32 1, i32* null, i32 0, i32* null)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i32, i32* @EX_OSERR, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @err(i32 %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %78
  %94 = call %struct.pmcstat_target* @malloc(i32 4)
  store %struct.pmcstat_target* %94, %struct.pmcstat_target** %10, align 8
  %95 = icmp eq %struct.pmcstat_target* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @EX_SOFTWARE, align 4
  %98 = call i32 @errx(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.pmcstat_target*, %struct.pmcstat_target** %10, align 8
  %102 = getelementptr inbounds %struct.pmcstat_target, %struct.pmcstat_target* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.pmcstat_args*, %struct.pmcstat_args** %5, align 8
  %104 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %103, i32 0, i32 0
  %105 = load %struct.pmcstat_target*, %struct.pmcstat_target** %10, align 8
  %106 = load i32, i32* @pt_next, align 4
  %107 = call i32 @SLIST_INSERT_HEAD(i32* %104, %struct.pmcstat_target* %105, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* @PARENTSOCKET, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @read(i32 %111, i8* %7, i32 1)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %99
  %115 = load i32, i32* @EX_OSERR, align 4
  %116 = call i32 (i32, i8*, ...) @err(i32 %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %99
  ret void
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @execvp(i32, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local %struct.pmcstat_target* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pmcstat_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
