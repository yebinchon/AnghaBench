; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.regional = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.delegpt_ns = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_target(%struct.delegpt* %0, %struct.regional* %1, i32* %2, i64 %3, %struct.sockaddr_storage* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.delegpt*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.delegpt_ns*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %10, align 8
  store %struct.regional* %1, %struct.regional** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.sockaddr_storage* %4, %struct.sockaddr_storage** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i64, i64* %13, align 8
  %22 = call %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt* %19, i32* %20, i64 %21)
  store %struct.delegpt_ns* %22, %struct.delegpt_ns** %18, align 8
  %23 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %24 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  %31 = icmp ne %struct.delegpt_ns* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %69

33:                                               ; preds = %8
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %33
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  %43 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  %46 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  %49 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  %54 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.delegpt_ns*, %struct.delegpt_ns** %18, align 8
  %59 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52, %47
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %63 = load %struct.regional*, %struct.regional** %11, align 8
  %64 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @delegpt_add_addr(%struct.delegpt* %62, %struct.regional* %63, %struct.sockaddr_storage* %64, i32 %65, i32 %66, i32 %67, i32* null)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %61, %32
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt*, i32*, i64) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @delegpt_add_addr(%struct.delegpt*, %struct.regional*, %struct.sockaddr_storage*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
