; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_parse_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_parse_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"START line without END\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No memory for PAC entry\00", align 1
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_fast_pac**)* @eap_fast_parse_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_fast_parse_start(%struct.eap_fast_pac** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eap_fast_pac**, align 8
  store %struct.eap_fast_pac** %0, %struct.eap_fast_pac*** %3, align 8
  %4 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %3, align 8
  %5 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %6 = icmp ne %struct.eap_fast_pac* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = call %struct.eap_fast_pac* @os_zalloc(i32 4)
  %10 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %3, align 8
  store %struct.eap_fast_pac* %9, %struct.eap_fast_pac** %10, align 8
  %11 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %3, align 8
  %12 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %11, align 8
  %13 = icmp eq %struct.eap_fast_pac* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %20

15:                                               ; preds = %8
  %16 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %17 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %3, align 8
  %18 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %17, align 8
  %19 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  store i8* null, i8** %2, align 8
  br label %20

20:                                               ; preds = %15, %14, %7
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local %struct.eap_fast_pac* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
