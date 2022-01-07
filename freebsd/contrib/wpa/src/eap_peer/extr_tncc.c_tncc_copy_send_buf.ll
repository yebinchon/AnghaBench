; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_copy_send_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_copy_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tnc_if_imc* }
%struct.tnc_if_imc = type { i64, i32*, %struct.tnc_if_imc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tncc_copy_send_buf(%struct.tncc_data* %0, i32* %1) #0 {
  %3 = alloca %struct.tncc_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tnc_if_imc*, align 8
  store %struct.tncc_data* %0, %struct.tncc_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.tncc_data*, %struct.tncc_data** %3, align 8
  %7 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %6, i32 0, i32 0
  %8 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %7, align 8
  store %struct.tnc_if_imc* %8, %struct.tnc_if_imc** %5, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %11 = icmp ne %struct.tnc_if_imc* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %14 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %40

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %21 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %24 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @os_memcpy(i32* %19, i32* %22, i64 %25)
  %27 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %28 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %4, align 8
  %32 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %33 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @os_free(i32* %34)
  %36 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %37 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %39 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %18, %17
  %41 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %5, align 8
  %42 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %41, i32 0, i32 2
  %43 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %42, align 8
  store %struct.tnc_if_imc* %43, %struct.tnc_if_imc** %5, align 8
  br label %9

44:                                               ; preds = %9
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
