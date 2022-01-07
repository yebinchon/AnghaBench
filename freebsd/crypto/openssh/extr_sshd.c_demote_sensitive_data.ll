; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_demote_sensitive_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_demote_sensitive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.sshkey** }
%struct.sshkey = type { i32 }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sensitive_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"could not demote host %s key: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demote_sensitive_data() #0 {
  %1 = alloca %struct.sshkey*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %9, i64 %10
  %12 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %13 = icmp ne %struct.sshkey* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %15, i64 %16
  %18 = load %struct.sshkey*, %struct.sshkey** %17, align 8
  %19 = call i32 @sshkey_from_private(%struct.sshkey* %18, %struct.sshkey** %1)
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %22, i64 %23
  %25 = load %struct.sshkey*, %struct.sshkey** %24, align 8
  %26 = call i32 @sshkey_type(%struct.sshkey* %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ssh_err(i32 %27)
  %29 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %21, %14
  %31 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %32 = load i64, i64* %2, align 8
  %33 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %31, i64 %32
  %34 = load %struct.sshkey*, %struct.sshkey** %33, align 8
  %35 = call i32 @sshkey_free(%struct.sshkey* %34)
  %36 = load %struct.sshkey*, %struct.sshkey** %1, align 8
  %37 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %37, i64 %38
  store %struct.sshkey* %36, %struct.sshkey** %39, align 8
  br label %40

40:                                               ; preds = %30, %8
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %2, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %2, align 8
  br label %4

44:                                               ; preds = %4
  ret void
}

declare dso_local i32 @sshkey_from_private(%struct.sshkey*, %struct.sshkey**) #1

declare dso_local i32 @fatal(i8*, i32, i32) #1

declare dso_local i32 @sshkey_type(%struct.sshkey*) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
