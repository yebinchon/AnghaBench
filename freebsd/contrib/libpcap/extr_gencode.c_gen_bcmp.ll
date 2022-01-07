; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_bcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_bcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@BPF_W = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32, i32, i32, i32*)* @gen_bcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_bcmp(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca %struct.block*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store %struct.block* null, %struct.block** %11, align 8
  br label %17

17:                                               ; preds = %59, %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 24
  %30 = load i32*, i32** %13, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 4
  %50 = load i32, i32* @BPF_W, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call %struct.block* @gen_cmp(i32* %44, i32 %45, i32 %49, i32 %50, i32 %51)
  store %struct.block* %52, %struct.block** %12, align 8
  %53 = load %struct.block*, %struct.block** %11, align 8
  %54 = icmp ne %struct.block* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %20
  %56 = load %struct.block*, %struct.block** %11, align 8
  %57 = load %struct.block*, %struct.block** %12, align 8
  %58 = call i32 @gen_and(%struct.block* %56, %struct.block* %57)
  br label %59

59:                                               ; preds = %55, %20
  %60 = load %struct.block*, %struct.block** %12, align 8
  store %struct.block* %60, %struct.block** %11, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 4
  store i32 %62, i32* %9, align 4
  br label %17

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %96, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %67, label %100

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  store i32 %80, i32* %16, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 2
  %87 = load i32, i32* @BPF_H, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call %struct.block* @gen_cmp(i32* %81, i32 %82, i32 %86, i32 %87, i32 %88)
  store %struct.block* %89, %struct.block** %12, align 8
  %90 = load %struct.block*, %struct.block** %11, align 8
  %91 = icmp ne %struct.block* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %67
  %93 = load %struct.block*, %struct.block** %11, align 8
  %94 = load %struct.block*, %struct.block** %12, align 8
  %95 = call i32 @gen_and(%struct.block* %93, %struct.block* %94)
  br label %96

96:                                               ; preds = %92, %67
  %97 = load %struct.block*, %struct.block** %12, align 8
  store %struct.block* %97, %struct.block** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 2
  store i32 %99, i32* %9, align 4
  br label %64

100:                                              ; preds = %64
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @BPF_B, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.block* @gen_cmp(i32* %104, i32 %105, i32 %106, i32 %107, i32 %110)
  store %struct.block* %111, %struct.block** %12, align 8
  %112 = load %struct.block*, %struct.block** %11, align 8
  %113 = icmp ne %struct.block* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.block*, %struct.block** %11, align 8
  %116 = load %struct.block*, %struct.block** %12, align 8
  %117 = call i32 @gen_and(%struct.block* %115, %struct.block* %116)
  br label %118

118:                                              ; preds = %114, %103
  %119 = load %struct.block*, %struct.block** %12, align 8
  store %struct.block* %119, %struct.block** %11, align 8
  br label %120

120:                                              ; preds = %118, %100
  %121 = load %struct.block*, %struct.block** %11, align 8
  ret %struct.block* %121
}

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
