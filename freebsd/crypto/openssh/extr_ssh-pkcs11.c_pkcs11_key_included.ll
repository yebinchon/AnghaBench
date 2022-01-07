; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_key_included.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_key_included.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey***, i32*, %struct.sshkey*)* @pkcs11_key_included to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs11_key_included(%struct.sshkey*** %0, i32* %1, %struct.sshkey* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshkey***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca i32, align 4
  store %struct.sshkey*** %0, %struct.sshkey**** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sshkey* %2, %struct.sshkey** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %16 = load %struct.sshkey***, %struct.sshkey**** %5, align 8
  %17 = load %struct.sshkey**, %struct.sshkey*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %17, i64 %19
  %21 = load %struct.sshkey*, %struct.sshkey** %20, align 8
  %22 = call i64 @sshkey_equal(%struct.sshkey* %15, %struct.sshkey* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %30

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %9

29:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @sshkey_equal(%struct.sshkey*, %struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
