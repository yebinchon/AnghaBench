; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_check_key_not_revoked.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_check_key_not_revoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkeys = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sshkey = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sshkey* }

@MRK_REVOKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostkeys*, %struct.sshkey*)* @check_key_not_revoked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_key_not_revoked(%struct.hostkeys* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostkeys*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hostkeys* %0, %struct.hostkeys** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  %8 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %9 = call i32 @sshkey_is_cert(%struct.sshkey* %8)
  store i32 %9, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.hostkeys*, %struct.hostkeys** %4, align 8
  %13 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %10
  %17 = load %struct.hostkeys*, %struct.hostkeys** %4, align 8
  %18 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MRK_REVOKE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %59

27:                                               ; preds = %16
  %28 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %29 = load %struct.hostkeys*, %struct.hostkeys** %4, align 8
  %30 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @sshkey_equal_public(%struct.sshkey* %28, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %63

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %44 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.sshkey*, %struct.sshkey** %46, align 8
  %48 = load %struct.hostkeys*, %struct.hostkeys** %4, align 8
  %49 = getelementptr inbounds %struct.hostkeys, %struct.hostkeys* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @sshkey_equal_public(%struct.sshkey* %47, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %63

58:                                               ; preds = %42, %39
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %10

62:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %38
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i64 @sshkey_equal_public(%struct.sshkey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
