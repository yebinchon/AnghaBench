; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_normalize_blames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_normalize_blames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_chain = type { %struct.blame* }
%struct.blame = type { i64, %struct.blame*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_chain*, %struct.blame_chain*, i32*)* @normalize_blames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize_blames(%struct.blame_chain* %0, %struct.blame_chain* %1, i32* %2) #0 {
  %4 = alloca %struct.blame_chain*, align 8
  %5 = alloca %struct.blame_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.blame*, align 8
  %8 = alloca %struct.blame*, align 8
  %9 = alloca %struct.blame*, align 8
  %10 = alloca %struct.blame*, align 8
  %11 = alloca %struct.blame*, align 8
  %12 = alloca %struct.blame*, align 8
  store %struct.blame_chain* %0, %struct.blame_chain** %4, align 8
  store %struct.blame_chain* %1, %struct.blame_chain** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %14 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %13, i32 0, i32 0
  %15 = load %struct.blame*, %struct.blame** %14, align 8
  store %struct.blame* %15, %struct.blame** %7, align 8
  %16 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %17 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %16, i32 0, i32 0
  %18 = load %struct.blame*, %struct.blame** %17, align 8
  store %struct.blame* %18, %struct.blame** %8, align 8
  br label %19

19:                                               ; preds = %103, %3
  %20 = load %struct.blame*, %struct.blame** %7, align 8
  %21 = getelementptr inbounds %struct.blame, %struct.blame* %20, i32 0, i32 1
  %22 = load %struct.blame*, %struct.blame** %21, align 8
  %23 = icmp ne %struct.blame* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.blame*, %struct.blame** %8, align 8
  %26 = getelementptr inbounds %struct.blame, %struct.blame* %25, i32 0, i32 1
  %27 = load %struct.blame*, %struct.blame** %26, align 8
  %28 = icmp ne %struct.blame* %27, null
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %110

31:                                               ; preds = %29
  %32 = load %struct.blame*, %struct.blame** %7, align 8
  %33 = getelementptr inbounds %struct.blame, %struct.blame* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.blame*, %struct.blame** %8, align 8
  %36 = getelementptr inbounds %struct.blame, %struct.blame* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.blame*, %struct.blame** %7, align 8
  %42 = getelementptr inbounds %struct.blame, %struct.blame* %41, i32 0, i32 1
  %43 = load %struct.blame*, %struct.blame** %42, align 8
  %44 = getelementptr inbounds %struct.blame, %struct.blame* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.blame*, %struct.blame** %8, align 8
  %47 = getelementptr inbounds %struct.blame, %struct.blame* %46, i32 0, i32 1
  %48 = load %struct.blame*, %struct.blame** %47, align 8
  %49 = getelementptr inbounds %struct.blame, %struct.blame* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %45, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %31
  %53 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %54 = load %struct.blame*, %struct.blame** %8, align 8
  %55 = getelementptr inbounds %struct.blame, %struct.blame* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.blame*, %struct.blame** %7, align 8
  %58 = getelementptr inbounds %struct.blame, %struct.blame* %57, i32 0, i32 1
  %59 = load %struct.blame*, %struct.blame** %58, align 8
  %60 = getelementptr inbounds %struct.blame, %struct.blame* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.blame* @blame_create(%struct.blame_chain* %53, i32 %56, i64 %61)
  store %struct.blame* %62, %struct.blame** %9, align 8
  %63 = load %struct.blame*, %struct.blame** %8, align 8
  %64 = getelementptr inbounds %struct.blame, %struct.blame* %63, i32 0, i32 1
  %65 = load %struct.blame*, %struct.blame** %64, align 8
  %66 = load %struct.blame*, %struct.blame** %9, align 8
  %67 = getelementptr inbounds %struct.blame, %struct.blame* %66, i32 0, i32 1
  store %struct.blame* %65, %struct.blame** %67, align 8
  %68 = load %struct.blame*, %struct.blame** %9, align 8
  %69 = load %struct.blame*, %struct.blame** %8, align 8
  %70 = getelementptr inbounds %struct.blame, %struct.blame* %69, i32 0, i32 1
  store %struct.blame* %68, %struct.blame** %70, align 8
  br label %71

71:                                               ; preds = %52, %31
  %72 = load %struct.blame*, %struct.blame** %7, align 8
  %73 = getelementptr inbounds %struct.blame, %struct.blame* %72, i32 0, i32 1
  %74 = load %struct.blame*, %struct.blame** %73, align 8
  %75 = getelementptr inbounds %struct.blame, %struct.blame* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.blame*, %struct.blame** %8, align 8
  %78 = getelementptr inbounds %struct.blame, %struct.blame* %77, i32 0, i32 1
  %79 = load %struct.blame*, %struct.blame** %78, align 8
  %80 = getelementptr inbounds %struct.blame, %struct.blame* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %76, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %71
  %84 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %85 = load %struct.blame*, %struct.blame** %7, align 8
  %86 = getelementptr inbounds %struct.blame, %struct.blame* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.blame*, %struct.blame** %8, align 8
  %89 = getelementptr inbounds %struct.blame, %struct.blame* %88, i32 0, i32 1
  %90 = load %struct.blame*, %struct.blame** %89, align 8
  %91 = getelementptr inbounds %struct.blame, %struct.blame* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call %struct.blame* @blame_create(%struct.blame_chain* %84, i32 %87, i64 %92)
  store %struct.blame* %93, %struct.blame** %10, align 8
  %94 = load %struct.blame*, %struct.blame** %7, align 8
  %95 = getelementptr inbounds %struct.blame, %struct.blame* %94, i32 0, i32 1
  %96 = load %struct.blame*, %struct.blame** %95, align 8
  %97 = load %struct.blame*, %struct.blame** %10, align 8
  %98 = getelementptr inbounds %struct.blame, %struct.blame* %97, i32 0, i32 1
  store %struct.blame* %96, %struct.blame** %98, align 8
  %99 = load %struct.blame*, %struct.blame** %10, align 8
  %100 = load %struct.blame*, %struct.blame** %7, align 8
  %101 = getelementptr inbounds %struct.blame, %struct.blame* %100, i32 0, i32 1
  store %struct.blame* %99, %struct.blame** %101, align 8
  br label %102

