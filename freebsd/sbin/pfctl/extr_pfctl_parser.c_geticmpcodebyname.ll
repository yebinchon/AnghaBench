; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmpcodebyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_geticmpcodebyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmpcodeent = type { i64, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@icmp_code = common dso_local global %struct.icmpcodeent* null, align 8
@icmp6_code = common dso_local global %struct.icmpcodeent* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.icmpcodeent* @geticmpcodebyname(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.icmpcodeent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @AF_INET6, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %16 = call i32 @nitems(%struct.icmpcodeent* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %20, i64 %22
  %24 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %29, i64 %31
  %33 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcmp(i8* %28, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp_code, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %38, i64 %40
  store %struct.icmpcodeent* %41, %struct.icmpcodeent** %4, align 8
  br label %83

42:                                               ; preds = %27, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %13

46:                                               ; preds = %13
  br label %82

47:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %51 = call i32 @nitems(%struct.icmpcodeent* %50)
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %55, i64 %57
  %59 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %64, i64 %66
  %68 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @strcmp(i8* %63, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %62
  %73 = load %struct.icmpcodeent*, %struct.icmpcodeent** @icmp6_code, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.icmpcodeent, %struct.icmpcodeent* %73, i64 %75
  store %struct.icmpcodeent* %76, %struct.icmpcodeent** %4, align 8
  br label %83

77:                                               ; preds = %62, %53
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %48

81:                                               ; preds = %48
  br label %82

82:                                               ; preds = %81, %46
  store %struct.icmpcodeent* null, %struct.icmpcodeent** %4, align 8
  br label %83

83:                                               ; preds = %82, %72, %37
  %84 = load %struct.icmpcodeent*, %struct.icmpcodeent** %4, align 8
  ret %struct.icmpcodeent* %84
}

declare dso_local i32 @nitems(%struct.icmpcodeent*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
