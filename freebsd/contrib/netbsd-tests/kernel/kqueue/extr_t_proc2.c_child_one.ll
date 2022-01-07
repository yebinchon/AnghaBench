; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/extr_t_proc2.c_child_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/extr_t_proc2.c_child_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"getpwnam(\22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"setuid(%d)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @child_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_one() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call %struct.passwd* @getpwnam(i8* %4)
  store %struct.passwd* %5, %struct.passwd** %2, align 8
  %6 = load %struct.passwd*, %struct.passwd** %2, align 8
  %7 = icmp eq %struct.passwd* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i32, i8*, ...) @err(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = load %struct.passwd*, %struct.passwd** %2, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @setuid(i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = load %struct.passwd*, %struct.passwd** %2, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @err(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = call i32 (...) @fork()
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 (i32, i8*, ...) @err(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @child_two()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  %38 = call i32 @_exit(i32 %37) #3
  unreachable
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @child_two(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
