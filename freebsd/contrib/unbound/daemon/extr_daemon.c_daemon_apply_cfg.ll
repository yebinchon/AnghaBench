; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { %struct.TYPE_2__*, i32, %struct.config_file* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.config_file = type { i32, i32 }

@HASH_DEFAULT_STARTARRAY = common dso_local global i32 0, align 4
@msgreply_sizefunc = common dso_local global i32 0, align 4
@query_info_compare = common dso_local global i32 0, align 4
@query_entry_delete = common dso_local global i32 0, align 4
@reply_info_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"malloc failure updating config settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemon_apply_cfg(%struct.daemon* %0, %struct.config_file* %1) #0 {
  %3 = alloca %struct.daemon*, align 8
  %4 = alloca %struct.config_file*, align 8
  store %struct.daemon* %0, %struct.daemon** %3, align 8
  store %struct.config_file* %1, %struct.config_file** %4, align 8
  %5 = load %struct.config_file*, %struct.config_file** %4, align 8
  %6 = load %struct.daemon*, %struct.daemon** %3, align 8
  %7 = getelementptr inbounds %struct.daemon, %struct.daemon* %6, i32 0, i32 2
  store %struct.config_file* %5, %struct.config_file** %7, align 8
  %8 = load %struct.config_file*, %struct.config_file** %4, align 8
  %9 = call i32 @config_apply(%struct.config_file* %8)
  %10 = load %struct.daemon*, %struct.daemon** %3, align 8
  %11 = getelementptr inbounds %struct.daemon, %struct.daemon* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.config_file*, %struct.config_file** %4, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.config_file*, %struct.config_file** %4, align 8
  %19 = getelementptr inbounds %struct.config_file, %struct.config_file* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @slabhash_is_size(i32 %14, i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %2
  %24 = load %struct.daemon*, %struct.daemon** %3, align 8
  %25 = getelementptr inbounds %struct.daemon, %struct.daemon* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @slabhash_delete(i32 %28)
  %30 = load %struct.config_file*, %struct.config_file** %4, align 8
  %31 = getelementptr inbounds %struct.config_file, %struct.config_file* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HASH_DEFAULT_STARTARRAY, align 4
  %34 = load %struct.config_file*, %struct.config_file** %4, align 8
  %35 = getelementptr inbounds %struct.config_file, %struct.config_file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @msgreply_sizefunc, align 4
  %38 = load i32, i32* @query_info_compare, align 4
  %39 = load i32, i32* @query_entry_delete, align 4
  %40 = load i32, i32* @reply_info_delete, align 4
  %41 = call i32 @slabhash_create(i32 %32, i32 %33, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32* null)
  %42 = load %struct.daemon*, %struct.daemon** %3, align 8
  %43 = getelementptr inbounds %struct.daemon, %struct.daemon* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 4
  %46 = load %struct.daemon*, %struct.daemon** %3, align 8
  %47 = getelementptr inbounds %struct.daemon, %struct.daemon* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %23
  %53 = call i32 @fatal_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %23
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.daemon*, %struct.daemon** %3, align 8
  %57 = getelementptr inbounds %struct.daemon, %struct.daemon* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.config_file*, %struct.config_file** %4, align 8
  %62 = load %struct.daemon*, %struct.daemon** %3, align 8
  %63 = getelementptr inbounds %struct.daemon, %struct.daemon* %62, i32 0, i32 1
  %64 = call i32 @rrset_cache_adjust(i32 %60, %struct.config_file* %61, i32* %63)
  %65 = load %struct.daemon*, %struct.daemon** %3, align 8
  %66 = getelementptr inbounds %struct.daemon, %struct.daemon* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = call i32 @fatal_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %55
  %73 = load %struct.daemon*, %struct.daemon** %3, align 8
  %74 = getelementptr inbounds %struct.daemon, %struct.daemon* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.config_file*, %struct.config_file** %4, align 8
  %79 = call i32 @infra_adjust(i32 %77, %struct.config_file* %78)
  %80 = load %struct.daemon*, %struct.daemon** %3, align 8
  %81 = getelementptr inbounds %struct.daemon, %struct.daemon* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = icmp eq i32 %79, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 @fatal_exit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %72
  ret void
}

declare dso_local i32 @config_apply(%struct.config_file*) #1

declare dso_local i32 @slabhash_is_size(i32, i32, i32) #1

declare dso_local i32 @slabhash_delete(i32) #1

declare dso_local i32 @slabhash_create(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @rrset_cache_adjust(i32, %struct.config_file*, i32*) #1

declare dso_local i32 @infra_adjust(i32, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
