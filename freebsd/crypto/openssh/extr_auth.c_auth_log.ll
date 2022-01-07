; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i32* }

@active_state = common dso_local global %struct.ssh* null, align 8
@use_privsep = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Postponed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Partial\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Accepted\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@BLACKLIST_AUTH_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"%s %s%s%s for %s%.100s from %.200s port %d ssh2%s%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"invalid user \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@loginmsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_log(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ssh*, align 8
  %12 = alloca void (i8*, ...)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %15, %struct.ssh** %11, align 8
  store void (i8*, ...)* bitcast (void (i8*)* @verbose to void (i8*, ...)*), void (i8*, ...)** %12, align 8
  store i8* null, i8** %14, align 8
  %16 = load i64, i64* @use_privsep, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = call i32 (...) @mm_is_monitor()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %125

27:                                               ; preds = %21, %18, %5
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 4
  %40 = sdiv i32 %39, 2
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %35, %30, %27
  store void (i8*, ...)* bitcast (void (i8*)* @logit to void (i8*, ...)*), void (i8*, ...)** %12, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %69

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  store i8* %61, i8** %13, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @BLACKLIST_AUTH_OK, align 4
  %66 = call i32 @BLACKLIST_NOTIFY(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %57
  br label %68

68:                                               ; preds = %67, %56
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = call i8* @format_method_key(%struct.TYPE_5__* %70)
  store i8* %71, i8** %14, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @xstrdup(i32* %81)
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %69
  %85 = load void (i8*, ...)*, void (i8*, ...)** %12, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %92 = load i8*, i8** %10, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %97

95:                                               ; preds = %84
  %96 = load i8*, i8** %10, align 8
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %94 ], [ %96, %95 ]
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ssh*, %struct.ssh** %11, align 8
  %109 = call i32 @ssh_remote_ipaddr(%struct.ssh* %108)
  %110 = load %struct.ssh*, %struct.ssh** %11, align 8
  %111 = call i32 @ssh_remote_port(%struct.ssh* %110)
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %116 = load i8*, i8** %14, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %97
  %119 = load i8*, i8** %14, align 8
  br label %121

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i8* [ %119, %118 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %120 ]
  call void (i8*, ...) %85(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %86, i8* %87, i8* %91, i8* %98, i8* %104, i32 %107, i32 %109, i32 %111, i8* %115, i8* %122)
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @free(i8* %123)
  br label %125

125:                                              ; preds = %121, %26
  ret void
}

declare dso_local void @verbose(i8*) #1

declare dso_local i32 @mm_is_monitor(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local void @logit(i8*) #1

declare dso_local i32 @BLACKLIST_NOTIFY(i32, i8*) #1

declare dso_local i8* @format_method_key(%struct.TYPE_5__*) #1

declare dso_local i8* @xstrdup(i32*) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
