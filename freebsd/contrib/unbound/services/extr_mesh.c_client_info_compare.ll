; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_client_info_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_client_info_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.respip_client_info = type { i64, i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.respip_client_info*, %struct.respip_client_info*)* @client_info_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_info_compare(%struct.respip_client_info* %0, %struct.respip_client_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.respip_client_info*, align 8
  %5 = alloca %struct.respip_client_info*, align 8
  %6 = alloca i32, align 4
  store %struct.respip_client_info* %0, %struct.respip_client_info** %4, align 8
  store %struct.respip_client_info* %1, %struct.respip_client_info** %5, align 8
  %7 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %8 = icmp ne %struct.respip_client_info* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %11 = icmp ne %struct.respip_client_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %148

13:                                               ; preds = %9, %2
  %14 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %15 = icmp ne %struct.respip_client_info* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %18 = icmp ne %struct.respip_client_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %148

20:                                               ; preds = %16, %13
  %21 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %22 = icmp ne %struct.respip_client_info* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %25 = icmp ne %struct.respip_client_info* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %148

27:                                               ; preds = %23, %20
  %28 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %29 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %32 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %37 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %40 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 -1, i32 1
  store i32 %44, i32* %3, align 4
  br label %148

45:                                               ; preds = %27
  %46 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %47 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %50 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %53 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memcmp(i32 %48, i32 %51, i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %148

60:                                               ; preds = %45
  %61 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %62 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %65 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %70 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %73 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 -1, i32 1
  store i32 %77, i32* %3, align 4
  br label %148

78:                                               ; preds = %60
  %79 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %80 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %83 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %86 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcmp(i32 %81, i32 %84, i64 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %148

93:                                               ; preds = %78
  %94 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %95 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %98 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %103 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %106 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 -1, i32 1
  store i32 %110, i32* %3, align 4
  br label %148

111:                                              ; preds = %93
  %112 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %113 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %116 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %111
  %120 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %121 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %124 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 -1, i32 1
  store i32 %128, i32* %3, align 4
  br label %148

129:                                              ; preds = %111
  %130 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %131 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %134 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %129
  %138 = load %struct.respip_client_info*, %struct.respip_client_info** %4, align 8
  %139 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.respip_client_info*, %struct.respip_client_info** %5, align 8
  %142 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %140, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 -1, i32 1
  store i32 %146, i32* %3, align 4
  br label %148

147:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %137, %119, %101, %91, %68, %58, %35, %26, %19, %12
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
