; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_server_keymat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ikev2.c_eap_ikev2_server_keymat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ikev2_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EAP-IKEV2: Failed to derive key material\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_ikev2_data*)* @eap_ikev2_server_keymat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ikev2_server_keymat(%struct.eap_ikev2_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_ikev2_data*, align 8
  store %struct.eap_ikev2_data* %0, %struct.eap_ikev2_data** %3, align 8
  %4 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %5 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %10 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %13 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %17 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %21 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %25 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %29 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @eap_ikev2_derive_keymat(i32 %8, i32* %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %3, align 8
  %38 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @eap_ikev2_derive_keymat(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
