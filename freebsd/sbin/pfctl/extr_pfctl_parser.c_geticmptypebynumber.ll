; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmptypebynumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmptypebynumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmptypeent = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@icmp_type = common dso_local global %struct.icmptypeent* null, align 8
@icmp6_type = common dso_local global %struct.icmptypeent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.icmptypeent* @geticmptypebynumber(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.icmptypeent*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @AF_INET6, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %31, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp_type, align 8
  %14 = call i32 @nitems(%struct.icmptypeent* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp_type, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %18, i64 %20
  %22 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp_type, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %26, i64 %28
  store %struct.icmptypeent* %29, %struct.icmptypeent** %3, align 8
  br label %61

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %11

34:                                               ; preds = %11
  br label %60

35:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp6_type, align 8
  %39 = call i32 @nitems(%struct.icmptypeent* %38)
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp6_type, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %43, i64 %45
  %47 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp6_type, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %51, i64 %53
  store %struct.icmptypeent* %54, %struct.icmptypeent** %3, align 8
  br label %61

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %36

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %34
  store %struct.icmptypeent* null, %struct.icmptypeent** %3, align 8
  br label %61

61:                                               ; preds = %60, %50, %25
  %62 = load %struct.icmptypeent*, %struct.icmptypeent** %3, align 8
  ret %struct.icmptypeent* %62
}

declare dso_local i32 @nitems(%struct.icmptypeent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
