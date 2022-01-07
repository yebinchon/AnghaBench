; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_newDirTodo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_newDirTodo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirTodoNode = type { %struct.dirTodoNode* }

@freedt = common dso_local global %struct.dirTodoNode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dirTodoNode* ()* @newDirTodo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirTodoNode* @newDirTodo() #0 {
  %1 = alloca %struct.dirTodoNode*, align 8
  %2 = alloca %struct.dirTodoNode*, align 8
  %3 = load %struct.dirTodoNode*, %struct.dirTodoNode** @freedt, align 8
  store %struct.dirTodoNode* %3, %struct.dirTodoNode** %2, align 8
  %4 = icmp ne %struct.dirTodoNode* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = call %struct.dirTodoNode* @malloc(i32 8)
  store %struct.dirTodoNode* %6, %struct.dirTodoNode** %2, align 8
  %7 = icmp ne %struct.dirTodoNode* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store %struct.dirTodoNode* null, %struct.dirTodoNode** %1, align 8
  br label %16

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %0
  %11 = load %struct.dirTodoNode*, %struct.dirTodoNode** %2, align 8
  %12 = getelementptr inbounds %struct.dirTodoNode, %struct.dirTodoNode* %11, i32 0, i32 0
  %13 = load %struct.dirTodoNode*, %struct.dirTodoNode** %12, align 8
  store %struct.dirTodoNode* %13, %struct.dirTodoNode** @freedt, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.dirTodoNode*, %struct.dirTodoNode** %2, align 8
  store %struct.dirTodoNode* %15, %struct.dirTodoNode** %1, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = load %struct.dirTodoNode*, %struct.dirTodoNode** %1, align 8
  ret %struct.dirTodoNode* %17
}

declare dso_local %struct.dirTodoNode* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
