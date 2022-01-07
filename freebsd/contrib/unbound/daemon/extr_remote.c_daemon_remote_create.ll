; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32, i32, i32* }
%struct.config_file = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { %struct.config_strlist* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }

@.str = private unnamed_addr constant [38 x i8] c"out of memory in daemon_remote_create\00", align 1
@.str.1 = private unnamed_addr constant [143 x i8] c"control-interface %s is not using TLS, but plain transfer, because first control-interface in config file is a local socket (starts with a /).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.daemon_remote* @daemon_remote_create(%struct.config_file* %0) #0 {
  %2 = alloca %struct.daemon_remote*, align 8
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca %struct.daemon_remote*, align 8
  %5 = alloca %struct.config_strlist*, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  %6 = call i64 @calloc(i32 1, i32 16)
  %7 = inttoptr i64 %6 to %struct.daemon_remote*
  store %struct.daemon_remote* %7, %struct.daemon_remote** %4, align 8
  %8 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %9 = icmp ne %struct.daemon_remote* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.daemon_remote* null, %struct.daemon_remote** %2, align 8
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %14 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %13, i32 0, i32 0
  store i32 10, i32* %14, align 8
  %15 = load %struct.config_file*, %struct.config_file** %3, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %21 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  store %struct.daemon_remote* %22, %struct.daemon_remote** %2, align 8
  br label %86

23:                                               ; preds = %12
  %24 = load %struct.config_file*, %struct.config_file** %3, align 8
  %25 = call i64 @options_remote_is_address(%struct.config_file* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.config_file*, %struct.config_file** %3, align 8
  %29 = getelementptr inbounds %struct.config_file, %struct.config_file* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %34 = load %struct.config_file*, %struct.config_file** %3, align 8
  %35 = call i32 @remote_setup_ctx(%struct.daemon_remote* %33, %struct.config_file* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %39 = call i32 @daemon_remote_delete(%struct.daemon_remote* %38)
  store %struct.daemon_remote* null, %struct.daemon_remote** %2, align 8
  br label %86

40:                                               ; preds = %32
  %41 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %42 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %84

43:                                               ; preds = %27, %23
  %44 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %45 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %47 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.config_file*, %struct.config_file** %3, align 8
  %49 = call i64 @options_remote_is_address(%struct.config_file* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %43
  %52 = load %struct.config_file*, %struct.config_file** %3, align 8
  %53 = getelementptr inbounds %struct.config_file, %struct.config_file* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.config_strlist*, %struct.config_strlist** %54, align 8
  store %struct.config_strlist* %55, %struct.config_strlist** %5, align 8
  br label %56

56:                                               ; preds = %78, %51
  %57 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %58 = icmp ne %struct.config_strlist* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %61 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %66 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 47
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %74 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @log_warn(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %72, %64, %59
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %80 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %79, i32 0, i32 1
  %81 = load %struct.config_strlist*, %struct.config_strlist** %80, align 8
  store %struct.config_strlist* %81, %struct.config_strlist** %5, align 8
  br label %56

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %43
  br label %84

84:                                               ; preds = %83, %40
  %85 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  store %struct.daemon_remote* %85, %struct.daemon_remote** %2, align 8
  br label %86

86:                                               ; preds = %84, %37, %19, %10
  %87 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  ret %struct.daemon_remote* %87
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @options_remote_is_address(%struct.config_file*) #1

declare dso_local i32 @remote_setup_ctx(%struct.daemon_remote*, %struct.config_file*) #1

declare dso_local i32 @daemon_remote_delete(%struct.daemon_remote*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
