; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_evbuffer_get_waste.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_evbuffer_get_waste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i64, i64, i64, %struct.evbuffer_chain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, i64*, i64*, i64*)* @evbuffer_get_waste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evbuffer_get_waste(%struct.evbuffer* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.evbuffer_chain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 0
  %16 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %15, align 8
  store %struct.evbuffer_chain* %16, %struct.evbuffer_chain** %9, align 8
  br label %17

17:                                               ; preds = %27, %4
  %18 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %19 = icmp ne %struct.evbuffer_chain* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %22 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %38

27:                                               ; preds = %25
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  %30 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %31 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %36 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %35, i32 0, i32 3
  %37 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %36, align 8
  store %struct.evbuffer_chain* %37, %struct.evbuffer_chain** %9, align 8
  br label %17

38:                                               ; preds = %25
  %39 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %40 = icmp ne %struct.evbuffer_chain* %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %45 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %10, align 8
  %49 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %50 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %12, align 8
  %54 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %55 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %54, i32 0, i32 3
  %56 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %55, align 8
  %57 = icmp ne %struct.evbuffer_chain* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %41
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %60 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %59, i32 0, i32 3
  %61 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %60, align 8
  %62 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %67 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %70 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %73 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = sub nsw i64 %68, %75
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %65, %58, %41
  %80 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %81 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %80, i32 0, i32 3
  %82 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %81, align 8
  store %struct.evbuffer_chain* %82, %struct.evbuffer_chain** %9, align 8
  br label %83

83:                                               ; preds = %79, %38
  br label %84

84:                                               ; preds = %137, %83
  %85 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %86 = icmp ne %struct.evbuffer_chain* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %89 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i1 [ false, %84 ], [ %91, %87 ]
  br i1 %93, label %94, label %141

94:                                               ; preds = %92
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  %97 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %98 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %10, align 8
  %102 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %103 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %11, align 8
  %107 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %108 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %113 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %112, i32 0, i32 3
  %114 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %113, align 8
  %115 = icmp ne %struct.evbuffer_chain* %114, null
  br i1 %115, label %116, label %137

116:                                              ; preds = %94
  %117 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %118 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %117, i32 0, i32 3
  %119 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %118, align 8
  %120 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %116
  %124 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %125 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %128 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %131 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = sub nsw i64 %126, %133
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %11, align 8
  br label %137

137:                                              ; preds = %123, %116, %94
  %138 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %139 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %138, i32 0, i32 3
  %140 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %139, align 8
  store %struct.evbuffer_chain* %140, %struct.evbuffer_chain** %9, align 8
  br label %84

141:                                              ; preds = %92
  br label %142

142:                                              ; preds = %145, %141
  %143 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %144 = icmp ne %struct.evbuffer_chain* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  %148 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %149 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %10, align 8
  br label %142

153:                                              ; preds = %142
  %154 = load i64, i64* %10, align 8
  %155 = load i64*, i64** %6, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i64*, i64** %7, align 8
  store i64 %156, i64* %157, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i64*, i64** %8, align 8
  store i64 %158, i64* %159, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
