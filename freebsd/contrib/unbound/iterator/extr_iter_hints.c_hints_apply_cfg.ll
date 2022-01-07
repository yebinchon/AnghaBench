; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.config_file = type { i32, i32 }
%struct.delegpt = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no config, using builtin root hints.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hints_apply_cfg(%struct.iter_hints* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_hints*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.delegpt*, align 8
  store %struct.iter_hints* %0, %struct.iter_hints** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %7 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %8 = call i32 @hints_del_tree(%struct.iter_hints* %7)
  %9 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %10 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %9, i32 0, i32 0
  %11 = call i32 @name_tree_init(i32* %10)
  %12 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %13 = load %struct.config_file*, %struct.config_file** %5, align 8
  %14 = call i32 @read_root_hints_list(%struct.iter_hints* %12, %struct.config_file* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %19 = load %struct.config_file*, %struct.config_file** %5, align 8
  %20 = call i32 @read_stubs(%struct.iter_hints* %18, %struct.config_file* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %25 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %26 = call i32 @hints_lookup_root(%struct.iter_hints* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %23
  %29 = load %struct.config_file*, %struct.config_file** %5, align 8
  %30 = getelementptr inbounds %struct.config_file, %struct.config_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.config_file*, %struct.config_file** %5, align 8
  %33 = getelementptr inbounds %struct.config_file, %struct.config_file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.delegpt* @compile_time_root_prime(i32 %31, i32 %34)
  store %struct.delegpt* %35, %struct.delegpt** %6, align 8
  %36 = load i32, i32* @VERB_ALGO, align 4
  %37 = call i32 @verbose(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %39 = icmp ne %struct.delegpt* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %53

41:                                               ; preds = %28
  %42 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %43 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %44 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %45 = call i32 @hints_insert(%struct.iter_hints* %42, i32 %43, %struct.delegpt* %44, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %53

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %51 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %50, i32 0, i32 0
  %52 = call i32 @name_tree_init_parents(i32* %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %47, %40, %22, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @hints_del_tree(%struct.iter_hints*) #1

declare dso_local i32 @name_tree_init(i32*) #1

declare dso_local i32 @read_root_hints_list(%struct.iter_hints*, %struct.config_file*) #1

declare dso_local i32 @read_stubs(%struct.iter_hints*, %struct.config_file*) #1

declare dso_local i32 @hints_lookup_root(%struct.iter_hints*, i32) #1

declare dso_local %struct.delegpt* @compile_time_root_prime(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @hints_insert(%struct.iter_hints*, i32, %struct.delegpt*, i32) #1

declare dso_local i32 @name_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
