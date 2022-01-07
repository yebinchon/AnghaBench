; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_names.c_evp_cleanup_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_names.c_evp_cleanup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJ_NAME_TYPE_CIPHER_METH = common dso_local global i32 0, align 4
@OBJ_NAME_TYPE_MD_METH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evp_cleanup_int() #0 {
  %1 = load i32, i32* @OBJ_NAME_TYPE_CIPHER_METH, align 4
  %2 = call i32 @OBJ_NAME_cleanup(i32 %1)
  %3 = load i32, i32* @OBJ_NAME_TYPE_MD_METH, align 4
  %4 = call i32 @OBJ_NAME_cleanup(i32 %3)
  %5 = call i32 @OBJ_NAME_cleanup(i32 -1)
  %6 = call i32 (...) @EVP_PBE_cleanup()
  %7 = call i32 (...) @OBJ_sigid_free()
  %8 = call i32 (...) @evp_app_cleanup_int()
  ret void
}

declare dso_local i32 @OBJ_NAME_cleanup(i32) #1

declare dso_local i32 @EVP_PBE_cleanup(...) #1

declare dso_local i32 @OBJ_sigid_free(...) #1

declare dso_local i32 @evp_app_cleanup_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
