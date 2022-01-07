; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tube_create: out of memory\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"socketpair: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"tube: cannot set nonblocking\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tube* @tube_create() #0 {
  %1 = alloca %struct.tube*, align 8
  %2 = alloca %struct.tube*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 @calloc(i32 1, i32 8)
  %8 = inttoptr i64 %7 to %struct.tube*
  store %struct.tube* %8, %struct.tube** %2, align 8
  %9 = load %struct.tube*, %struct.tube** %2, align 8
  %10 = icmp ne %struct.tube* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %4, align 4
  %13 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* @errno, align 4
  store %struct.tube* null, %struct.tube** %1, align 8
  br label %61

15:                                               ; preds = %0
  %16 = load %struct.tube*, %struct.tube** %2, align 8
  %17 = getelementptr inbounds %struct.tube, %struct.tube* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = load %struct.tube*, %struct.tube** %2, align 8
  %19 = getelementptr inbounds %struct.tube, %struct.tube* %18, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %23 = call i32 @socketpair(i32 %20, i32 %21, i32 0, i32* %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.tube*, %struct.tube** %2, align 8
  %31 = call i32 @free(%struct.tube* %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* @errno, align 4
  store %struct.tube* null, %struct.tube** %1, align 8
  br label %61

33:                                               ; preds = %15
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tube*, %struct.tube** %2, align 8
  %37 = getelementptr inbounds %struct.tube, %struct.tube* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tube*, %struct.tube** %2, align 8
  %41 = getelementptr inbounds %struct.tube, %struct.tube* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.tube*, %struct.tube** %2, align 8
  %43 = getelementptr inbounds %struct.tube, %struct.tube* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fd_set_nonblock(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.tube*, %struct.tube** %2, align 8
  %49 = getelementptr inbounds %struct.tube, %struct.tube* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fd_set_nonblock(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47, %33
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %6, align 4
  %55 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.tube*, %struct.tube** %2, align 8
  %57 = call i32 @tube_delete(%struct.tube* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* @errno, align 4
  store %struct.tube* null, %struct.tube** %1, align 8
  br label %61

59:                                               ; preds = %47
  %60 = load %struct.tube*, %struct.tube** %2, align 8
  store %struct.tube* %60, %struct.tube** %1, align 8
  br label %61

61:                                               ; preds = %59, %53, %25, %11
  %62 = load %struct.tube*, %struct.tube** %1, align 8
  ret %struct.tube* %62
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(%struct.tube*) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

declare dso_local i32 @tube_delete(%struct.tube*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
