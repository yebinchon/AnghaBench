; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_supported_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_supported_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i32*, i64 }

@TNC_VENDORID_ANY = common dso_local global i32 0, align 4
@TNC_SUBTYPE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tnc_if_imc*, i32)* @tncc_supported_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_supported_type(%struct.tnc_if_imc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tnc_if_imc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tnc_if_imc* %0, %struct.tnc_if_imc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  %12 = icmp eq %struct.tnc_if_imc* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  %15 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %66

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %62, %19
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  %27 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  %32 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  %39 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TNC_VENDORID_ANY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48, %30
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TNC_SUBTYPE_ANY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  store i32 1, i32* %3, align 4
  br label %66

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %24

65:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %60, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
