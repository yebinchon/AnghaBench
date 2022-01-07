; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_cmp_ifp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_cmp_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_cmp_ifp(%struct.pf_rule* %0, %struct.pf_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_rule*, align 8
  %5 = alloca %struct.pf_rule*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %4, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %5, align 8
  %6 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %7 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %10 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strcmp(i8* %8, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %16 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %2
  store i32 1, i32* %3, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %25 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pf_rule*, %struct.pf_rule** %5, align 8
  %28 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
