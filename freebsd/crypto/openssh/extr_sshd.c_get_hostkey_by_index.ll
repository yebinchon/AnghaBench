; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_get_hostkey_by_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_get_hostkey_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.sshkey** }
%struct.sshkey = type { i32 }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sensitive_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshkey* @get_hostkey_by_index(i32 %0) #0 {
  %2 = alloca %struct.sshkey*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store %struct.sshkey* null, %struct.sshkey** %2, align 8
  br label %18

12:                                               ; preds = %6
  %13 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %13, i64 %15
  %17 = load %struct.sshkey*, %struct.sshkey** %16, align 8
  store %struct.sshkey* %17, %struct.sshkey** %2, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  ret %struct.sshkey* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
