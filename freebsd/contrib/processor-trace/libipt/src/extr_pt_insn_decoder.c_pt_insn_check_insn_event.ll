; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_check_insn_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_check_insn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.pt_event }
%struct.TYPE_4__ = type { i32 }
%struct.pt_event = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.pt_insn = type { i64, i64, i32 }
%struct.pt_insn_ext = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_insn_check_insn_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_check_insn_event(%struct.pt_insn_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca %struct.pt_event*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %10 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %11 = icmp ne %struct.pt_insn_decoder* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %163

15:                                               ; preds = %3
  %16 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %17 = call i32 @event_pending(%struct.pt_insn_decoder* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %163

22:                                               ; preds = %15
  %23 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %24 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %23, i32 0, i32 5
  store %struct.pt_event* %24, %struct.pt_event** %8, align 8
  %25 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %26 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %159 [
    i32 143, label %28
    i32 138, label %28
    i32 147, label %28
    i32 146, label %28
    i32 148, label %28
    i32 149, label %28
    i32 142, label %28
    i32 131, label %28
    i32 133, label %28
    i32 141, label %28
    i32 139, label %28
    i32 135, label %28
    i32 134, label %28
    i32 132, label %28
    i32 145, label %28
    i32 140, label %28
    i32 144, label %29
    i32 137, label %75
    i32 130, label %94
    i32 136, label %113
  ]

28:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  store i32 0, i32* %4, align 4
  br label %163

29:                                               ; preds = %22
  %30 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %31 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %32 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %33 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %34 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @pt_insn_at_disabled_event(%struct.pt_event* %30, %struct.pt_insn* %31, %struct.pt_insn_ext* %32, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %163

41:                                               ; preds = %29
  %42 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %43 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %42, i32 0, i32 0
  %44 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %45 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %46 = call i32 @pt_insn_next_ip(i64* %43, %struct.pt_insn* %44, %struct.pt_insn_ext* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %41
  %50 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %51 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @pte_bad_query, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %163

58:                                               ; preds = %49
  %59 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %60 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %72 [
    i32 129, label %62
    i32 128, label %62
  ]

62:                                               ; preds = %58, %58
  %63 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %64 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %67 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %71 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %73

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %62
  br label %74

74:                                               ; preds = %73, %41
  br label %159

75:                                               ; preds = %22
  %76 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %77 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %163

81:                                               ; preds = %75
  %82 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %83 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %84 = call i32 @pt_insn_binds_to_pip(%struct.pt_insn* %82, %struct.pt_insn_ext* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %163

87:                                               ; preds = %81
  %88 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %89 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  %90 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %91 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %92 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %93 = call i32 @pt_insn_postpone(%struct.pt_insn_decoder* %90, %struct.pt_insn* %91, %struct.pt_insn_ext* %92)
  store i32 %93, i32* %4, align 4
  br label %163

94:                                               ; preds = %22
  %95 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %96 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %163

100:                                              ; preds = %94
  %101 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %102 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %103 = call i32 @pt_insn_binds_to_vmcs(%struct.pt_insn* %101, %struct.pt_insn_ext* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %163

106:                                              ; preds = %100
  %107 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %108 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %107, i32 0, i32 2
  store i32 1, i32* %108, align 4
  %109 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %110 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %111 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %112 = call i32 @pt_insn_postpone(%struct.pt_insn_decoder* %109, %struct.pt_insn* %110, %struct.pt_insn_ext* %111)
  store i32 %112, i32* %4, align 4
  br label %163

113:                                              ; preds = %22
  %114 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %115 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %163

119:                                              ; preds = %113
  %120 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %121 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %126 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %127 = call i32 @pt_insn_is_ptwrite(%struct.pt_insn* %125, %struct.pt_insn_ext* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %163

130:                                              ; preds = %124
  %131 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %132 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %135 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i64 %133, i64* %137, align 8
  %138 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %139 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %138, i32 0, i32 2
  store i32 0, i32* %139, align 8
  br label %152

140:                                              ; preds = %119
  %141 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %142 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %145 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %143, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %163

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %130
  %153 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %154 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %153, i32 0, i32 3
  store i32 1, i32* %154, align 8
  %155 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %156 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %157 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %158 = call i32 @pt_insn_postpone(%struct.pt_insn_decoder* %155, %struct.pt_insn* %156, %struct.pt_insn_ext* %157)
  store i32 %158, i32* %4, align 4
  br label %163

159:                                              ; preds = %22, %74
  %160 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %161 = load i32, i32* @pts_event_pending, align 4
  %162 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %160, i32 %161)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %152, %150, %129, %118, %106, %105, %99, %87, %86, %80, %56, %39, %28, %20, %12
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @event_pending(%struct.pt_insn_decoder*) #1

declare dso_local i32 @pt_insn_at_disabled_event(%struct.pt_event*, %struct.pt_insn*, %struct.pt_insn_ext*, i32*) #1

declare dso_local i32 @pt_insn_next_ip(i64*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_binds_to_pip(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_postpone(%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_binds_to_vmcs(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_is_ptwrite(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_status(%struct.pt_insn_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
