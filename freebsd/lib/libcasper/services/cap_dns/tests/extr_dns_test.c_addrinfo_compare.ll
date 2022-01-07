; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/tests/extr_dns_test.c_addrinfo_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/tests/extr_dns_test.c_addrinfo_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64, i64, i64, i64, %struct.addrinfo*, i32*, i32 }

@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, %struct.addrinfo*)* @addrinfo_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrinfo_compare(%struct.addrinfo* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  %8 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %9 = icmp eq %struct.addrinfo* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %12 = icmp eq %struct.addrinfo* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %150

14:                                               ; preds = %10, %2
  %15 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %16 = icmp eq %struct.addrinfo* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %19 = icmp eq %struct.addrinfo* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %3, align 4
  br label %150

21:                                               ; preds = %17
  %22 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %22, %struct.addrinfo** %6, align 8
  %23 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %23, %struct.addrinfo** %7, align 8
  br label %24

24:                                               ; preds = %21, %149
  %25 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %148

32:                                               ; preds = %24
  %33 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %148

40:                                               ; preds = %32
  %41 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %148

48:                                               ; preds = %40
  %49 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %148

56:                                               ; preds = %48
  %57 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %148

64:                                               ; preds = %56
  %65 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @memcmp(i32 %67, i32 %70, i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %148

76:                                               ; preds = %64
  %77 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %91 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @strcmp(i32* %89, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %150

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %81, %76
  %98 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %150

108:                                              ; preds = %102, %97
  %109 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %150

119:                                              ; preds = %113, %108
  %120 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 5
  %122 = load %struct.addrinfo*, %struct.addrinfo** %121, align 8
  %123 = icmp eq %struct.addrinfo* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 5
  %127 = load %struct.addrinfo*, %struct.addrinfo** %126, align 8
  %128 = icmp eq %struct.addrinfo* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %150

130:                                              ; preds = %124, %119
  %131 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %131, i32 0, i32 5
  %133 = load %struct.addrinfo*, %struct.addrinfo** %132, align 8
  %134 = icmp eq %struct.addrinfo* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %136, i32 0, i32 5
  %138 = load %struct.addrinfo*, %struct.addrinfo** %137, align 8
  %139 = icmp eq %struct.addrinfo* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %130
  store i32 0, i32* %3, align 4
  br label %150

141:                                              ; preds = %135
  %142 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %142, i32 0, i32 5
  %144 = load %struct.addrinfo*, %struct.addrinfo** %143, align 8
  store %struct.addrinfo* %144, %struct.addrinfo** %6, align 8
  %145 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %146 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %145, i32 0, i32 5
  %147 = load %struct.addrinfo*, %struct.addrinfo** %146, align 8
  store %struct.addrinfo* %147, %struct.addrinfo** %7, align 8
  br label %149

148:                                              ; preds = %64, %56, %48, %40, %32, %24
  store i32 0, i32* %3, align 4
  br label %150

149:                                              ; preds = %141
  br label %24

150:                                              ; preds = %148, %140, %129, %118, %107, %95, %20, %13
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
