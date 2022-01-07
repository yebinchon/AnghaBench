; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { %struct.tnc_if_imc* }
%struct.tnc_if_imc = type { i32, %struct.tnc_if_imc* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TNC: Failed to read TNC configuration\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TNC: Failed to load IMC '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tncc_data* @tncc_init() #0 {
  %1 = alloca %struct.tncc_data*, align 8
  %2 = alloca %struct.tncc_data*, align 8
  %3 = alloca %struct.tnc_if_imc*, align 8
  %4 = call %struct.tncc_data* @os_zalloc(i32 8)
  store %struct.tncc_data* %4, %struct.tncc_data** %2, align 8
  %5 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %6 = icmp eq %struct.tncc_data* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.tncc_data* null, %struct.tncc_data** %1, align 8
  br label %42

8:                                                ; preds = %0
  %9 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %10 = call i64 @tncc_read_config(%struct.tncc_data* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @MSG_ERROR, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %39

15:                                               ; preds = %8
  %16 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %17 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %16, i32 0, i32 0
  %18 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %17, align 8
  store %struct.tnc_if_imc* %18, %struct.tnc_if_imc** %3, align 8
  br label %19

19:                                               ; preds = %33, %15
  %20 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %21 = icmp ne %struct.tnc_if_imc* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %24 = call i64 @tncc_load_imc(%struct.tnc_if_imc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %29 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %39

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %35 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %34, i32 0, i32 1
  %36 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %35, align 8
  store %struct.tnc_if_imc* %36, %struct.tnc_if_imc** %3, align 8
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  store %struct.tncc_data* %38, %struct.tncc_data** %1, align 8
  br label %42

39:                                               ; preds = %26, %12
  %40 = load %struct.tncc_data*, %struct.tncc_data** %2, align 8
  %41 = call i32 @tncc_deinit(%struct.tncc_data* %40)
  store %struct.tncc_data* null, %struct.tncc_data** %1, align 8
  br label %42

42:                                               ; preds = %39, %37, %7
  %43 = load %struct.tncc_data*, %struct.tncc_data** %1, align 8
  ret %struct.tncc_data* %43
}

declare dso_local %struct.tncc_data* @os_zalloc(i32) #1

declare dso_local i64 @tncc_read_config(%struct.tncc_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tncc_load_imc(%struct.tnc_if_imc*) #1

declare dso_local i32 @tncc_deinit(%struct.tncc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
