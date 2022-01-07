; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_posix_spawn_file_actions_adddup2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_posix_spawn_file_actions_adddup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FAE_DUP2 = common dso_local global i32 0, align 4
@fae_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_spawn_file_actions_adddup2(%struct.TYPE_6__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EBADF, align 4
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %11
  %17 = call %struct.TYPE_7__* @malloc(i32 12)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load i32, i32* @FAE_DUP2, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = load i32, i32* @fae_list, align 4
  %37 = call i32 @STAILQ_INSERT_TAIL(i32* %34, %struct.TYPE_7__* %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %20, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
