; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_group_id_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_group_id_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nid_list = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tls1_group_id_lookup(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32*, i32** @nid_list, align 8
  %9 = call i32 @OSSL_NELEM(i32* %8)
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32* null, i32** %2, align 8
  br label %18

12:                                               ; preds = %6
  %13 = load i32*, i32** @nid_list, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32* %17, i32** %2, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32*, i32** %2, align 8
  ret i32* %19
}

declare dso_local i32 @OSSL_NELEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
