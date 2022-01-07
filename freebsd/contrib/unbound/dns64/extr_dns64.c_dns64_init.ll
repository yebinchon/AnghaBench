; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i8** }
%struct.dns64_env = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"dns64: could not apply configuration settings.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns64_init(%struct.module_env* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns64_env*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 @calloc(i32 1, i32 4)
  %8 = inttoptr i64 %7 to %struct.dns64_env*
  store %struct.dns64_env* %8, %struct.dns64_env** %6, align 8
  %9 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %10 = icmp ne %struct.dns64_env* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %15 = bitcast %struct.dns64_env* %14 to i8*
  %16 = load %struct.module_env*, %struct.module_env** %4, align 8
  %17 = getelementptr inbounds %struct.module_env, %struct.module_env* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %15, i8** %21, align 8
  %22 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %23 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %22, i32 0, i32 0
  %24 = call i32 @name_tree_init(i32* %23)
  %25 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %26 = load %struct.module_env*, %struct.module_env** %4, align 8
  %27 = getelementptr inbounds %struct.module_env, %struct.module_env* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dns64_apply_cfg(%struct.dns64_env* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %13
  %32 = call i32 @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @name_tree_init(i32*) #1

declare dso_local i32 @dns64_apply_cfg(%struct.dns64_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
