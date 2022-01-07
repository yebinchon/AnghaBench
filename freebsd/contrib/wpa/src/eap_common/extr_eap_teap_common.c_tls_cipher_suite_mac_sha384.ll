; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_tls_cipher_suite_mac_sha384.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_tls_cipher_suite_mac_sha384.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_cipher_suite_mac_sha384.sha384_cs = internal constant [74 x i32] [i32 157, i32 159, i32 161, i32 163, i32 165, i32 167, i32 169, i32 171, i32 173, i32 175, i32 179, i32 183, i32 4866, i32 49188, i32 49190, i32 49192, i32 49194, i32 49196, i32 49198, i32 49200, i32 49202, i32 49208, i32 49213, i32 49215, i32 49217, i32 49219, i32 49221, i32 49223, i32 49225, i32 49227, i32 49229, i32 49231, i32 49233, i32 49235, i32 49237, i32 49239, i32 49241, i32 49243, i32 49245, i32 49247, i32 49249, i32 49251, i32 49253, i32 49255, i32 49257, i32 49259, i32 49261, i32 49263, i32 49265, i32 49267, i32 49269, i32 49271, i32 49273, i32 49275, i32 49277, i32 49279, i32 49281, i32 49283, i32 49285, i32 49287, i32 49289, i32 49291, i32 49293, i32 49295, i32 49297, i32 49299, i32 49301, i32 49303, i32 49305, i32 49307, i32 49329, i32 49331, i32 49333, i32 53250], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tls_cipher_suite_mac_sha384 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_cipher_suite_mac_sha384(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([74 x i32], [74 x i32]* @tls_cipher_suite_mac_sha384.sha384_cs, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @tls_cipher_suite_match(i32* getelementptr inbounds ([74 x i32], [74 x i32]* @tls_cipher_suite_mac_sha384.sha384_cs, i64 0, i64 0), i32 %3, i32 %4)
  ret i32 %5
}

declare dso_local i32 @tls_cipher_suite_match(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
