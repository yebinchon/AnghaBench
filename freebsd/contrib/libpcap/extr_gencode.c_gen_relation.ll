; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_relation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist* }
%struct.slist = type { i32 }
%struct.arth = type { %struct.block*, i32, %struct.slist* }

@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_SUB = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_relation(i32* %0, i32 %1, %struct.arth* %2, %struct.arth* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arth*, align 8
  %9 = alloca %struct.arth*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.slist*, align 8
  %12 = alloca %struct.slist*, align 8
  %13 = alloca %struct.slist*, align 8
  %14 = alloca %struct.block*, align 8
  %15 = alloca %struct.block*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.arth* %2, %struct.arth** %8, align 8
  store %struct.arth* %3, %struct.arth** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.arth*, %struct.arth** %9, align 8
  %18 = call %struct.slist* @xfer_to_x(i32* %16, %struct.arth* %17)
  store %struct.slist* %18, %struct.slist** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.arth*, %struct.arth** %8, align 8
  %21 = call %struct.slist* @xfer_to_a(i32* %19, %struct.arth* %20)
  store %struct.slist* %21, %struct.slist** %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BPF_JEQ, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %5
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @BPF_ALU, align 4
  %28 = load i32, i32* @BPF_SUB, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BPF_X, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.slist* @new_stmt(i32* %26, i32 %31)
  store %struct.slist* %32, %struct.slist** %13, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @JMP(i32 %34)
  %36 = call %struct.block* @new_block(i32* %33, i32 %35)
  store %struct.block* %36, %struct.block** %14, align 8
  %37 = load %struct.slist*, %struct.slist** %12, align 8
  %38 = load %struct.slist*, %struct.slist** %13, align 8
  %39 = call i32 @sappend(%struct.slist* %37, %struct.slist* %38)
  br label %48

40:                                               ; preds = %5
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @BPF_JMP, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @BPF_X, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.block* @new_block(i32* %41, i32 %46)
  store %struct.block* %47, %struct.block** %14, align 8
  br label %48

48:                                               ; preds = %40, %25
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.block*, %struct.block** %14, align 8
  %53 = call i32 @gen_not(%struct.block* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.slist*, %struct.slist** %11, align 8
  %56 = load %struct.slist*, %struct.slist** %12, align 8
  %57 = call i32 @sappend(%struct.slist* %55, %struct.slist* %56)
  %58 = load %struct.arth*, %struct.arth** %9, align 8
  %59 = getelementptr inbounds %struct.arth, %struct.arth* %58, i32 0, i32 2
  %60 = load %struct.slist*, %struct.slist** %59, align 8
  %61 = load %struct.slist*, %struct.slist** %11, align 8
  %62 = call i32 @sappend(%struct.slist* %60, %struct.slist* %61)
  %63 = load %struct.arth*, %struct.arth** %8, align 8
  %64 = getelementptr inbounds %struct.arth, %struct.arth* %63, i32 0, i32 2
  %65 = load %struct.slist*, %struct.slist** %64, align 8
  %66 = load %struct.arth*, %struct.arth** %9, align 8
  %67 = getelementptr inbounds %struct.arth, %struct.arth* %66, i32 0, i32 2
  %68 = load %struct.slist*, %struct.slist** %67, align 8
  %69 = call i32 @sappend(%struct.slist* %65, %struct.slist* %68)
  %70 = load %struct.arth*, %struct.arth** %8, align 8
  %71 = getelementptr inbounds %struct.arth, %struct.arth* %70, i32 0, i32 2
  %72 = load %struct.slist*, %struct.slist** %71, align 8
  %73 = load %struct.block*, %struct.block** %14, align 8
  %74 = getelementptr inbounds %struct.block, %struct.block* %73, i32 0, i32 0
  store %struct.slist* %72, %struct.slist** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.arth*, %struct.arth** %8, align 8
  %77 = getelementptr inbounds %struct.arth, %struct.arth* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @free_reg(i32* %75, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.arth*, %struct.arth** %9, align 8
  %82 = getelementptr inbounds %struct.arth, %struct.arth* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @free_reg(i32* %80, i32 %83)
  %85 = load %struct.arth*, %struct.arth** %8, align 8
  %86 = getelementptr inbounds %struct.arth, %struct.arth* %85, i32 0, i32 0
  %87 = load %struct.block*, %struct.block** %86, align 8
  %88 = icmp ne %struct.block* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %54
  %90 = load %struct.arth*, %struct.arth** %9, align 8
  %91 = getelementptr inbounds %struct.arth, %struct.arth* %90, i32 0, i32 0
  %92 = load %struct.block*, %struct.block** %91, align 8
  %93 = icmp ne %struct.block* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.arth*, %struct.arth** %8, align 8
  %96 = getelementptr inbounds %struct.arth, %struct.arth* %95, i32 0, i32 0
  %97 = load %struct.block*, %struct.block** %96, align 8
  %98 = load %struct.arth*, %struct.arth** %9, align 8
  %99 = getelementptr inbounds %struct.arth, %struct.arth* %98, i32 0, i32 0
  %100 = load %struct.block*, %struct.block** %99, align 8
  store %struct.block* %100, %struct.block** %15, align 8
  %101 = call i32 @gen_and(%struct.block* %97, %struct.block* %100)
  br label %106

102:                                              ; preds = %89
  %103 = load %struct.arth*, %struct.arth** %8, align 8
  %104 = getelementptr inbounds %struct.arth, %struct.arth* %103, i32 0, i32 0
  %105 = load %struct.block*, %struct.block** %104, align 8
  store %struct.block* %105, %struct.block** %15, align 8
  br label %106

106:                                              ; preds = %102, %94
  br label %111

107:                                              ; preds = %54
  %108 = load %struct.arth*, %struct.arth** %9, align 8
  %109 = getelementptr inbounds %struct.arth, %struct.arth* %108, i32 0, i32 0
  %110 = load %struct.block*, %struct.block** %109, align 8
  store %struct.block* %110, %struct.block** %15, align 8
  br label %111

111:                                              ; preds = %107, %106
  %112 = load %struct.block*, %struct.block** %15, align 8
  %113 = icmp ne %struct.block* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.block*, %struct.block** %15, align 8
  %116 = load %struct.block*, %struct.block** %14, align 8
  %117 = call i32 @gen_and(%struct.block* %115, %struct.block* %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load %struct.block*, %struct.block** %14, align 8
  ret %struct.block* %119
}

declare dso_local %struct.slist* @xfer_to_x(i32*, %struct.arth*) #1

declare dso_local %struct.slist* @xfer_to_a(i32*, %struct.arth*) #1

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local %struct.block* @new_block(i32*, i32) #1

declare dso_local i32 @JMP(i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local i32 @gen_not(%struct.block*) #1

declare dso_local i32 @free_reg(i32*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
