; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_tls_cipher_suite_mac_sha1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_tls_cipher_suite_mac_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_cipher_suite_mac_sha1.sha1_cs = internal constant [84 x i32] [i32 5, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 27, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 49154, i32 49155, i32 49156, i32 49157, i32 49159, i32 49160, i32 49161, i32 49161, i32 49162, i32 49164, i32 49165, i32 49166, i32 49167, i32 49169, i32 49170, i32 49171, i32 49172, i32 49174, i32 49175, i32 49176, i32 49177, i32 49178, i32 49179, i32 49180, i32 49172, i32 49182, i32 49183, i32 49184, i32 49185, i32 49186, i32 49203, i32 49204, i32 49205, i32 49206], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tls_cipher_suite_mac_sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_cipher_suite_mac_sha1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([84 x i32], [84 x i32]* @tls_cipher_suite_mac_sha1.sha1_cs, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @tls_cipher_suite_match(i32* getelementptr inbounds ([84 x i32], [84 x i32]* @tls_cipher_suite_mac_sha1.sha1_cs, i64 0, i64 0), i32 %3, i32 %4)
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
