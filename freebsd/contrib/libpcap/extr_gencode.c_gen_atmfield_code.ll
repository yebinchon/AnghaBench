; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_atmfield_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_atmfield_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"'vpi' supported only on raw ATM\00", align 1
@OFFSET_NOT_SET = common dso_local global i64 0, align 8
@OR_LINKHDR = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"'vci' supported only on raw ATM\00", align 1
@BPF_H = common dso_local global i32 0, align 4
@MSG_TYPE_POS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"'callref' supported only on raw ATM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_atmfield_code(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.block*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %134 [
    i32 128, label %13
    i32 129, label %40
    i32 130, label %67
    i32 131, label %86
    i32 132, label %107
  ]

13:                                               ; preds = %5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i32 @bpf_error(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OFFSET_NOT_SET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @abort() #3
  unreachable

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = load i32, i32* @OR_LINKHDR, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @BPF_B, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %30, i32 %31, i64 %34, i32 %35, i32 -1, i32 %36, i32 %37, i32 %38)
  store %struct.block* %39, %struct.block** %11, align 8
  br label %136

40:                                               ; preds = %5
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32 @bpf_error(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OFFSET_NOT_SET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (...) @abort() #3
  unreachable

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = load i32, i32* @OR_LINKHDR, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @BPF_H, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %57, i32 %58, i64 %61, i32 %62, i32 -1, i32 %63, i32 %64, i32 %65)
  store %struct.block* %66, %struct.block** %11, align 8
  br label %136

67:                                               ; preds = %5
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OFFSET_NOT_SET, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (...) @abort() #3
  unreachable

75:                                               ; preds = %67
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = load i32, i32* @OR_LINKHDR, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @BPF_B, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %76, i32 %77, i64 %80, i32 %81, i32 15, i32 %82, i32 %83, i32 %84)
  store %struct.block* %85, %struct.block** %11, align 8
  br label %136

86:                                               ; preds = %5
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @OFFSET_NOT_SET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = call i32 (...) @abort() #3
  unreachable

94:                                               ; preds = %86
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = load i32, i32* @OR_LINKHDR, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MSG_TYPE_POS, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* @BPF_B, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %95, i32 %96, i64 %101, i32 %102, i32 -1, i32 %103, i32 %104, i32 %105)
  store %struct.block* %106, %struct.block** %11, align 8
  br label %136

107:                                              ; preds = %5
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = call i32 @bpf_error(%struct.TYPE_5__* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @OFFSET_NOT_SET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 (...) @abort() #3
  unreachable

123:                                              ; preds = %115
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = load i32, i32* @OR_LINKHDR, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @BPF_B, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call %struct.block* @gen_ncmp(%struct.TYPE_5__* %124, i32 %125, i64 %128, i32 %129, i32 -1, i32 %130, i32 %131, i32 %132)
  store %struct.block* %133, %struct.block** %11, align 8
  br label %136

134:                                              ; preds = %5
  %135 = call i32 (...) @abort() #3
  unreachable

136:                                              ; preds = %123, %94, %75, %56, %29
  %137 = load %struct.block*, %struct.block** %11, align 8
  ret %struct.block* %137
}

declare dso_local i32 @bpf_error(%struct.TYPE_5__*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.block* @gen_ncmp(%struct.TYPE_5__*, i32, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
