; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }
%struct.module_func_block = type { i32 (%struct.module_env*, i32)*, i32, i32 (%struct.module_env.0*, i32)* }
%struct.module_env = type opaque
%struct.module_env.0 = type opaque
%struct.module_env.1 = type { i32, i32, %struct.config_file* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad config for %s module\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*, %struct.module_func_block*)* @check_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mod(%struct.config_file* %0, %struct.module_func_block* %1) #0 {
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca %struct.module_func_block*, align 8
  %5 = alloca %struct.module_env.1, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  store %struct.module_func_block* %1, %struct.module_func_block** %4, align 8
  %6 = call i32 @memset(%struct.module_env.1* %5, i32 0, i32 16)
  %7 = load %struct.config_file*, %struct.config_file** %3, align 8
  %8 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 2
  store %struct.config_file* %7, %struct.config_file** %8, align 8
  %9 = call i32 (...) @regional_create()
  %10 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @BUFSIZ, align 4
  %12 = call i32 @sldns_buffer_new(i32 %11)
  %13 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %2
  %22 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = call i32 @edns_known_options_init(%struct.module_env.1* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.module_func_block*, %struct.module_func_block** %4, align 8
  %30 = getelementptr inbounds %struct.module_func_block, %struct.module_func_block* %29, i32 0, i32 2
  %31 = load i32 (%struct.module_env.0*, i32)*, i32 (%struct.module_env.0*, i32)** %30, align 8
  %32 = bitcast %struct.module_env.1* %5 to %struct.module_env.0*
  %33 = call i32 %31(%struct.module_env.0* %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.module_func_block*, %struct.module_func_block** %4, align 8
  %37 = getelementptr inbounds %struct.module_func_block, %struct.module_func_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.module_func_block*, %struct.module_func_block** %4, align 8
  %42 = getelementptr inbounds %struct.module_func_block, %struct.module_func_block* %41, i32 0, i32 0
  %43 = load i32 (%struct.module_env*, i32)*, i32 (%struct.module_env*, i32)** %42, align 8
  %44 = bitcast %struct.module_env.1* %5 to %struct.module_env*
  %45 = call i32 %43(%struct.module_env* %44, i32 0)
  %46 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sldns_buffer_free(i32 %47)
  %49 = getelementptr inbounds %struct.module_env.1, %struct.module_env.1* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regional_destroy(i32 %50)
  %52 = call i32 @edns_known_options_delete(%struct.module_env.1* %5)
  ret void
}

declare dso_local i32 @memset(%struct.module_env.1*, i32, i32) #1

declare dso_local i32 @regional_create(...) #1

declare dso_local i32 @sldns_buffer_new(i32) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @edns_known_options_init(%struct.module_env.1*) #1

declare dso_local i32 @sldns_buffer_free(i32) #1

declare dso_local i32 @regional_destroy(i32) #1

declare dso_local i32 @edns_known_options_delete(%struct.module_env.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
