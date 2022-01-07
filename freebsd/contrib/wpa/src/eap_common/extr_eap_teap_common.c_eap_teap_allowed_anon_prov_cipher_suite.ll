; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_allowed_anon_prov_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_allowed_anon_prov_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eap_teap_allowed_anon_prov_cipher_suite.ok_cs = internal constant [38 x i32] [i32 52, i32 58, i32 108, i32 109, i32 166, i32 167, i32 51, i32 57, i32 103, i32 107, i32 158, i32 159, i32 49176, i32 49177, i32 49155, i32 49167, i32 49193, i32 49194, i32 49201, i32 49202, i32 49156, i32 49157, i32 49189, i32 49190, i32 49197, i32 49198, i32 49171, i32 49172, i32 49191, i32 49192, i32 49199, i32 49200, i32 49161, i32 49162, i32 49187, i32 49188, i32 49195, i32 49196], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_allowed_anon_prov_cipher_suite(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([38 x i32], [38 x i32]* @eap_teap_allowed_anon_prov_cipher_suite.ok_cs, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @tls_cipher_suite_match(i32* getelementptr inbounds ([38 x i32], [38 x i32]* @eap_teap_allowed_anon_prov_cipher_suite.ok_cs, i64 0, i64 0), i32 %3, i32 %4)
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
