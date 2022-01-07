; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt_ll.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt_ll.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@passwd1 = common dso_local global i32 0, align 4
@salt1 = common dso_local global i32 0, align 4
@N1 = common dso_local global i32 0, align 4
@r1 = common dso_local global i32 0, align 4
@p1 = common dso_local global i32 0, align 4
@passwd2 = common dso_local global i32 0, align 4
@salt2 = common dso_local global i32 0, align 4
@N2 = common dso_local global i32 0, align 4
@r2 = common dso_local global i32 0, align 4
@p2 = common dso_local global i32 0, align 4
@passwd3 = common dso_local global i32 0, align 4
@salt3 = common dso_local global i32 0, align 4
@N3 = common dso_local global i32 0, align 4
@r3 = common dso_local global i32 0, align 4
@p3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @passwd1, align 4
  %3 = load i32, i32* @salt1, align 4
  %4 = load i32, i32* @N1, align 4
  %5 = load i32, i32* @r1, align 4
  %6 = load i32, i32* @p1, align 4
  %7 = call i32 @tv(i32 %2, i32 %3, i32 %4, i32 %5, i32 %6)
  %8 = load i32, i32* @passwd2, align 4
  %9 = load i32, i32* @salt2, align 4
  %10 = load i32, i32* @N2, align 4
  %11 = load i32, i32* @r2, align 4
  %12 = load i32, i32* @p2, align 4
  %13 = call i32 @tv(i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @passwd3, align 4
  %15 = load i32, i32* @salt3, align 4
  %16 = load i32, i32* @N3, align 4
  %17 = load i32, i32* @r3, align 4
  %18 = load i32, i32* @p3, align 4
  %19 = call i32 @tv(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  ret i32 0
}

declare dso_local i32 @tv(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
