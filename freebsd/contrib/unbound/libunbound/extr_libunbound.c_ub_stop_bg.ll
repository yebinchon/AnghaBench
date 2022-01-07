; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_stop_bg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_stop_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i32, i64, i32, i32, i32, i32, i64 }

@UB_LIBCMD_QUIT = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"waitpid: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_ctx*)* @ub_stop_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_stop_bg(%struct.ub_ctx* %0) #0 {
  %2 = alloca %struct.ub_ctx*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %2, align 8
  %6 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %6, i32 0, i32 0
  %8 = call i32 @lock_basic_lock(i32* %7)
  %9 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %88

13:                                               ; preds = %1
  %14 = load i64, i64* @UB_LIBCMD_QUIT, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 0
  %17 = call i32 @lock_basic_unlock(i32* %16)
  %18 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %18, i32 0, i32 6
  %20 = call i32 @lock_basic_lock(i32* %19)
  %21 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = bitcast i64* %5 to i32*
  %25 = call i32 @tube_write_msg(i32 %23, i32* %24, i64 8, i32 0)
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %26, i32 0, i32 6
  %28 = call i32 @lock_basic_unlock(i32* %27)
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 4
  %31 = call i32 @lock_basic_lock(i32* %30)
  br label %32

32:                                               ; preds = %47, %13
  %33 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @tube_read_msg(i32 %35, i32** %3, i64* %4, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @context_serial_getcmd(i32* %39, i64 %40)
  %42 = load i64, i64* @UB_LIBCMD_QUIT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @free(i32* %45)
  br label %50

47:                                               ; preds = %38
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @free(i32* %48)
  br label %32

50:                                               ; preds = %44, %32
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %51, i32 0, i32 4
  %53 = call i32 @lock_basic_unlock(i32* %52)
  %54 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %54, i32 0, i32 0
  %56 = call i32 @lock_basic_lock(i32* %55)
  %57 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %62, i32 0, i32 0
  %64 = call i32 @lock_basic_unlock(i32* %63)
  %65 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ub_thread_join(i32 %67)
  br label %87

69:                                               ; preds = %50
  %70 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %70, i32 0, i32 0
  %72 = call i32 @lock_basic_unlock(i32* %71)
  %73 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @waitpid(i32 %75, i32* null, i32 0)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load i32, i32* @verbosity, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @strerror(i32 %82)
  %84 = call i32 @log_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %61
  br label %92

88:                                               ; preds = %1
  %89 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %90 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %89, i32 0, i32 0
  %91 = call i32 @lock_basic_unlock(i32* %90)
  br label %92

92:                                               ; preds = %88, %87
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @tube_write_msg(i32, i32*, i64, i32) #1

declare dso_local i64 @tube_read_msg(i32, i32**, i64*, i32) #1

declare dso_local i64 @context_serial_getcmd(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ub_thread_join(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
