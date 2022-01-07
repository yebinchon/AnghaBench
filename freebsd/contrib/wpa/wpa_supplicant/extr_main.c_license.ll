; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_main.c_license.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_main.c_license.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%s\0A\0A%s%s%s%s%s\0A\00", align 1
@wpa_supplicant_version = common dso_local global i8* null, align 8
@wpa_supplicant_full_license1 = common dso_local global i8* null, align 8
@wpa_supplicant_full_license2 = common dso_local global i8* null, align 8
@wpa_supplicant_full_license3 = common dso_local global i8* null, align 8
@wpa_supplicant_full_license4 = common dso_local global i32 0, align 4
@wpa_supplicant_full_license5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @license to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @license() #0 {
  %1 = load i8*, i8** @wpa_supplicant_version, align 8
  %2 = load i8*, i8** @wpa_supplicant_full_license1, align 8
  %3 = load i8*, i8** @wpa_supplicant_full_license2, align 8
  %4 = load i8*, i8** @wpa_supplicant_full_license3, align 8
  %5 = load i32, i32* @wpa_supplicant_full_license4, align 4
  %6 = load i32, i32* @wpa_supplicant_full_license5, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
