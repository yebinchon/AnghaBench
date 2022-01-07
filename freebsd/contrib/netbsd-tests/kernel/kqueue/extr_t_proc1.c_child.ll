; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/extr_t_proc1.c_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/extr_t_proc1.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"strdup(\22true\22)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FOO=BAZ\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"strdup(\22FOO=BAZ\22)\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"/usr/bin/true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8*], align 16
  %5 = alloca [2 x i8*], align 16
  %6 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  store i8* %8, i8** %9, align 16
  %10 = icmp eq i8* %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = call i32 @err(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %15, i8** %16, align 16
  %17 = icmp eq i8* %15, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @err(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %14
  %22 = call i32 @sleep(i32 2)
  %23 = call i32 (...) @fork()
  store i32 %23, i32* %2, align 4
  switch i32 %23, label %28 [
    i32 -1, label %24
    i32 0, label %26
  ]

24:                                               ; preds = %21
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %25, i32* %1, align 4
  br label %35

26:                                               ; preds = %21
  %27 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %27, i32* %1, align 4
  br label %35

28:                                               ; preds = %21
  %29 = call i32 @wait(i32* %3)
  br label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %33 = call i32 @execve(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %31, i8** %32)
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %30, %26, %24
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @wait(i32*) #2

declare dso_local i32 @execve(i8*, i8**, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
