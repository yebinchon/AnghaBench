; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_destroy_sensitive_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_destroy_sensitive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32**, i32** }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sensitive_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_sensitive_data() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %37, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @sshkey_free(i32* %16)
  %18 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %19 = load i64, i64* %1, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %12, %6
  %22 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @sshkey_free(i32* %31)
  %33 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %27, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %1, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %1, align 8
  br label %2

40:                                               ; preds = %2
  ret void
}

declare dso_local i32 @sshkey_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
