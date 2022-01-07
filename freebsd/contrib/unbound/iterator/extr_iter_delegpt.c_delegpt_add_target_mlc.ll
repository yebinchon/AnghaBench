; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_target_mlc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_target_mlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.delegpt_ns = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_target_mlc(%struct.delegpt* %0, i32* %1, i64 %2, %struct.sockaddr_storage* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.delegpt_ns*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt* %17, i32* %18, i64 %19)
  store %struct.delegpt_ns* %20, %struct.delegpt_ns** %16, align 8
  %21 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %22 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @log_assert(i32 %23)
  %25 = load %struct.delegpt_ns*, %struct.delegpt_ns** %16, align 8
  %26 = icmp ne %struct.delegpt_ns* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %63

28:                                               ; preds = %7
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.delegpt_ns*, %struct.delegpt_ns** %16, align 8
  %38 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.delegpt_ns*, %struct.delegpt_ns** %16, align 8
  %41 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.delegpt_ns*, %struct.delegpt_ns** %16, align 8
  %44 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.delegpt_ns*, %struct.delegpt_ns** %16, align 8
  %49 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.delegpt_ns*, %struct.delegpt_ns** %16, align 8
  %54 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %47, %42
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %58 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @delegpt_add_addr_mlc(%struct.delegpt* %57, %struct.sockaddr_storage* %58, i32 %59, i32 %60, i32 %61, i32* null)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %56, %27
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt*, i32*, i64) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @delegpt_add_addr_mlc(%struct.delegpt*, %struct.sockaddr_storage*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
