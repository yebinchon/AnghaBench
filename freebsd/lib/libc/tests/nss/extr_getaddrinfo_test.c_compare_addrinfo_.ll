; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_compare_addrinfo_.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_compare_addrinfo_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64, i64, i64, i64, %struct.addrinfo*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, %struct.addrinfo*)* @compare_addrinfo_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_addrinfo_(%struct.addrinfo* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  %6 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %7 = icmp eq %struct.addrinfo* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %10 = icmp eq %struct.addrinfo* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %141

12:                                               ; preds = %8
  %13 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %88, label %20

20:                                               ; preds = %12
  %21 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %88, label %28

28:                                               ; preds = %20
  %29 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %88, label %36

36:                                               ; preds = %28
  %37 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %88, label %44

44:                                               ; preds = %36
  %45 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %88, label %52

52:                                               ; preds = %44
  %53 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %59 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57, %52
  %63 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %65, %68
  br i1 %69, label %88, label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75, %70
  %81 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %62, %44, %36, %28, %20, %12
  store i32 -1, i32* %3, align 4
  br label %141

89:                                               ; preds = %80, %75
  %90 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %91 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @strcmp(i32* %97, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %141

104:                                              ; preds = %94, %89
  %105 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @memcmp(i32* %112, i32* %115, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 -1, i32* %3, align 4
  br label %141

122:                                              ; preds = %109, %104
  %123 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 5
  %125 = load %struct.addrinfo*, %struct.addrinfo** %124, align 8
  %126 = icmp eq %struct.addrinfo* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i32 0, i32 5
  %130 = load %struct.addrinfo*, %struct.addrinfo** %129, align 8
  %131 = icmp eq %struct.addrinfo* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %141

133:                                              ; preds = %127, %122
  %134 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %134, i32 0, i32 5
  %136 = load %struct.addrinfo*, %struct.addrinfo** %135, align 8
  %137 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 5
  %139 = load %struct.addrinfo*, %struct.addrinfo** %138, align 8
  %140 = call i32 @compare_addrinfo_(%struct.addrinfo* %136, %struct.addrinfo* %139)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %133, %132, %121, %103, %88, %11
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
