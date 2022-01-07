; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_const.c_BN_get_rfc3526_prime_4096.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_const.c_BN_get_rfc3526_prime_4096.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_get_rfc3526_prime_4096.RFC3526_PRIME_4096 = internal constant [512 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\C9\0F\DA\A2!h\C24\C4\C6b\8B\80\DC\1C\D1)\02N\08\8Ag\CCt\02\0B\BE\A6;\13\9B\22QJ\08y\8E4\04\DD\EF\95\19\B3\CD:C\1B0+\0Am\F2_\147O\E15mmQ\C2E\E4\85\B5vb^~\C6\F4LB\E9\A67\EDk\0B\FF\\\B6\F4\06\B7\ED\EE8k\FBZ\89\9F\A5\AE\9F$\11|K\1F\E6I(fQ\EC\E4[=\C2\00|\B8\A1c\BF\05\98\DAH6\1CU\D3\9Ai\16?\A8\FD$\CF_\83e]#\DC\A3\AD\96\1Cb\F3V \85R\BB\9E\D5)\07p\96\96mg\0C5NJ\BC\98\04\F1tl\08\CA\18!|2\90^F.6\CE;\E3\9Ew,\18\0E\86\03\9B'\83\A2\EC\07\A2\8F\B5\C5]\F0oLR\C9\DE+\CB\F6\95X\17\189\95I|\EA\95j\E5\15\D2&\18\98\FA\05\10\15r\8EZ\8A\AA\C4-\AD3\17\0D\04Pz3\A8U!\AB\DF\1C\BAd\EC\FB\85\04X\DB\EF\0A\8A\EAqW]\06\0C}\B3\97\0F\85\A6\E1\E4\C7\AB\F5\AE\8C\DB\093\D7\1E\8C\94\E0J%a\9D\CE\E3\D2&\1A\D2\EEk\F1/\FA\06\D9\8A\08d\D8v\02s>\C8jdR\1F+\18\17{ \0C\BB\E1\17Wza]lw\09\88\C0\BA\D9F\E2\08\E2O\A0t\E5\AB1C\DB[\FC\E0\FD\10\8EK\82\D1 \A9!\08\01\1Ar<\12\A7\87\E6\D7\88q\9A\10\BD\BA[&\99\C3'\18j\F4\E2<\1A\94h4\B6\15\0B\DA%\83\E9\CA*\D4L\E8\DB\BB\C2\DB\04\DE\8E\F9.\8E\FC\14\1F\BE\CA\A6(|YGNk\C0]\99\B2\96O\A0\90\C3\A2#;\A1\86Q[\E7\ED\1Fa)p\CE\E2\D7\AF\B8\1B\DDv!pH\1C\D0\06\91'\D5\B0Z\A9\93\B4\EA\98\8D\8F\DD\C1\86\FF\B7\DC\90\A6\C0\8FM\F45\C94\061\99\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BN_get_rfc3526_prime_4096(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32* @BN_bin2bn(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @BN_get_rfc3526_prime_4096.RFC3526_PRIME_4096, i64 0, i64 0), i32 512, i32* %3)
  ret i32* %4
}

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
