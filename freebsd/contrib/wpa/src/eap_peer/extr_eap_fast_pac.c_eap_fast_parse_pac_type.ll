; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_parse_pac_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_parse_pac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"Cannot parse pac type\00", align 1
@PAC_TYPE_TUNNEL_PAC = common dso_local global i64 0, align 8
@PAC_TYPE_USER_AUTHORIZATION = common dso_local global i64 0, align 8
@PAC_TYPE_MACHINE_AUTHENTICATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unrecognized PAC-Type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_fast_pac*, i8*)* @eap_fast_parse_pac_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_fast_parse_pac_type(%struct.eap_fast_pac* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_fast_pac*, align 8
  %5 = alloca i8*, align 8
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %33

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @atoi(i8* %10)
  %12 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %13 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %15 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PAC_TYPE_TUNNEL_PAC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %21 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAC_TYPE_USER_AUTHORIZATION, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %4, align 8
  %27 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PAC_TYPE_MACHINE_AUTHENTICATION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %33

32:                                               ; preds = %25, %19, %9
  store i8* null, i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %31, %8
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i64 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
