; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_indirect_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_indirect_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32, i32*, i32, %struct.pt_decoder_function* }
%struct.pt_decoder_function = type { i32 (%struct.pt_query_decoder*)*, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@pdff_tnt = common dso_local global i32 0, align 4
@pte_event_ignored = common dso_local global i32 0, align 4
@pdff_tip = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_indirect_branch(%struct.pt_query_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_decoder_function*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %11 = icmp ne %struct.pt_query_decoder* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %106, %18
  %20 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %21 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %20, i32 0, i32 5
  %22 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %21, align 8
  store %struct.pt_decoder_function* %22, %struct.pt_decoder_function** %8, align 8
  %23 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %24 = icmp ne %struct.pt_decoder_function* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %27 = call i32 @pt_qry_provoke_fetch_error(%struct.pt_query_decoder* %26)
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %19
  %29 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %30 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %29, i32 0, i32 0
  %31 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %30, align 8
  %32 = icmp ne i32 (%struct.pt_query_decoder*)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @pte_internal, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %130

36:                                               ; preds = %28
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %38 = call i64 @pt_qry_will_event(%struct.pt_query_decoder* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @pte_bad_query, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %130

43:                                               ; preds = %36
  %44 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %45 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %47 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @pdff_tnt, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %54 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %53, i32 0, i32 4
  %55 = call i32 @pt_tnt_cache_is_empty(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @pte_bad_query, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %130

60:                                               ; preds = %52, %43
  %61 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %62 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %61, i32 0, i32 0
  %63 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %62, align 8
  %64 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %65 = call i32 %63(%struct.pt_query_decoder* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %130

70:                                               ; preds = %60
  %71 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %72 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @pte_event_ignored, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %130

78:                                               ; preds = %70
  %79 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %80 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @pdff_tip, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %87 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %86, i32 0, i32 2
  %88 = call i32 @pt_last_ip_query(i32* %9, i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @pts_ip_suppressed, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %98

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %91
  br label %107

99:                                               ; preds = %78
  %100 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %101 = call i32 @pt_qry_read_ahead(%struct.pt_query_decoder* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %130

106:                                              ; preds = %99
  br label %19

107:                                              ; preds = %98
  %108 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %109 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %112 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %114 = call i32 @pt_qry_read_ahead(%struct.pt_query_decoder* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @pte_eos, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %130

124:                                              ; preds = %117, %107
  %125 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %126 = call i32 @pt_qry_status_flags(%struct.pt_query_decoder* %125)
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %122, %104, %75, %68, %57, %40, %33, %25, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @pt_qry_provoke_fetch_error(%struct.pt_query_decoder*) #1

declare dso_local i64 @pt_qry_will_event(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_tnt_cache_is_empty(i32*) #1

declare dso_local i32 @pt_last_ip_query(i32*, i32*) #1

declare dso_local i32 @pt_qry_read_ahead(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_status_flags(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
