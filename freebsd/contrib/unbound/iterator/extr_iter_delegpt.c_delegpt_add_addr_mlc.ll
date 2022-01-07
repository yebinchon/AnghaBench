; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_addr_mlc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_addr_mlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_addr*, i32 }
%struct.delegpt_addr = type { i32*, i64, i8*, i8*, i64, i32, i32, %struct.delegpt_addr*, i64, %struct.delegpt_addr* }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_addr_mlc(%struct.delegpt* %0, %struct.sockaddr_storage* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.delegpt*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %8, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %16 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @log_assert(i32 %17)
  %19 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt* %19, %struct.sockaddr_storage* %20, i32 %21)
  store %struct.delegpt_addr* %22, %struct.delegpt_addr** %14, align 8
  %23 = icmp ne %struct.delegpt_addr* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %30 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %36 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %35, i32 0, i32 2
  store i8* null, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  store i32 1, i32* %7, align 4
  br label %100

38:                                               ; preds = %6
  %39 = call i64 @malloc(i32 72)
  %40 = inttoptr i64 %39 to %struct.delegpt_addr*
  store %struct.delegpt_addr* %40, %struct.delegpt_addr** %14, align 8
  %41 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %42 = icmp ne %struct.delegpt_addr* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %100

44:                                               ; preds = %38
  %45 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %46 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %45, i32 0, i32 1
  %47 = load %struct.delegpt_addr*, %struct.delegpt_addr** %46, align 8
  %48 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %49 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %48, i32 0, i32 9
  store %struct.delegpt_addr* %47, %struct.delegpt_addr** %49, align 8
  %50 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %51 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %52 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %51, i32 0, i32 1
  store %struct.delegpt_addr* %50, %struct.delegpt_addr** %52, align 8
  %53 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %54 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %56 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %55, i32 0, i32 0
  %57 = load %struct.delegpt_addr*, %struct.delegpt_addr** %56, align 8
  %58 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %59 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %58, i32 0, i32 7
  store %struct.delegpt_addr* %57, %struct.delegpt_addr** %59, align 8
  %60 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %61 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %62 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %61, i32 0, i32 0
  store %struct.delegpt_addr* %60, %struct.delegpt_addr** %62, align 8
  %63 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %64 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %63, i32 0, i32 6
  %65 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @memcpy(i32* %64, %struct.sockaddr_storage* %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %70 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %72 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %75 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %78 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %80 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %44
  %84 = load i8*, i8** %13, align 8
  %85 = call i32* @strdup(i8* %84)
  %86 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %87 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %89 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %94 = call i32 @free(%struct.delegpt_addr* %93)
  store i32 0, i32* %7, align 4
  br label %100

95:                                               ; preds = %83
  br label %99

96:                                               ; preds = %44
  %97 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %98 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %96, %95
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %92, %43, %37
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt*, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.delegpt_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
