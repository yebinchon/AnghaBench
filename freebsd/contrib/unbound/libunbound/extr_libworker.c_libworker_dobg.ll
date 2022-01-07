; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_dobg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_dobg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { i32, %struct.ub_ctx*, i32, i64, i32 }
%struct.ub_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"libunbound bg worker init failed, nomem\00", align 1
@libworker_handle_control_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"libunbound bg worker init failed, no bglisten\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"libunbound bg worker init failed, no bgwrite\00", align 1
@UB_LIBCMD_QUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @libworker_dobg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @libworker_dobg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.libworker*, align 8
  %6 = alloca %struct.ub_ctx*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.libworker*
  store %struct.libworker* %8, %struct.libworker** %5, align 8
  %9 = load %struct.libworker*, %struct.libworker** %5, align 8
  %10 = icmp ne %struct.libworker* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.libworker*, %struct.libworker** %5, align 8
  %15 = getelementptr inbounds %struct.libworker, %struct.libworker* %14, i32 0, i32 1
  %16 = load %struct.ub_ctx*, %struct.ub_ctx** %15, align 8
  store %struct.ub_ctx* %16, %struct.ub_ctx** %6, align 8
  %17 = load %struct.libworker*, %struct.libworker** %5, align 8
  %18 = getelementptr inbounds %struct.libworker, %struct.libworker* %17, i32 0, i32 4
  %19 = call i32 @log_thread_set(i32* %18)
  %20 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.libworker*, %struct.libworker** %5, align 8
  %24 = getelementptr inbounds %struct.libworker, %struct.libworker* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @libworker_handle_control_cmd, align 4
  %27 = load %struct.libworker*, %struct.libworker** %5, align 8
  %28 = call i32 @tube_setup_bg_listen(i32 %22, i32 %25, i32 %26, %struct.libworker* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %13
  %31 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %69

32:                                               ; preds = %13
  %33 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.libworker*, %struct.libworker** %5, align 8
  %37 = getelementptr inbounds %struct.libworker, %struct.libworker* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @tube_setup_bg_write(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = call i32 @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %69

43:                                               ; preds = %32
  %44 = load %struct.libworker*, %struct.libworker** %5, align 8
  %45 = getelementptr inbounds %struct.libworker, %struct.libworker* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @comm_base_dispatch(i32 %46)
  %48 = load i32, i32* @UB_LIBCMD_QUIT, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.libworker*, %struct.libworker** %5, align 8
  %50 = getelementptr inbounds %struct.libworker, %struct.libworker* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.libworker*, %struct.libworker** %5, align 8
  %52 = getelementptr inbounds %struct.libworker, %struct.libworker* %51, i32 0, i32 1
  %53 = load %struct.ub_ctx*, %struct.ub_ctx** %52, align 8
  %54 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tube_remove_bg_listen(i32 %55)
  %57 = load %struct.libworker*, %struct.libworker** %5, align 8
  %58 = getelementptr inbounds %struct.libworker, %struct.libworker* %57, i32 0, i32 1
  %59 = load %struct.ub_ctx*, %struct.ub_ctx** %58, align 8
  %60 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tube_remove_bg_write(i32 %61)
  %63 = load %struct.libworker*, %struct.libworker** %5, align 8
  %64 = call i32 @libworker_delete(%struct.libworker* %63)
  %65 = load %struct.ub_ctx*, %struct.ub_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tube_write_msg(i32 %67, i32* %4, i32 4, i32 0)
  store i8* null, i8** %2, align 8
  br label %69

69:                                               ; preds = %43, %41, %30, %11
  %70 = load i8*, i8** %2, align 8
  ret i8* %70
}

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @log_thread_set(i32*) #1

declare dso_local i32 @tube_setup_bg_listen(i32, i32, i32, %struct.libworker*) #1

declare dso_local i32 @tube_setup_bg_write(i32, i32) #1

declare dso_local i32 @comm_base_dispatch(i32) #1

declare dso_local i32 @tube_remove_bg_listen(i32) #1

declare dso_local i32 @tube_remove_bg_write(i32) #1

declare dso_local i32 @libworker_delete(%struct.libworker*) #1

declare dso_local i32 @tube_write_msg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
