; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_parse_pac_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_parse_pac_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { i32 }

@EAP_TEAP_PAC_KEY_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid PAC-Key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_teap_pac*, i8*)* @eap_teap_parse_pac_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_teap_parse_pac_key(%struct.eap_teap_pac* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_teap_pac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.eap_teap_pac* %0, %struct.eap_teap_pac** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @eap_teap_parse_hex(i8* %8, i64* %7)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @EAP_TEAP_PAC_KEY_LEN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @os_free(i32* %17)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %4, align 8
  %21 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* @EAP_TEAP_PAC_KEY_LEN, align 8
  %25 = call i32 @os_memcpy(i32 %22, i32* %23, i64 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @os_free(i32* %26)
  store i8* null, i8** %3, align 8
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i32* @eap_teap_parse_hex(i8*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
