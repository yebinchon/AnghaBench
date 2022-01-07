; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_read_ahead.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_read_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.pt_decoder_function*, %struct.TYPE_2__, i32 }
%struct.pt_decoder_function = type { {}*, i32 }
%struct.TYPE_2__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pdff_tip = common dso_local global i32 0, align 4
@pdff_tnt = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_read_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_read_ahead(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_decoder_function*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %6 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %7 = icmp ne %struct.pt_query_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %84

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %83, %11
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 0
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %18, i32 0, i32 1
  %20 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %14, i32 %17, %struct.TYPE_2__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %84

25:                                               ; preds = %12
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %26, i32 0, i32 0
  %28 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %27, align 8
  store %struct.pt_decoder_function* %28, %struct.pt_decoder_function** %4, align 8
  %29 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %30 = icmp ne %struct.pt_decoder_function* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @pte_internal, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %36 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.pt_query_decoder*)**
  %38 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %37, align 8
  %39 = icmp ne i32 (%struct.pt_query_decoder*)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @pte_internal, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %84

43:                                               ; preds = %34
  %44 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %45 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @pdff_tip, align 4
  %48 = load i32, i32* @pdff_tnt, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %84

53:                                               ; preds = %43
  %54 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %55 = call i64 @pt_qry_will_event(%struct.pt_query_decoder* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %84

58:                                               ; preds = %53
  %59 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %60 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.pt_query_decoder*)**
  %62 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %61, align 8
  %63 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %64 = call i32 %62(%struct.pt_query_decoder* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @pte_eos, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %74 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %78 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %80 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %79, i32 0, i32 0
  store %struct.pt_decoder_function* null, %struct.pt_decoder_function** %80, align 8
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %58
  br label %12

84:                                               ; preds = %81, %57, %52, %40, %31, %23, %8
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @pt_qry_will_event(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
