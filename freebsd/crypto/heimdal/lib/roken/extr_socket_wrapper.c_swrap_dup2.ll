; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_dup2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_dup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_dup2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_info*, align 8
  %7 = alloca %struct.socket_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.socket_info* @find_socket_info(i32 %15)
  store %struct.socket_info* %16, %struct.socket_info** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.socket_info* @find_socket_info(i32 %17)
  store %struct.socket_info* %18, %struct.socket_info** %6, align 8
  %19 = load %struct.socket_info*, %struct.socket_info** %7, align 8
  %20 = icmp eq %struct.socket_info* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %23 = icmp eq %struct.socket_info* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @real_dup2(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %21, %14
  %29 = load %struct.socket_info*, %struct.socket_info** %7, align 8
  %30 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @real_dup2(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load %struct.socket_info*, %struct.socket_info** %6, align 8
  %40 = icmp ne %struct.socket_info* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @swrap_close(i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.socket_info*, %struct.socket_info** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dup_internal(%struct.socket_info* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %36, %24, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_dup2(i32, i32) #1

declare dso_local i32 @swrap_close(i32) #1

declare dso_local i32 @dup_internal(%struct.socket_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
