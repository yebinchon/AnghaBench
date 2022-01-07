; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_cache_tnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_cache_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32*, %struct.pt_decoder_function* }
%struct.pt_decoder_function = type { {}*, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@pdff_tip = common dso_local global i32 0, align 4
@pte_event_ignored = common dso_local global i32 0, align 4
@pdff_tnt = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_cache_tnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_cache_tnt(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_decoder_function*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %6 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %7 = icmp ne %struct.pt_query_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %102

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %83, %11
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 3
  %15 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %14, align 8
  store %struct.pt_decoder_function* %15, %struct.pt_decoder_function** %5, align 8
  %16 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %5, align 8
  %17 = icmp ne %struct.pt_decoder_function* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %20 = call i32 @pt_qry_provoke_fetch_error(%struct.pt_query_decoder* %19)
  store i32 %20, i32* %2, align 4
  br label %102

21:                                               ; preds = %12
  %22 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %5, align 8
  %23 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.pt_query_decoder*)**
  %25 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %24, align 8
  %26 = icmp ne i32 (%struct.pt_query_decoder*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @pte_internal, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %21
  %31 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %32 = call i64 @pt_qry_will_event(%struct.pt_query_decoder* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @pte_bad_query, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %5, align 8
  %39 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @pdff_tip, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @pte_bad_query, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %102

47:                                               ; preds = %37
  %48 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %5, align 8
  %51 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.pt_query_decoder*)**
  %53 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %52, align 8
  %54 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %55 = call i32 %53(%struct.pt_query_decoder* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %102

60:                                               ; preds = %47
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @pte_event_ignored, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %102

68:                                               ; preds = %60
  %69 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %5, align 8
  %70 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @pdff_tnt, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %84

76:                                               ; preds = %68
  %77 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %78 = call i32 @pt_qry_read_ahead(%struct.pt_query_decoder* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %102

83:                                               ; preds = %76
  br label %12

84:                                               ; preds = %75
  %85 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %86 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %89 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %91 = call i32 @pt_qry_read_ahead(%struct.pt_query_decoder* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @pte_eos, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %94, %84
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %99, %81, %65, %58, %44, %34, %27, %18, %8
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @pt_qry_provoke_fetch_error(%struct.pt_query_decoder*) #1

declare dso_local i64 @pt_qry_will_event(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_read_ahead(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
