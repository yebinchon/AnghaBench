; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_stat_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_stat_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_fd_stat_put_args = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CLOUDABI_FDSTAT_FLAGS = common dso_local global i64 0, align 8
@CLOUDABI_FDFLAG_APPEND = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_NONBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_SYNC = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_DSYNC = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_RSYNC = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@CLOUDABI_FDSTAT_RIGHTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_fd_stat_put(%struct.thread* %0, %struct.cloudabi_sys_fd_stat_put_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_fd_stat_put_args*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_fd_stat_put_args* %1, %struct.cloudabi_sys_fd_stat_put_args** %5, align 8
  %10 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %5, align 8
  %11 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @copyin(i32 %12, %struct.TYPE_3__* %6, i32 12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %5, align 8
  %20 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CLOUDABI_FDSTAT_FLAGS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CLOUDABI_FDFLAG_APPEND, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @O_APPEND, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CLOUDABI_FDFLAG_NONBLOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CLOUDABI_FDFLAG_SYNC, align 4
  %48 = load i32, i32* @CLOUDABI_FDFLAG_DSYNC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CLOUDABI_FDFLAG_RSYNC, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @O_SYNC, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.thread*, %struct.thread** %4, align 8
  %60 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %5, align 8
  %61 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @F_SETFL, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @kern_fcntl(%struct.thread* %59, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %92

66:                                               ; preds = %18
  %67 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %5, align 8
  %68 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CLOUDABI_FDSTAT_RIGHTS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %74, %76
  %78 = call i32 @cloudabi_convert_rights(i32 %77, i32* %7)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %72
  %84 = load %struct.thread*, %struct.thread** %4, align 8
  %85 = load %struct.cloudabi_sys_fd_stat_put_args*, %struct.cloudabi_sys_fd_stat_put_args** %5, align 8
  %86 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_put_args, %struct.cloudabi_sys_fd_stat_put_args* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @kern_cap_rights_limit(%struct.thread* %84, i32 %87, i32* %7)
  store i32 %88, i32* %3, align 4
  br label %92

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %83, %81, %58, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @copyin(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @kern_fcntl(%struct.thread*, i32, i32, i32) #1

declare dso_local i32 @cloudabi_convert_rights(i32, i32*) #1

declare dso_local i32 @kern_cap_rights_limit(%struct.thread*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
