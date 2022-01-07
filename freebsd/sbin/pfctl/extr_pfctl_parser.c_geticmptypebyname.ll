; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmptypebyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmptypebyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmptypeent = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@icmp_type = common dso_local global %struct.icmptypeent* null, align 8
@icmp6_type = common dso_local global %struct.icmptypeent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.icmptypeent* @geticmptypebyname(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.icmptypeent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @AF_INET6, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp_type, align 8
  %14 = call i32 @nitems(%struct.icmptypeent* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp_type, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %18, i64 %20
  %22 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i8* %17, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp_type, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %27, i64 %29
  store %struct.icmptypeent* %30, %struct.icmptypeent** %3, align 8
  br label %63

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11

35:                                               ; preds = %11
  br label %62

36:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp6_type, align 8
  %40 = call i32 @nitems(%struct.icmptypeent* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp6_type, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %44, i64 %46
  %48 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i8* %43, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load %struct.icmptypeent*, %struct.icmptypeent** @icmp6_type, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.icmptypeent, %struct.icmptypeent* %53, i64 %55
  store %struct.icmptypeent* %56, %struct.icmptypeent** %3, align 8
  br label %63

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %37

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61, %35
  store %struct.icmptypeent* null, %struct.icmptypeent** %3, align 8
  br label %63

63:                                               ; preds = %62, %52, %26
  %64 = load %struct.icmptypeent*, %struct.icmptypeent** %3, align 8
  ret %struct.icmptypeent* %64
}

declare dso_local i32 @nitems(%struct.icmptypeent*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
