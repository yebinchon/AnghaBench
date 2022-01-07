; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_addr_in_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_addr_in_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_in_common(%struct.sockaddr_storage* %0, i32 %1, %struct.sockaddr_storage* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  br label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %33 = bitcast %struct.sockaddr_storage* %32 to %struct.sockaddr_in6*
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 0
  store i32* %34, i32** %15, align 8
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %36 = bitcast %struct.sockaddr_storage* %35 to %struct.sockaddr_in6*
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  store i32* %37, i32** %16, align 8
  store i32 16, i32* %13, align 4
  br label %45

38:                                               ; preds = %25
  %39 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %40 = bitcast %struct.sockaddr_storage* %39 to %struct.sockaddr_in*
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  store i32* %41, i32** %15, align 8
  %42 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %43 = bitcast %struct.sockaddr_storage* %42 to %struct.sockaddr_in*
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 0
  store i32* %44, i32** %16, align 8
  store i32 4, i32* %13, align 4
  br label %45

45:                                               ; preds = %38, %31
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %91, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 8
  store i32 %64, i32* %14, align 4
  br label %90

65:                                               ; preds = %50
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %70, %75
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @log_assert(i32 %77)
  br label %79

79:                                               ; preds = %84, %65
  %80 = load i32, i32* %17, align 4
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %17, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %79

89:                                               ; preds = %79
  br label %94

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %46

94:                                               ; preds = %89, %46
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* %14, align 4
  ret i32 %101
}

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
