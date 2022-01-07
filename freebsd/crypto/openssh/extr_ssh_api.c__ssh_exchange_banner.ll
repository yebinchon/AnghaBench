; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c__ssh_exchange_banner.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c__ssh_exchange_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ssh_exchange_banner(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.kex*, align 8
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %6 = load %struct.ssh*, %struct.ssh** %3, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  %8 = load %struct.kex*, %struct.kex** %7, align 8
  store %struct.kex* %8, %struct.kex** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.kex*, %struct.kex** %4, align 8
  %10 = getelementptr inbounds %struct.kex, %struct.kex* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.kex*, %struct.kex** %4, align 8
  %15 = getelementptr inbounds %struct.kex, %struct.kex* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ssh*, %struct.ssh** %3, align 8
  %20 = load %struct.kex*, %struct.kex** %4, align 8
  %21 = getelementptr inbounds %struct.kex, %struct.kex* %20, i32 0, i32 1
  %22 = call i32 @_ssh_send_banner(%struct.ssh* %19, i32** %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.kex*, %struct.kex** %4, align 8
  %28 = getelementptr inbounds %struct.kex, %struct.kex* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.kex*, %struct.kex** %4, align 8
  %33 = getelementptr inbounds %struct.kex, %struct.kex* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ssh*, %struct.ssh** %3, align 8
  %38 = load %struct.kex*, %struct.kex** %4, align 8
  %39 = getelementptr inbounds %struct.kex, %struct.kex* %38, i32 0, i32 0
  %40 = call i32 @_ssh_read_banner(%struct.ssh* %37, i32** %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %31, %26, %23
  br label %71

42:                                               ; preds = %1
  %43 = load %struct.kex*, %struct.kex** %4, align 8
  %44 = getelementptr inbounds %struct.kex, %struct.kex* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.ssh*, %struct.ssh** %3, align 8
  %49 = load %struct.kex*, %struct.kex** %4, align 8
  %50 = getelementptr inbounds %struct.kex, %struct.kex* %49, i32 0, i32 1
  %51 = call i32 @_ssh_read_banner(%struct.ssh* %48, i32** %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.kex*, %struct.kex** %4, align 8
  %57 = getelementptr inbounds %struct.kex, %struct.kex* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.kex*, %struct.kex** %4, align 8
  %62 = getelementptr inbounds %struct.kex, %struct.kex* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.ssh*, %struct.ssh** %3, align 8
  %67 = load %struct.kex*, %struct.kex** %4, align 8
  %68 = getelementptr inbounds %struct.kex, %struct.kex* %67, i32 0, i32 0
  %69 = call i32 @_ssh_send_banner(%struct.ssh* %66, i32** %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %60, %55, %52
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %98

76:                                               ; preds = %71
  %77 = load %struct.kex*, %struct.kex** %4, align 8
  %78 = getelementptr inbounds %struct.kex, %struct.kex* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.kex*, %struct.kex** %4, align 8
  %83 = getelementptr inbounds %struct.kex, %struct.kex* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.ssh*, %struct.ssh** %3, align 8
  %88 = call i32 @_ssh_order_hostkeyalgs(%struct.ssh* %87)
  store i32 %88, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load %struct.ssh*, %struct.ssh** %3, align 8
  %92 = call i32 @kex_send_kexinit(%struct.ssh* %91)
  store i32 %92, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %98

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %81, %76
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %94, %74
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @_ssh_send_banner(%struct.ssh*, i32**) #1

declare dso_local i32 @_ssh_read_banner(%struct.ssh*, i32**) #1

declare dso_local i32 @_ssh_order_hostkeyalgs(%struct.ssh*) #1

declare dso_local i32 @kex_send_kexinit(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
