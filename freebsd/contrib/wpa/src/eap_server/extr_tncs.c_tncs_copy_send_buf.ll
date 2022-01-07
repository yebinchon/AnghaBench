; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_copy_send_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_copy_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@TNC_MAX_IMV_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tncs_copy_send_buf(%struct.tncs_data* %0, i32* %1) #0 {
  %3 = alloca %struct.tncs_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tncs_data* %0, %struct.tncs_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %74, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TNC_MAX_IMV_ID, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %77

11:                                               ; preds = %7
  %12 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %13 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %74

22:                                               ; preds = %11
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %25 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %33 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @os_memcpy(i32* %23, i32* %31, i64 %39)
  %41 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %42 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %48
  store i32* %50, i32** %4, align 8
  %51 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %52 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @os_free(i32* %58)
  %60 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %61 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %68 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %22, %21
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %7

77:                                               ; preds = %7
  %78 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %79 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %84 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @os_strlen(i32* %85)
  store i64 %86, i64* %6, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %89 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @os_memcpy(i32* %87, i32* %90, i64 %91)
  %93 = load i64, i64* %6, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %4, align 8
  %96 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %97 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @os_free(i32* %98)
  %100 = load %struct.tncs_data*, %struct.tncs_data** %3, align 8
  %101 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %82, %77
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @os_strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
