; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_finishDosDirSection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_finishDosDirSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirTodoNode = type { %struct.dirTodoNode* }
%struct.dosDirEntry = type { %struct.dosDirEntry*, %struct.dosDirEntry*, %struct.dosDirEntry* }

@pendingDirectories = common dso_local global %struct.dirTodoNode* null, align 8
@rootDir = common dso_local global %struct.dosDirEntry* null, align 8
@lostDir = common dso_local global i32* null, align 8
@buffer = common dso_local global i32* null, align 8
@delbuf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finishDosDirSection() #0 {
  %1 = alloca %struct.dirTodoNode*, align 8
  %2 = alloca %struct.dirTodoNode*, align 8
  %3 = alloca %struct.dosDirEntry*, align 8
  %4 = alloca %struct.dosDirEntry*, align 8
  %5 = load %struct.dirTodoNode*, %struct.dirTodoNode** @pendingDirectories, align 8
  store %struct.dirTodoNode* %5, %struct.dirTodoNode** %1, align 8
  br label %6

6:                                                ; preds = %15, %0
  %7 = load %struct.dirTodoNode*, %struct.dirTodoNode** %1, align 8
  %8 = icmp ne %struct.dirTodoNode* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.dirTodoNode*, %struct.dirTodoNode** %1, align 8
  %11 = getelementptr inbounds %struct.dirTodoNode, %struct.dirTodoNode* %10, i32 0, i32 0
  %12 = load %struct.dirTodoNode*, %struct.dirTodoNode** %11, align 8
  store %struct.dirTodoNode* %12, %struct.dirTodoNode** %2, align 8
  %13 = load %struct.dirTodoNode*, %struct.dirTodoNode** %1, align 8
  %14 = call i32 @freeDirTodo(%struct.dirTodoNode* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.dirTodoNode*, %struct.dirTodoNode** %2, align 8
  store %struct.dirTodoNode* %16, %struct.dirTodoNode** %1, align 8
  br label %6

17:                                               ; preds = %6
  store %struct.dirTodoNode* null, %struct.dirTodoNode** @pendingDirectories, align 8
  %18 = load %struct.dosDirEntry*, %struct.dosDirEntry** @rootDir, align 8
  store %struct.dosDirEntry* %18, %struct.dosDirEntry** %3, align 8
  br label %19

19:                                               ; preds = %42, %17
  %20 = load %struct.dosDirEntry*, %struct.dosDirEntry** %3, align 8
  %21 = icmp ne %struct.dosDirEntry* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.dosDirEntry*, %struct.dosDirEntry** %3, align 8
  %24 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %23, i32 0, i32 2
  %25 = load %struct.dosDirEntry*, %struct.dosDirEntry** %24, align 8
  store %struct.dosDirEntry* %25, %struct.dosDirEntry** %4, align 8
  %26 = icmp ne %struct.dosDirEntry* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.dosDirEntry*, %struct.dosDirEntry** %3, align 8
  %29 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %28, i32 0, i32 2
  store %struct.dosDirEntry* null, %struct.dosDirEntry** %29, align 8
  br label %42

30:                                               ; preds = %22
  %31 = load %struct.dosDirEntry*, %struct.dosDirEntry** %3, align 8
  %32 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %31, i32 0, i32 1
  %33 = load %struct.dosDirEntry*, %struct.dosDirEntry** %32, align 8
  store %struct.dosDirEntry* %33, %struct.dosDirEntry** %4, align 8
  %34 = icmp ne %struct.dosDirEntry* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.dosDirEntry*, %struct.dosDirEntry** %3, align 8
  %37 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %36, i32 0, i32 0
  %38 = load %struct.dosDirEntry*, %struct.dosDirEntry** %37, align 8
  store %struct.dosDirEntry* %38, %struct.dosDirEntry** %4, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.dosDirEntry*, %struct.dosDirEntry** %3, align 8
  %41 = call i32 @freeDosDirEntry(%struct.dosDirEntry* %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.dosDirEntry*, %struct.dosDirEntry** %4, align 8
  store %struct.dosDirEntry* %43, %struct.dosDirEntry** %3, align 8
  br label %19

44:                                               ; preds = %19
  store i32* null, i32** @lostDir, align 8
  store %struct.dosDirEntry* null, %struct.dosDirEntry** @rootDir, align 8
  %45 = load i32*, i32** @buffer, align 8
  %46 = call i32 @free(i32* %45)
  %47 = load i32*, i32** @delbuf, align 8
  %48 = call i32 @free(i32* %47)
  store i32* null, i32** @buffer, align 8
  store i32* null, i32** @delbuf, align 8
  ret void
}

declare dso_local i32 @freeDirTodo(%struct.dirTodoNode*) #1

declare dso_local i32 @freeDosDirEntry(%struct.dosDirEntry*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
