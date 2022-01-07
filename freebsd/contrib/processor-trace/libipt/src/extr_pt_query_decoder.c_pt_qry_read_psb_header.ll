; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_read_psb_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_read_psb_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.pt_decoder_function*, i32, i32, i32 }
%struct.pt_decoder_function = type { i32, {}* }

@pte_internal = common dso_local global i32 0, align 4
@pdff_psbend = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_read_psb_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_read_psb_header(%struct.pt_query_decoder* %0) #0 {
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
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %12, i32 0, i32 3
  %14 = call i32 @pt_last_ip_init(i32* %13)
  br label %15

15:                                               ; preds = %65, %11
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 0
  %18 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %19 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 1
  %23 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %17, i32 %20, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %15
  %29 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %29, i32 0, i32 0
  %31 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %30, align 8
  store %struct.pt_decoder_function* %31, %struct.pt_decoder_function** %4, align 8
  %32 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %33 = icmp ne %struct.pt_decoder_function* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @pte_internal, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %28
  %38 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %39 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @pdff_psbend, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %66

45:                                               ; preds = %37
  %46 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %47 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %46, i32 0, i32 1
  %48 = bitcast {}** %47 to i32 (%struct.pt_query_decoder*)**
  %49 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %48, align 8
  %50 = icmp ne i32 (%struct.pt_query_decoder*)* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @pte_bad_context, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %66

54:                                               ; preds = %45
  %55 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %56 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %55, i32 0, i32 1
  %57 = bitcast {}** %56 to i32 (%struct.pt_query_decoder*)**
  %58 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %57, align 8
  %59 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %60 = call i32 %58(%struct.pt_query_decoder* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %54
  br label %15

66:                                               ; preds = %63, %51, %44, %34, %26, %8
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @pt_last_ip_init(i32*) #1

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
