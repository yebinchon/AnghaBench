; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_remove_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_remove_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_hooks_ = type { %struct.evrpc_hook_list, %struct.evrpc_hook_list }
%struct.evrpc_hook_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evrpc_remove_hook(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evrpc_hooks_*, align 8
  %8 = alloca %struct.evrpc_hook_list*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.evrpc_hooks_*
  store %struct.evrpc_hooks_* %10, %struct.evrpc_hooks_** %7, align 8
  store %struct.evrpc_hook_list* null, %struct.evrpc_hook_list** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %15
  ]

12:                                               ; preds = %3
  %13 = load %struct.evrpc_hooks_*, %struct.evrpc_hooks_** %7, align 8
  %14 = getelementptr inbounds %struct.evrpc_hooks_, %struct.evrpc_hooks_* %13, i32 0, i32 1
  store %struct.evrpc_hook_list* %14, %struct.evrpc_hook_list** %8, align 8
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.evrpc_hooks_*, %struct.evrpc_hooks_** %7, align 8
  %17 = getelementptr inbounds %struct.evrpc_hooks_, %struct.evrpc_hooks_* %16, i32 0, i32 0
  store %struct.evrpc_hook_list* %17, %struct.evrpc_hook_list** %8, align 8
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 128
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ true, %18 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @EVUTIL_ASSERT(i32 %26)
  br label %28

28:                                               ; preds = %24, %15, %12
  %29 = load %struct.evrpc_hook_list*, %struct.evrpc_hook_list** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @evrpc_remove_hook_internal(%struct.evrpc_hook_list* %29, i8* %30)
  ret i32 %31
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evrpc_remove_hook_internal(%struct.evrpc_hook_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
