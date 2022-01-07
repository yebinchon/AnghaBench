; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_reroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_reroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGKILL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"kill(2) failed: %s\00", align 1
@init_path_argv0 = common dso_local global i32 0, align 4
@_PATH_REROOT = common dso_local global i32 0, align 4
@_PATH_REROOT_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot exec %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"reroot failed; going to single user mode\00", align 1
@single_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reroot() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i64 0, i64* %2, align 8
  %4 = call i32 (...) @revoke_ttys()
  %5 = call i32 (...) @runshutdown()
  %6 = load i32, i32* @SIGKILL, align 4
  %7 = call i32 @kill(i32 -1, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @ESRCH, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* @errno, align 8
  %16 = call i32 @strerror(i64 %15)
  %17 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %46

18:                                               ; preds = %10, %0
  %19 = load i32, i32* @init_path_argv0, align 4
  %20 = call i32 @read_file(i32 %19, i8** %1, i64* %2)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %46

24:                                               ; preds = %18
  %25 = load i32, i32* @_PATH_REROOT, align 4
  %26 = call i32 @mount_tmpfs(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %46

30:                                               ; preds = %24
  %31 = load i32, i32* @_PATH_REROOT_INIT, align 4
  %32 = load i8*, i8** %1, align 8
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @create_file(i32 %31, i8* %32, i64 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %46

38:                                               ; preds = %30
  %39 = load i32, i32* @_PATH_REROOT_INIT, align 4
  %40 = load i32, i32* @_PATH_REROOT_INIT, align 4
  %41 = call i32 @execl(i32 %39, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %42 = load i32, i32* @_PATH_REROOT_INIT, align 4
  %43 = load i64, i64* @errno, align 8
  %44 = call i32 @strerror(i64 %43)
  %45 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %38, %37, %29, %23, %14
  %47 = call i32 (i8*, ...) @emergency(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* @single_user, align 4
  ret i32 %50
}

declare dso_local i32 @revoke_ttys(...) #1

declare dso_local i32 @runshutdown(...) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @emergency(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @read_file(i32, i8**, i64*) #1

declare dso_local i32 @mount_tmpfs(i32) #1

declare dso_local i32 @create_file(i32, i8*, i64) #1

declare dso_local i32 @execl(i32, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
