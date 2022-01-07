; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32** }
%struct.dns64_env = type { i32 }

@free_ignore_aaaa_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns64_deinit(%struct.module_env* %0, i32 %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dns64_env*, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.module_env*, %struct.module_env** %3, align 8
  %7 = icmp ne %struct.module_env* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %40

9:                                                ; preds = %2
  %10 = load %struct.module_env*, %struct.module_env** %3, align 8
  %11 = getelementptr inbounds %struct.module_env, %struct.module_env* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.dns64_env*
  store %struct.dns64_env* %17, %struct.dns64_env** %5, align 8
  %18 = load %struct.dns64_env*, %struct.dns64_env** %5, align 8
  %19 = icmp ne %struct.dns64_env* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.dns64_env*, %struct.dns64_env** %5, align 8
  %22 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %21, i32 0, i32 0
  %23 = load i32, i32* @free_ignore_aaaa_node, align 4
  %24 = call i32 @traverse_postorder(i32* %22, i32 %23, i32* null)
  br label %25

25:                                               ; preds = %20, %9
  %26 = load %struct.module_env*, %struct.module_env** %3, align 8
  %27 = getelementptr inbounds %struct.module_env, %struct.module_env* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @free(i32* %32)
  %34 = load %struct.module_env*, %struct.module_env** %3, align 8
  %35 = getelementptr inbounds %struct.module_env, %struct.module_env* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @traverse_postorder(i32*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
