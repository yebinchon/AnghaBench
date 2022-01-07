; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_load.c_openpam_load_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_load.c_openpam_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s dynamic %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"no %s found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @openpam_load_module(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32* @openpam_dynamic(i8* %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* @PAM_LOG_DEBUG, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i32, i8*, i8*, ...) @openpam_log(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @PAM_LOG_ERROR, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @openpam_log(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  store i32* null, i32** %2, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @openpam_dynamic(i8*) #1

declare dso_local i32 @openpam_log(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
