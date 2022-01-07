; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_get_hostkey_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_get_hostkey_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.sshkey**, %struct.sshkey**, %struct.sshkey** }
%struct.sshkey = type { i32, i32 }
%struct.ssh = type { i32 }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sensitive_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KEY_ECDSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sshkey* (i32, i32, i32, %struct.ssh*)* @get_hostkey_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sshkey* @get_hostkey_by_type(i32 %0, i32 %1, i32 %2, %struct.ssh* %3) #0 {
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssh*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sshkey*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ssh* %3, %struct.ssh** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %73, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %23 [
    i32 129, label %18
    i32 132, label %18
    i32 131, label %18
    i32 130, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %16, %16, %16, %16, %16
  %19 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 2), align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %19, i64 %20
  %22 = load %struct.sshkey*, %struct.sshkey** %21, align 8
  store %struct.sshkey* %22, %struct.sshkey** %11, align 8
  br label %39

23:                                               ; preds = %16
  %24 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %24, i64 %25
  %27 = load %struct.sshkey*, %struct.sshkey** %26, align 8
  store %struct.sshkey* %27, %struct.sshkey** %11, align 8
  %28 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %29 = icmp eq %struct.sshkey* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %34, i64 %35
  %37 = load %struct.sshkey*, %struct.sshkey** %36, align 8
  store %struct.sshkey* %37, %struct.sshkey** %11, align 8
  br label %38

38:                                               ; preds = %33, %30, %23
  br label %39

39:                                               ; preds = %38, %18
  %40 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %41 = icmp ne %struct.sshkey* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %44 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %50 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @KEY_ECDSA, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %56 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %64, i64 %65
  %67 = load %struct.sshkey*, %struct.sshkey** %66, align 8
  br label %70

68:                                               ; preds = %60
  %69 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi %struct.sshkey* [ %67, %63 ], [ %69, %68 ]
  store %struct.sshkey* %71, %struct.sshkey** %5, align 8
  br label %77

72:                                               ; preds = %54, %42, %39
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %12

76:                                               ; preds = %12
  store %struct.sshkey* null, %struct.sshkey** %5, align 8
  br label %77

77:                                               ; preds = %76, %70
  %78 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  ret %struct.sshkey* %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
