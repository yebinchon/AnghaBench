; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_runtest_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_runtest_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@GID_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @runtest_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtest_fields(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.group, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @cap_setgrent(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.group* @cap_getgrent(i32* %11)
  store %struct.group* %12, %struct.group** %7, align 8
  %13 = load %struct.group*, %struct.group** %7, align 8
  %14 = call i32 @group_fields(%struct.group* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @cap_setgrent(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %23 = call i32 @cap_getgrent_r(i32* %21, %struct.group* %8, i8* %22, i32 1024, %struct.group** %7)
  %24 = load %struct.group*, %struct.group** %7, align 8
  %25 = call i32 @group_fields(%struct.group* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %66

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.group* @cap_getgrnam(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.group* %31, %struct.group** %7, align 8
  %32 = load %struct.group*, %struct.group** %7, align 8
  %33 = call i32 @group_fields(%struct.group* %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %66

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %40 = call i32 @cap_getgrnam_r(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.group* %8, i8* %39, i32 1024, %struct.group** %7)
  %41 = load %struct.group*, %struct.group** %7, align 8
  %42 = call i32 @group_fields(%struct.group* %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %66

46:                                               ; preds = %37
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @GID_WHEEL, align 4
  %49 = call %struct.group* @cap_getgrgid(i32* %47, i32 %48)
  store %struct.group* %49, %struct.group** %7, align 8
  %50 = load %struct.group*, %struct.group** %7, align 8
  %51 = call i32 @group_fields(%struct.group* %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @GID_WHEEL, align 4
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %59 = call i32 @cap_getgrgid_r(i32* %56, i32 %57, %struct.group* %8, i8* %58, i32 1024, %struct.group** %7)
  %60 = load %struct.group*, %struct.group** %7, align 8
  %61 = call i32 @group_fields(%struct.group* %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %54, %45, %36, %28, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @cap_setgrent(i32*) #1

declare dso_local %struct.group* @cap_getgrent(i32*) #1

declare dso_local i32 @group_fields(%struct.group*) #1

declare dso_local i32 @cap_getgrent_r(i32*, %struct.group*, i8*, i32, %struct.group**) #1

declare dso_local %struct.group* @cap_getgrnam(i32*, i8*) #1

declare dso_local i32 @cap_getgrnam_r(i32*, i8*, %struct.group*, i8*, i32, %struct.group**) #1

declare dso_local %struct.group* @cap_getgrgid(i32*, i32) #1

declare dso_local i32 @cap_getgrgid_r(i32*, i32, %struct.group*, i8*, i32, %struct.group**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