102:                                              ; preds = %83, %71
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.blame*, %struct.blame** %7, align 8
  %105 = getelementptr inbounds %struct.blame, %struct.blame* %104, i32 0, i32 1
  %106 = load %struct.blame*, %struct.blame** %105, align 8
  store %struct.blame* %106, %struct.blame** %7, align 8
  %107 = load %struct.blame*, %struct.blame** %8, align 8
  %108 = getelementptr inbounds %struct.blame, %struct.blame* %107, i32 0, i32 1
  %109 = load %struct.blame*, %struct.blame** %108, align 8
  store %struct.blame* %109, %struct.blame** %8, align 8
  br label %19

110:                                              ; preds = %29
  br label %111

111:                                              ; preds = %116, %110
  %112 = load %struct.blame*, %struct.blame** %7, align 8
  %113 = getelementptr inbounds %struct.blame, %struct.blame* %112, i32 0, i32 1
  %114 = load %struct.blame*, %struct.blame** %113, align 8
  %115 = icmp ne %struct.blame* %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %111
  %117 = load %struct.blame_chain*, %struct.blame_chain** %5, align 8
  %118 = load %struct.blame*, %struct.blame** %8, align 8
  %119 = getelementptr inbounds %struct.blame, %struct.blame* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.blame*, %struct.blame** %7, align 8
  %122 = getelementptr inbounds %struct.blame, %struct.blame* %121, i32 0, i32 1
  %123 = load %struct.blame*, %struct.blame** %122, align 8
  %124 = getelementptr inbounds %struct.blame, %struct.blame* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call %struct.blame* @blame_create(%struct.blame_chain* %117, i32 %120, i64 %125)
  store %struct.blame* %126, %struct.blame** %11, align 8
  %127 = load %struct.blame*, %struct.blame** %11, align 8
  %128 = load %struct.blame*, %struct.blame** %8, align 8
  %129 = getelementptr inbounds %struct.blame, %struct.blame* %128, i32 0, i32 1
  store %struct.blame* %127, %struct.blame** %129, align 8
  %130 = load %struct.blame*, %struct.blame** %8, align 8
  %131 = getelementptr inbounds %struct.blame, %struct.blame* %130, i32 0, i32 1
  %132 = load %struct.blame*, %struct.blame** %131, align 8
  store %struct.blame* %132, %struct.blame** %8, align 8
  %133 = load %struct.blame*, %struct.blame** %7, align 8
  %134 = getelementptr inbounds %struct.blame, %struct.blame* %133, i32 0, i32 1
  %135 = load %struct.blame*, %struct.blame** %134, align 8
  store %struct.blame* %135, %struct.blame** %7, align 8
  br label %111

136:                                              ; preds = %111
  br label %137

137:                                              ; preds = %142, %136
  %138 = load %struct.blame*, %struct.blame** %8, align 8
  %139 = getelementptr inbounds %struct.blame, %struct.blame* %138, i32 0, i32 1
  %140 = load %struct.blame*, %struct.blame** %139, align 8
  %141 = icmp ne %struct.blame* %140, null
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %144 = load %struct.blame*, %struct.blame** %7, align 8
  %145 = getelementptr inbounds %struct.blame, %struct.blame* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.blame*, %struct.blame** %8, align 8
  %148 = getelementptr inbounds %struct.blame, %struct.blame* %147, i32 0, i32 1
  %149 = load %struct.blame*, %struct.blame** %148, align 8
  %150 = getelementptr inbounds %struct.blame, %struct.blame* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.blame* @blame_create(%struct.blame_chain* %143, i32 %146, i64 %151)
  store %struct.blame* %152, %struct.blame** %12, align 8
  %153 = load %struct.blame*, %struct.blame** %12, align 8
  %154 = load %struct.blame*, %struct.blame** %7, align 8
  %155 = getelementptr inbounds %struct.blame, %struct.blame* %154, i32 0, i32 1
  store %struct.blame* %153, %struct.blame** %155, align 8
  %156 = load %struct.blame*, %struct.blame** %7, align 8
  %157 = getelementptr inbounds %struct.blame, %struct.blame* %156, i32 0, i32 1
  %158 = load %struct.blame*, %struct.blame** %157, align 8
  store %struct.blame* %158, %struct.blame** %7, align 8
  %159 = load %struct.blame*, %struct.blame** %8, align 8
  %160 = getelementptr inbounds %struct.blame, %struct.blame* %159, i32 0, i32 1
  %161 = load %struct.blame*, %struct.blame** %160, align 8
  store %struct.blame* %161, %struct.blame** %8, align 8
  br label %137

162:                                              ; preds = %137
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.blame* @blame_create(%struct.blame_chain*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
