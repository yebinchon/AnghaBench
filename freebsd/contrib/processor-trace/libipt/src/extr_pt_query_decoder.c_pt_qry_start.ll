; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_decoder_function = type { i32 (%struct.pt_query_decoder*)* }
%struct.pt_query_decoder = type { i32, %struct.pt_decoder_function*, i32, i32*, i32* }

@pte_invalid = common dso_local global i32 0, align 4
@pt_decode_psb = common dso_local global %struct.pt_decoder_function zeroinitializer, align 8
@pte_nosync = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, i32*, i32*)* @pt_qry_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_start(%struct.pt_query_decoder* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_query_decoder*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pt_decoder_function*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %12 = icmp ne %struct.pt_query_decoder* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @pte_invalid, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %100

19:                                               ; preds = %13
  %20 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %21 = call i32 @pt_qry_reset(%struct.pt_query_decoder* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %24 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %27 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %29 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %28, i32 0, i32 1
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %32 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %31, i32 0, i32 2
  %33 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %29, i32* %30, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %100

38:                                               ; preds = %19
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %40 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %39, i32 0, i32 1
  %41 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %40, align 8
  store %struct.pt_decoder_function* %41, %struct.pt_decoder_function** %8, align 8
  %42 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %43 = icmp ne %struct.pt_decoder_function* %42, @pt_decode_psb
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @pte_nosync, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %100

47:                                               ; preds = %38
  %48 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %49 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %48, i32 0, i32 0
  %50 = load i32 (%struct.pt_query_decoder*)*, i32 (%struct.pt_query_decoder*)** %49, align 8
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %52 = call i32 %50(%struct.pt_query_decoder* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %100

57:                                               ; preds = %47
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %63 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %62, i32 0, i32 0
  %64 = call i32 @pt_last_ip_query(i32* %61, i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32* null, i32** %7, align 8
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %71 = call i32 @pt_qry_read_ahead(%struct.pt_query_decoder* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %100

76:                                               ; preds = %69
  %77 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %78 = call i32 @pt_qry_status_flags(%struct.pt_query_decoder* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %100

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %86 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %85, i32 0, i32 0
  %87 = call i32 @pt_last_ip_query(i32* %84, i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @pts_ip_suppressed, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %90
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %81, %74, %55, %44, %36, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @pt_qry_reset(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32*, i32*) #1

declare dso_local i32 @pt_last_ip_query(i32*, i32*) #1

declare dso_local i32 @pt_qry_read_ahead(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_status_flags(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
