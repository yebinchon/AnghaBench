; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_get_group5_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_get_group5_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_group5_order.RFC3526_ORDER_1536 = internal constant [192 x i8] c"\7F\FF\FF\FF\FF\FF\FF\FF\E4\87\EDQ\10\B4a\1Abc1E\C0n\0Eh\94\81'\04E3\E6:\01\05\DFS\1D\89\CD\91(\A5\04<\C7\1A\02n\F7\CA\8C\D9\E6\9D!\8D\98\15\856\F9/\8A\1B\A7\F0\9A\B6\B6\A8\E1\22\F2B\DA\BB1/?cz&!t\D3\1B\F6\B5\85\FF\AE[z\03[\F6\F7\1C5\FD\ADD\CF\D2\D7O\92\08\BE%\8F\F3$\943(\F6r-\9E\E1\00>\\P\B1\DF\82\CCm$\1B\0E*\E9\CD4\8B\1F\D4~\92g\AF\C1\B2\AE\91\EEQ\D6\CB\0E1y\AB\10B\A9]\CFj\94\83\B8KK6\B3\86\1A\A7%^L\02x\BA6\04e\11\B9\93\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_group5_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_group5_order() #0 {
  %1 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @get_group5_order.RFC3526_ORDER_1536, i64 0, i64 0), i32 192, i32* null)
  ret i32* %1
}

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
