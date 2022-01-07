; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32, i32, i32, i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@sockets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_socket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @socket_wrapper_dir()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @real_socket(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %25 [
    i32 132, label %19
    i32 130, label %20
  ]

19:                                               ; preds = %17
  br label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @real_socket(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %60

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %31 [
    i32 128, label %29
    i32 129, label %30
  ]

29:                                               ; preds = %27
  br label %33

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %60

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @real_socket(i32 130, i32 %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %60

39:                                               ; preds = %33
  %40 = call i64 @calloc(i32 1, i32 16)
  %41 = inttoptr i64 %40 to %struct.socket_info*
  store %struct.socket_info* %41, %struct.socket_info** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %44 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %47 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %50 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %53 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @sockets, align 4
  %55 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %56 = call i32 @SWRAP_DLIST_ADD(i32 %54, %struct.socket_info* %55)
  %57 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %58 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %39, %38, %31, %25, %20, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @socket_wrapper_dir(...) #1

declare dso_local i32 @real_socket(i32, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SWRAP_DLIST_ADD(i32, %struct.socket_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
