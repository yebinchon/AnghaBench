; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_equal_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_equal_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32*, i32*, i32*, i32*, i32* }

@ED25519_PK_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_equal_public(%struct.sshkey* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca %struct.sshkey*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  %6 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %7 = icmp eq %struct.sshkey* %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %10 = icmp eq %struct.sshkey* %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %13 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @sshkey_type_plain(i32 %14)
  %16 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @sshkey_type_plain(i32 %18)
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %50

22:                                               ; preds = %11
  %23 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %24 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %49 [
    i32 133, label %26
    i32 132, label %26
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %28 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %33 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %38 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %41 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @ED25519_PK_SZ, align 4
  %44 = call i32 @memcmp(i32* %39, i32* %42, i32 %43)
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %36, %31, %26
  %47 = phi i1 [ false, %31 ], [ false, %26 ], [ %45, %36 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @sshkey_type_plain(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
