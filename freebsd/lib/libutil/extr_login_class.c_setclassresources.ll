; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setclassresources.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setclassresources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_res = type { i8*, i32, i32 (%struct.TYPE_7__*, i8*, i32, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.rlimit = type { i32, i32 }

@resources = common dso_local global %struct.login_res* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"getting %s resource limit: %m\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-cur\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s-max\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"set class '%s' resource limit %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setclassresources(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.login_res*, align 8
  %4 = alloca %struct.rlimit, align 4
  %5 = alloca [40 x i8], align 16
  %6 = alloca [40 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %105

12:                                               ; preds = %1
  %13 = load %struct.login_res*, %struct.login_res** @resources, align 8
  store %struct.login_res* %13, %struct.login_res** %3, align 8
  br label %14

14:                                               ; preds = %102, %12
  %15 = load %struct.login_res*, %struct.login_res** %3, align 8
  %16 = getelementptr inbounds %struct.login_res, %struct.login_res* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %105

19:                                               ; preds = %14
  %20 = load %struct.login_res*, %struct.login_res** %3, align 8
  %21 = getelementptr inbounds %struct.login_res, %struct.login_res* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @getrlimit(i32 %22, %struct.rlimit* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load %struct.login_res*, %struct.login_res** %3, align 8
  %28 = getelementptr inbounds %struct.login_res, %struct.login_res* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %101

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %37 = load %struct.login_res*, %struct.login_res** %3, align 8
  %38 = getelementptr inbounds %struct.login_res, %struct.login_res* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %42 = load %struct.login_res*, %struct.login_res** %3, align 8
  %43 = getelementptr inbounds %struct.login_res, %struct.login_res* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load %struct.login_res*, %struct.login_res** %3, align 8
  %47 = getelementptr inbounds %struct.login_res, %struct.login_res* %46, i32 0, i32 2
  %48 = load i32 (%struct.TYPE_7__*, i8*, i32, i32)*, i32 (%struct.TYPE_7__*, i8*, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = load %struct.login_res*, %struct.login_res** %3, align 8
  %51 = getelementptr inbounds %struct.login_res, %struct.login_res* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %48(%struct.TYPE_7__* %49, i8* %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.login_res*, %struct.login_res** %3, align 8
  %57 = getelementptr inbounds %struct.login_res, %struct.login_res* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_7__*, i8*, i32, i32)*, i32 (%struct.TYPE_7__*, i8*, i32, i32)** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = load %struct.login_res*, %struct.login_res** %3, align 8
  %61 = getelementptr inbounds %struct.login_res, %struct.login_res* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 %58(%struct.TYPE_7__* %59, i8* %62, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.login_res*, %struct.login_res** %3, align 8
  %67 = getelementptr inbounds %struct.login_res, %struct.login_res* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_7__*, i8*, i32, i32)*, i32 (%struct.TYPE_7__*, i8*, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 %68(%struct.TYPE_7__* %69, i8* %70, i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.login_res*, %struct.login_res** %3, align 8
  %76 = getelementptr inbounds %struct.login_res, %struct.login_res* %75, i32 0, i32 2
  %77 = load i32 (%struct.TYPE_7__*, i8*, i32, i32)*, i32 (%struct.TYPE_7__*, i8*, i32, i32)** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 %77(%struct.TYPE_7__* %78, i8* %79, i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.login_res*, %struct.login_res** %3, align 8
  %85 = getelementptr inbounds %struct.login_res, %struct.login_res* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @setrlimit(i32 %86, %struct.rlimit* %4)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %31
  %90 = load i32, i32* @LOG_WARNING, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.login_res*, %struct.login_res** %3, align 8
  %97 = getelementptr inbounds %struct.login_res, %struct.login_res* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %95, i8* %98)
  br label %100

100:                                              ; preds = %89, %31
  br label %101

101:                                              ; preds = %100, %25
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.login_res*, %struct.login_res** %3, align 8
  %104 = getelementptr inbounds %struct.login_res, %struct.login_res* %103, i32 1
  store %struct.login_res* %104, %struct.login_res** %3, align 8
  br label %14

105:                                              ; preds = %11, %14
  ret void
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
