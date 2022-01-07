; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_fd_fork_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_fd_fork_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_info = type { i64, i32, i32 }

@idm = common dso_local global i32 0, align 4
@fd_fork_passive = common dso_local global i64 0, align 8
@fd_fork_active = common dso_local global i64 0, align 8
@fd_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @fd_fork_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_fork_get(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fd_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.fd_info* @idm_lookup(i32* @idm, i32 %7)
  store %struct.fd_info* %8, %struct.fd_info** %6, align 8
  %9 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %10 = icmp ne %struct.fd_info* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %13 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @fd_fork_passive, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @fork_passive(i32 %18)
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %22 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @fd_fork_active, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @fork_active(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %17
  %31 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %32 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %36 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @fd_normal, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.fd_info* @idm_lookup(i32*, i32) #1

declare dso_local i32 @fork_passive(i32) #1

declare dso_local i32 @fork_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
