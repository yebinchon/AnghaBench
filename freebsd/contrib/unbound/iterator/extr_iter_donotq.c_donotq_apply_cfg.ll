; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_donotq.c_donotq_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_donotq.c_donotq_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_donotq = type { i32, i32 }
%struct.config_file = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"127.0.0.0/8\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @donotq_apply_cfg(%struct.iter_donotq* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_donotq*, align 8
  %5 = alloca %struct.config_file*, align 8
  store %struct.iter_donotq* %0, %struct.iter_donotq** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %6 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %7 = getelementptr inbounds %struct.iter_donotq, %struct.iter_donotq* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regional_free_all(i32 %8)
  %10 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %11 = getelementptr inbounds %struct.iter_donotq, %struct.iter_donotq* %10, i32 0, i32 0
  %12 = call i32 @addr_tree_init(i32* %11)
  %13 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %14 = load %struct.config_file*, %struct.config_file** %5, align 8
  %15 = call i32 @read_donotq(%struct.iter_donotq* %13, %struct.config_file* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.config_file*, %struct.config_file** %5, align 8
  %20 = getelementptr inbounds %struct.config_file, %struct.config_file* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %25 = call i32 @donotq_str_cfg(%struct.iter_donotq* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %44

28:                                               ; preds = %23
  %29 = load %struct.config_file*, %struct.config_file** %5, align 8
  %30 = getelementptr inbounds %struct.config_file, %struct.config_file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %35 = call i32 @donotq_str_cfg(%struct.iter_donotq* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %44

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.iter_donotq*, %struct.iter_donotq** %4, align 8
  %42 = getelementptr inbounds %struct.iter_donotq, %struct.iter_donotq* %41, i32 0, i32 0
  %43 = call i32 @addr_tree_init_parents(i32* %42)
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %37, %27, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @addr_tree_init(i32*) #1

declare dso_local i32 @read_donotq(%struct.iter_donotq*, %struct.config_file*) #1

declare dso_local i32 @donotq_str_cfg(%struct.iter_donotq*, i8*) #1

declare dso_local i32 @addr_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
