; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_getenv_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_getenv_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"RS_SQ_SIZE\00", align 1
@sq_size = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"RS_RQ_SIZE\00", align 1
@rq_size = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"RS_INLINE\00", align 1
@sq_inline = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"RDMAV_FORK_SAFE\00", align 1
@fork_support = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getenv_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getenv_options() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i8* @atoi(i8* %6)
  store i8* %7, i8** @sq_size, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %1, align 8
  %14 = call i8* @atoi(i8* %13)
  store i8* %14, i8** @rq_size, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %1, align 8
  %21 = call i8* @atoi(i8* %20)
  store i8* %21, i8** @sq_inline, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %1, align 8
  %28 = call i8* @atoi(i8* %27)
  store i8* %28, i8** @fork_support, align 8
  br label %29

29:                                               ; preds = %26, %22
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
