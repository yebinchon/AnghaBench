; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_if_tnccs_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_if_tnccs_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncc_data = type { i32 }

@IF_TNCCS_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tncc_if_tnccs_start(%struct.tncc_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tncc_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.tncc_data* %0, %struct.tncc_data** %3, align 8
  %5 = call i8* @os_malloc(i32 1000)
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.tncc_data*, %struct.tncc_data** %3, align 8
  %11 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @IF_TNCCS_START, align 4
  %16 = load %struct.tncc_data*, %struct.tncc_data** %3, align 8
  %17 = getelementptr inbounds %struct.tncc_data, %struct.tncc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @os_snprintf(i8* %14, i32 1000, i32 %15, i32 %18)
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %9, %8
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
