; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_fd_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_fd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.fd_info = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4
@idm = common dso_local global i32 0, align 4
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fd_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.fd_info* @calloc(i32 1, i32 8)
  store %struct.fd_info* %5, %struct.fd_info** %2, align 8
  %6 = load %struct.fd_info*, %struct.fd_info** %2, align 8
  %7 = icmp ne %struct.fd_info* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = call i32 @ERR(i32 %9)
  store i32 %10, i32* %1, align 4
  br label %42

11:                                               ; preds = %0
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %11
  %19 = load %struct.fd_info*, %struct.fd_info** %2, align 8
  %20 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load %struct.fd_info*, %struct.fd_info** %2, align 8
  %22 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %21, i32 0, i32 1
  %23 = call i32 @atomic_store(i32* %22, i32 1)
  %24 = call i32 @pthread_mutex_lock(i32* @mut)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.fd_info*, %struct.fd_info** %2, align 8
  %27 = call i32 @idm_set(i32* @idm, i32 %25, %struct.fd_info* %26)
  store i32 %27, i32* %3, align 4
  %28 = call i32 @pthread_mutex_unlock(i32* @mut)
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %1, align 4
  br label %42

34:                                               ; preds = %31
  %35 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %35(i32 %36)
  br label %38

38:                                               ; preds = %34, %16
  %39 = load %struct.fd_info*, %struct.fd_info** %2, align 8
  %40 = call i32 @free(%struct.fd_info* %39)
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %38, %32, %8
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local %struct.fd_info* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @idm_set(i32*, i32, %struct.fd_info*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.fd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
