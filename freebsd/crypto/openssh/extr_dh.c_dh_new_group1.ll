; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_new_group1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_new_group1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dh_new_group1.gen = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@dh_new_group1.group1 = internal global i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [257 x i8] c"FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dh_new_group1() #0 {
  %1 = load i8*, i8** @dh_new_group1.gen, align 8
  %2 = load i8*, i8** @dh_new_group1.group1, align 8
  %3 = call i32* @dh_new_group_asc(i8* %1, i8* %2)
  ret i32* %3
}

declare dso_local i32* @dh_new_group_asc(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
