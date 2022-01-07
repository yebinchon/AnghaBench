; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, i32, i64, i32 }
%struct.pt_insn = type { i32, i32, i32, i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_insn_ext = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pte_no_enable = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_next(%struct.pt_insn_decoder* %0, %struct.pt_insn* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_mapped_section*, align 8
  %9 = alloca %struct.pt_insn_ext, align 4
  %10 = alloca %struct.pt_insn, align 4
  %11 = alloca %struct.pt_insn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %15 = icmp ne %struct.pt_insn* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %18 = icmp ne %struct.pt_insn_decoder* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @pte_invalid, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %136

22:                                               ; preds = %16
  %23 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %24 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %29 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @pts_eos, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @pte_eos, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %136

37:                                               ; preds = %27
  %38 = load i32, i32* @pte_no_enable, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %136

40:                                               ; preds = %22
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi %struct.pt_insn* [ %44, %43 ], [ %10, %45 ]
  store %struct.pt_insn* %47, %struct.pt_insn** %11, align 8
  %48 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %49 = call i32 @memset(%struct.pt_insn* %48, i32 0, i32 16)
  %50 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %51 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %56 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %46
  %58 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %59 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %62 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %64 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %67 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %69 = call i32 @pt_insn_msec_lookup(%struct.pt_insn_decoder* %68, %struct.pt_mapped_section** %8)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @pte_nomap, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %136

79:                                               ; preds = %72
  store %struct.pt_mapped_section* null, %struct.pt_mapped_section** %8, align 8
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %83 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %85 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %8, align 8
  %86 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %87 = call i32 @pt_insn_decode_cached(%struct.pt_insn_decoder* %84, %struct.pt_mapped_section* %85, %struct.pt_insn* %86, %struct.pt_insn_ext* %9)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %94 = call i32 @insn_to_user(%struct.pt_insn* %91, i64 %92, %struct.pt_insn* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %136

96:                                               ; preds = %80
  %97 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %100 = call i32 @insn_to_user(%struct.pt_insn* %97, i64 %98, %struct.pt_insn* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %136

105:                                              ; preds = %96
  %106 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %107 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %108 = call i32 @pt_insn_check_insn_event(%struct.pt_insn_decoder* %106, %struct.pt_insn* %107, %struct.pt_insn_ext* %9)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %136

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @pts_event_pending, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %136

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %105
  %125 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %126 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %127 = call i32 @pt_insn_proceed(%struct.pt_insn_decoder* %125, %struct.pt_insn* %126, %struct.pt_insn_ext* %9)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %136

132:                                              ; preds = %124
  %133 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %134 = load %struct.pt_insn*, %struct.pt_insn** %11, align 8
  %135 = call i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder* %133, %struct.pt_insn* %134, %struct.pt_insn_ext* %9)
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %130, %121, %114, %103, %90, %77, %37, %34, %19
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @memset(%struct.pt_insn*, i32, i32) #1

declare dso_local i32 @pt_insn_msec_lookup(%struct.pt_insn_decoder*, %struct.pt_mapped_section**) #1

declare dso_local i32 @pt_insn_decode_cached(%struct.pt_insn_decoder*, %struct.pt_mapped_section*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @insn_to_user(%struct.pt_insn*, i64, %struct.pt_insn*) #1

declare dso_local i32 @pt_insn_check_insn_event(%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_proceed(%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_check_ip_event(%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
