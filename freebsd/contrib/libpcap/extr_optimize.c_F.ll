; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_F.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.valnode**, i32, %struct.TYPE_4__* }
%struct.valnode = type { i32, i32, i32, i32, %struct.valnode* }
%struct.TYPE_4__ = type { i32, i32 }

@MODULUS = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i64 0, align 8
@BPF_LD = common dso_local global i64 0, align 8
@BPF_LDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @F(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.valnode*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 4
  %16 = xor i32 %13, %15
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 %17, 8
  %19 = xor i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @MODULUS, align 4
  %21 = load i32, i32* %10, align 4
  %22 = srem i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.valnode**, %struct.valnode*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.valnode*, %struct.valnode** %25, i64 %27
  %29 = load %struct.valnode*, %struct.valnode** %28, align 8
  store %struct.valnode* %29, %struct.valnode** %12, align 8
  br label %30

30:                                               ; preds = %56, %4
  %31 = load %struct.valnode*, %struct.valnode** %12, align 8
  %32 = icmp ne %struct.valnode* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  %34 = load %struct.valnode*, %struct.valnode** %12, align 8
  %35 = getelementptr inbounds %struct.valnode, %struct.valnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.valnode*, %struct.valnode** %12, align 8
  %41 = getelementptr inbounds %struct.valnode, %struct.valnode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.valnode*, %struct.valnode** %12, align 8
  %47 = getelementptr inbounds %struct.valnode, %struct.valnode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.valnode*, %struct.valnode** %12, align 8
  %53 = getelementptr inbounds %struct.valnode, %struct.valnode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %131

55:                                               ; preds = %45, %39, %33
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.valnode*, %struct.valnode** %12, align 8
  %58 = getelementptr inbounds %struct.valnode, %struct.valnode* %57, i32 0, i32 4
  %59 = load %struct.valnode*, %struct.valnode** %58, align 8
  store %struct.valnode* %59, %struct.valnode** %12, align 8
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @BPF_MODE(i32 %65)
  %67 = load i64, i64* @BPF_IMM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @BPF_CLASS(i32 %70)
  %72 = load i64, i64* @BPF_LD, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @BPF_CLASS(i32 %75)
  %77 = load i64, i64* @BPF_LDX, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %79, %74, %60
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = sext i32 %98 to i64
  %101 = inttoptr i64 %100 to %struct.valnode*
  store %struct.valnode* %101, %struct.valnode** %12, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.valnode*, %struct.valnode** %12, align 8
  %104 = getelementptr inbounds %struct.valnode, %struct.valnode* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.valnode*, %struct.valnode** %12, align 8
  %107 = getelementptr inbounds %struct.valnode, %struct.valnode* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.valnode*, %struct.valnode** %12, align 8
  %110 = getelementptr inbounds %struct.valnode, %struct.valnode* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.valnode*, %struct.valnode** %12, align 8
  %113 = getelementptr inbounds %struct.valnode, %struct.valnode* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.valnode**, %struct.valnode*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.valnode*, %struct.valnode** %116, i64 %118
  %120 = load %struct.valnode*, %struct.valnode** %119, align 8
  %121 = load %struct.valnode*, %struct.valnode** %12, align 8
  %122 = getelementptr inbounds %struct.valnode, %struct.valnode* %121, i32 0, i32 4
  store %struct.valnode* %120, %struct.valnode** %122, align 8
  %123 = load %struct.valnode*, %struct.valnode** %12, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load %struct.valnode**, %struct.valnode*** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.valnode*, %struct.valnode** %126, i64 %128
  store %struct.valnode* %123, %struct.valnode** %129, align 8
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %95, %51
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @BPF_MODE(i32) #1

declare dso_local i64 @BPF_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
