; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_addr*, i32 }
%struct.delegpt_addr = type { i32*, i64, i8*, i8*, i64, i32, i32, %struct.delegpt_addr*, i64, %struct.delegpt_addr* }
%struct.regional = type { i32 }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_addr(%struct.delegpt* %0, %struct.regional* %1, %struct.sockaddr_storage* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca %struct.regional*, align 8
  %11 = alloca %struct.sockaddr_storage*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %9, align 8
  store %struct.regional* %1, %struct.regional** %10, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %18 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @log_assert(i32 %22)
  %24 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt* %24, %struct.sockaddr_storage* %25, i32 %26)
  store %struct.delegpt_addr* %27, %struct.delegpt_addr** %16, align 8
  %28 = icmp ne %struct.delegpt_addr* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %7
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %35 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %41 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %40, i32 0, i32 2
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %36
  store i32 1, i32* %8, align 4
  br label %105

43:                                               ; preds = %7
  %44 = load %struct.regional*, %struct.regional** %10, align 8
  %45 = call i64 @regional_alloc(%struct.regional* %44, i32 72)
  %46 = inttoptr i64 %45 to %struct.delegpt_addr*
  store %struct.delegpt_addr* %46, %struct.delegpt_addr** %16, align 8
  %47 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %48 = icmp ne %struct.delegpt_addr* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %105

50:                                               ; preds = %43
  %51 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %52 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %51, i32 0, i32 1
  %53 = load %struct.delegpt_addr*, %struct.delegpt_addr** %52, align 8
  %54 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %55 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %54, i32 0, i32 9
  store %struct.delegpt_addr* %53, %struct.delegpt_addr** %55, align 8
  %56 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %57 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %58 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %57, i32 0, i32 1
  store %struct.delegpt_addr* %56, %struct.delegpt_addr** %58, align 8
  %59 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %60 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %62 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %61, i32 0, i32 0
  %63 = load %struct.delegpt_addr*, %struct.delegpt_addr** %62, align 8
  %64 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %65 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %64, i32 0, i32 7
  store %struct.delegpt_addr* %63, %struct.delegpt_addr** %65, align 8
  %66 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %67 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %68 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %67, i32 0, i32 0
  store %struct.delegpt_addr* %66, %struct.delegpt_addr** %68, align 8
  %69 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %70 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %69, i32 0, i32 6
  %71 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @memcpy(i32* %70, %struct.sockaddr_storage* %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %76 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %78 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %81 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %84 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %86 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %50
  %90 = load %struct.regional*, %struct.regional** %10, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i32* @regional_strdup(%struct.regional* %90, i8* %91)
  %93 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %94 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %96 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %105

100:                                              ; preds = %89
  br label %104

101:                                              ; preds = %50
  %102 = load %struct.delegpt_addr*, %struct.delegpt_addr** %16, align 8
  %103 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %100
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %99, %49, %42
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt*, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32* @regional_strdup(%struct.regional*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
