; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_tls_cipher_suite_mac_sha256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_tls_cipher_suite_mac_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_cipher_suite_mac_sha256.sha256_cs = internal constant [115 x i32] [i32 60, i32 61, i32 62, i32 63, i32 64, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 156, i32 158, i32 160, i32 162, i32 164, i32 166, i32 168, i32 170, i32 172, i32 174, i32 178, i32 182, i32 186, i32 187, i32 188, i32 189, i32 190, i32 189, i32 190, i32 190, i32 191, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 4865, i32 4867, i32 4868, i32 4869, i32 49187, i32 49189, i32 49191, i32 49193, i32 49195, i32 49197, i32 49199, i32 49201, i32 49207, i32 49212, i32 49214, i32 49216, i32 49216, i32 49218, i32 49220, i32 49222, i32 49224, i32 49226, i32 49228, i32 49230, i32 49232, i32 49234, i32 49236, i32 49238, i32 49240, i32 49242, i32 49244, i32 49246, i32 49248, i32 49250, i32 49252, i32 49254, i32 49256, i32 49258, i32 49260, i32 49262, i32 49264, i32 49266, i32 49268, i32 49270, i32 49272, i32 49274, i32 49276, i32 49278, i32 49280, i32 49282, i32 49284, i32 49286, i32 49288, i32 49290, i32 49292, i32 49294, i32 49296, i32 49298, i32 49300, i32 49302, i32 49304, i32 49306, i32 49328, i32 49330, i32 49332, i32 52392, i32 52393, i32 52394, i32 52395, i32 52396, i32 52397, i32 52398, i32 53249, i32 53251, i32 53253], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tls_cipher_suite_mac_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_cipher_suite_mac_sha256(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([115 x i32], [115 x i32]* @tls_cipher_suite_mac_sha256.sha256_cs, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @tls_cipher_suite_match(i32* getelementptr inbounds ([115 x i32], [115 x i32]* @tls_cipher_suite_mac_sha256.sha256_cs, i64 0, i64 0), i32 %3, i32 %4)
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
