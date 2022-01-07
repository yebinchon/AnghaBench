; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshmac = type { i32, i32*, i32*, i32, i32* }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_init(%struct.sshmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sshmac*, align 8
  store %struct.sshmac* %0, %struct.sshmac** %3, align 8
  %4 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %5 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %9, i32* %2, align 4
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %12 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %56 [
    i32 130, label %14
    i32 129, label %34
    i32 128, label %45
  ]

14:                                               ; preds = %10
  %15 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %16 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %21 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %24 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %27 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ssh_hmac_init(i32* %22, i32* %25, i32 %28)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19, %14
  %32 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %58

34:                                               ; preds = %10
  %35 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %36 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32* @umac_new(i32* %37)
  %39 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %40 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = icmp eq i32* %38, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %58

45:                                               ; preds = %10
  %46 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %47 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @umac128_new(i32* %48)
  %50 = load %struct.sshmac*, %struct.sshmac** %3, align 8
  %51 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = icmp eq i32* %49, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %10
  %57 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %55, %53, %44, %42, %33, %31, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ssh_hmac_init(i32*, i32*, i32) #1

declare dso_local i32* @umac_new(i32*) #1

declare dso_local i32* @umac128_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
