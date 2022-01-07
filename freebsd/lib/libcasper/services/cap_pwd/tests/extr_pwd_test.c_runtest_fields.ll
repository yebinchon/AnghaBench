; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_runtest_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/tests/extr_pwd_test.c_runtest_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@UID_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @runtest_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtest_fields(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.passwd, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @cap_setpwent(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.passwd* @cap_getpwent(i32* %11)
  store %struct.passwd* %12, %struct.passwd** %7, align 8
  %13 = load %struct.passwd*, %struct.passwd** %7, align 8
  %14 = call i32 @passwd_fields(%struct.passwd* %13)
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @cap_setpwent(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %25 = call i32 @cap_getpwent_r(i32* %23, %struct.passwd* %8, i8* %24, i32 1024, %struct.passwd** %7)
  %26 = load %struct.passwd*, %struct.passwd** %7, align 8
  %27 = call i32 @passwd_fields(%struct.passwd* %26)
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %78

33:                                               ; preds = %20
  %34 = load i32*, i32** %4, align 8
  %35 = call %struct.passwd* @cap_getpwnam(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.passwd* %35, %struct.passwd** %7, align 8
  %36 = load %struct.passwd*, %struct.passwd** %7, align 8
  %37 = call i32 @passwd_fields(%struct.passwd* %36)
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %78

43:                                               ; preds = %33
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %46 = call i32 @cap_getpwnam_r(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.passwd* %8, i8* %45, i32 1024, %struct.passwd** %7)
  %47 = load %struct.passwd*, %struct.passwd** %7, align 8
  %48 = call i32 @passwd_fields(%struct.passwd* %47)
  %49 = load i32, i32* %5, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %78

54:                                               ; preds = %43
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @UID_ROOT, align 4
  %57 = call %struct.passwd* @cap_getpwuid(i32* %55, i32 %56)
  store %struct.passwd* %57, %struct.passwd** %7, align 8
  %58 = load %struct.passwd*, %struct.passwd** %7, align 8
  %59 = call i32 @passwd_fields(%struct.passwd* %58)
  %60 = load i32, i32* %5, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %78

65:                                               ; preds = %54
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @UID_ROOT, align 4
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %69 = call i32 @cap_getpwuid_r(i32* %66, i32 %67, %struct.passwd* %8, i8* %68, i32 1024, %struct.passwd** %7)
  %70 = load %struct.passwd*, %struct.passwd** %7, align 8
  %71 = call i32 @passwd_fields(%struct.passwd* %70)
  %72 = load i32, i32* %5, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %78

77:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %64, %53, %42, %32, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @cap_setpwent(i32*) #1

declare dso_local %struct.passwd* @cap_getpwent(i32*) #1

declare dso_local i32 @passwd_fields(%struct.passwd*) #1

declare dso_local i32 @cap_getpwent_r(i32*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local %struct.passwd* @cap_getpwnam(i32*, i8*) #1

declare dso_local i32 @cap_getpwnam_r(i32*, i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local %struct.passwd* @cap_getpwuid(i32*, i32) #1

declare dso_local i32 @cap_getpwuid_r(i32*, i32, %struct.passwd*, i8*, i32, %struct.passwd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
