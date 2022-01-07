; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmpcodebynumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmpcodebynumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmpcodeent = type { i64, i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@icmp_code = common dso_local global %struct.icmpcodeent* null, align 8
@icmp6_code = common dso_local global %struct.icmpcodeent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.icmpcodeent* @geticmpcodebynumber(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.icmpcodeent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @AF_INET6, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %16 = call i32 @nitems(%struct.icmpcodeent* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %20, i64 %22
  %24 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %29, i64 %31
  %33 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %37, i64 %39
  store %struct.icmpcodeent* %40, %struct.icmpcodeent** %4, align 8
  br label %81

41:                                               ; preds = %27, %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %13

45:                                               ; preds = %13
  br label %80

46:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %50 = call i32 @nitems(%struct.icmpcodeent* %49)
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %54, i64 %56
  %58 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %53, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %63, i64 %65
  %67 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %62, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %71, i64 %73
  store %struct.icmpcodeent* %74, %struct.icmpcodeent** %4, align 8
  br label %81

75:                                               ; preds = %61, %52
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %47

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79, %45
  store %struct.icmpcodeent* null, %struct.icmpcodeent** %4, align 8
  br label %81

81:                                               ; preds = %80, %70, %36
  %82 = load %struct.icmpcodeent*, %struct.icmpcodeent** %4, align 8
  ret %struct.icmpcodeent* %82
}

declare dso_local i32 @nitems(%struct.icmpcodeent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
