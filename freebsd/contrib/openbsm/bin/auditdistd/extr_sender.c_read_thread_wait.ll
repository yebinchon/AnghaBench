; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_read_thread_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_read_thread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@adist_remote_mtx = common dso_local global i32 0, align 4
@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@adist_trail = common dso_local global i32 0, align 4
@adist_remote_cond = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Trail file \22%s/%s\22 opened.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_thread_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_thread_wait() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @mtx_lock(i32* @adist_remote_mtx)
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %49, %7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load i32, i32* @adist_trail, align 4
  %12 = call i32 @trail_filefd(i32 %11)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @adist_trail, align 4
  %16 = call i32 @trail_close(i32 %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, i32* @adist_trail, align 4
  %19 = call i32 @trail_reset(i32 %18)
  br label %20

20:                                               ; preds = %25, %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @cv_wait(i32* @adist_remote_cond, i32* @adist_remote_mtx)
  br label %20

27:                                               ; preds = %20
  %28 = load i32, i32* @adist_trail, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @trail_start(i32 %28, i32 %31, i32 %34)
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %27, %0
  %37 = call i32 @mtx_unlock(i32* @adist_remote_mtx)
  br label %38

38:                                               ; preds = %58, %36
  %39 = load i32, i32* @adist_trail, align 4
  %40 = call i32 @trail_filefd(i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  store i32 1, i32* %1, align 4
  %43 = call i32 (...) @wait_for_dir()
  %44 = call i32 @mtx_lock(i32* @adist_remote_mtx)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %8

50:                                               ; preds = %42
  %51 = call i32 @mtx_unlock(i32* @adist_remote_mtx)
  %52 = load i32, i32* @adist_trail, align 4
  %53 = call i32 @trail_filefd(i32 %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @adist_trail, align 4
  %57 = call i32 @trail_next(i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  br label %38

59:                                               ; preds = %38
  %60 = load i32, i32* %1, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @adist_trail, align 4
  %67 = call i32 @trail_filename(i32 %66)
  %68 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load i32, i32* @adist_trail, align 4
  %70 = call i32 @trail_filefd(i32 %69)
  %71 = call i32 @wait_for_file_init(i32 %70)
  br label %72

72:                                               ; preds = %62, %59
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @trail_filefd(i32) #1

declare dso_local i32 @trail_close(i32) #1

declare dso_local i32 @trail_reset(i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @trail_start(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wait_for_dir(...) #1

declare dso_local i32 @trail_next(i32) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @trail_filename(i32) #1

declare dso_local i32 @wait_for_file_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
