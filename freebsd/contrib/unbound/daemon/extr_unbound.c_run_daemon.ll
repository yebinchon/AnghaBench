; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_run_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_unbound.c_run_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i32, i32 }
%struct.daemon = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"alloc failure\00", align 1
@VERB_OPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Restart of %s.\00", align 1
@PACKAGE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Start of %s.\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not alloc config defaults\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [124 x i8] c"Could not read config file: %s. Maybe try unbound -dd, it stays on the commandline to see more errors, or unbound-checkconf\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Continuing with default config settings\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"could not open ports\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"cleanup.\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Exit cleanup.\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i32)* @run_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_daemon(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.config_file*, align 8
  %12 = alloca %struct.daemon*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.config_file* null, %struct.config_file** %11, align 8
  store %struct.daemon* null, %struct.daemon** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = call %struct.daemon* (...) @daemon_init()
  store %struct.daemon* %15, %struct.daemon** %12, align 8
  %16 = icmp ne %struct.daemon* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %5
  br label %20

20:                                               ; preds = %100, %19
  %21 = load %struct.daemon*, %struct.daemon** %12, align 8
  %22 = getelementptr inbounds %struct.daemon, %struct.daemon* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %109

26:                                               ; preds = %20
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @VERB_OPS, align 4
  %31 = load i32, i32* @PACKAGE_STRING, align 4
  %32 = call i32 (i32, i8*, ...) @verbose(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @VERB_OPS, align 4
  %35 = load i32, i32* @PACKAGE_STRING, align 4
  %36 = call i32 (i32, i8*, ...) @verbose(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = call %struct.config_file* (...) @config_create()
  store %struct.config_file* %38, %struct.config_file** %11, align 8
  %39 = icmp ne %struct.config_file* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.config_file*, %struct.config_file** %11, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.daemon*, %struct.daemon** %12, align 8
  %46 = getelementptr inbounds %struct.daemon, %struct.daemon* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @config_read(%struct.config_file* %43, i8* %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOENT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = call i32 @log_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %42
  %60 = load %struct.daemon*, %struct.daemon** %12, align 8
  %61 = load %struct.config_file*, %struct.config_file** %11, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @apply_settings(%struct.daemon* %60, %struct.config_file* %61, i32 %62, i32 %63, i8* %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load %struct.config_file*, %struct.config_file** %11, align 8
  %70 = call i32 @config_lookup_uid(%struct.config_file* %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.daemon*, %struct.daemon** %12, align 8
  %73 = call i32 @daemon_open_shared_ports(%struct.daemon* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.daemon*, %struct.daemon** %12, align 8
  %82 = load %struct.config_file*, %struct.config_file** %11, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @perform_setup(%struct.daemon* %81, %struct.config_file* %82, i32 %83, i8** %6, i32 %84)
  store i32 1, i32* %13, align 4
  br label %100

86:                                               ; preds = %77
  %87 = load %struct.config_file*, %struct.config_file** %11, align 8
  %88 = getelementptr inbounds %struct.config_file, %struct.config_file* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.config_file*, %struct.config_file** %11, align 8
  %93 = getelementptr inbounds %struct.config_file, %struct.config_file* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.config_file*, %struct.config_file** %11, align 8
  %96 = getelementptr inbounds %struct.config_file, %struct.config_file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @log_init(i32 %94, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %91, %86
  br label %100

100:                                              ; preds = %99, %80
  %101 = load %struct.daemon*, %struct.daemon** %12, align 8
  %102 = call i32 @daemon_fork(%struct.daemon* %101)
  %103 = load i32, i32* @VERB_ALGO, align 4
  %104 = call i32 (i32, i8*, ...) @verbose(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %105 = load %struct.daemon*, %struct.daemon** %12, align 8
  %106 = call i32 @daemon_cleanup(%struct.daemon* %105)
  %107 = load %struct.config_file*, %struct.config_file** %11, align 8
  %108 = call i32 @config_delete(%struct.config_file* %107)
  br label %20

109:                                              ; preds = %20
  %110 = load i32, i32* @VERB_ALGO, align 4
  %111 = call i32 (i32, i8*, ...) @verbose(i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %112 = load %struct.daemon*, %struct.daemon** %12, align 8
  %113 = getelementptr inbounds %struct.daemon, %struct.daemon* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %109
  %117 = load %struct.daemon*, %struct.daemon** %12, align 8
  %118 = getelementptr inbounds %struct.daemon, %struct.daemon* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @O_WRONLY, align 4
  %121 = load i32, i32* @O_TRUNC, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @open(i64 %119, i32 %122, i32 420)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @close(i32 %127)
  br label %129

129:                                              ; preds = %126, %116
  %130 = load %struct.daemon*, %struct.daemon** %12, align 8
  %131 = getelementptr inbounds %struct.daemon, %struct.daemon* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @unlink(i64 %132)
  br label %134

134:                                              ; preds = %129, %109
  %135 = load %struct.daemon*, %struct.daemon** %12, align 8
  %136 = call i32 @daemon_delete(%struct.daemon* %135)
  ret void
}

declare dso_local %struct.daemon* @daemon_init(...) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local %struct.config_file* @config_create(...) #1

declare dso_local i32 @config_read(%struct.config_file*, i8*, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @apply_settings(%struct.daemon*, %struct.config_file*, i32, i32, i8*) #1

declare dso_local i32 @config_lookup_uid(%struct.config_file*) #1

declare dso_local i32 @daemon_open_shared_ports(%struct.daemon*) #1

declare dso_local i32 @perform_setup(%struct.daemon*, %struct.config_file*, i32, i8**, i32) #1

declare dso_local i32 @log_init(i32, i32, i32) #1

declare dso_local i32 @daemon_fork(%struct.daemon*) #1

declare dso_local i32 @daemon_cleanup(%struct.daemon*) #1

declare dso_local i32 @config_delete(%struct.config_file*) #1

declare dso_local i32 @open(i64, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @daemon_delete(%struct.daemon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
