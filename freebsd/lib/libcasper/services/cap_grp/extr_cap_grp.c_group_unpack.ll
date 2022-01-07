; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_group_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_group_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"gr_name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"gr_passwd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gr_gid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.group*, i8*, i64)* @group_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_unpack(i32* %0, %struct.group* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.group* %1, %struct.group** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @nvlist_exists_string(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %50

16:                                               ; preds = %4
  %17 = load %struct.group*, %struct.group** %7, align 8
  %18 = call i32 @explicit_bzero(%struct.group* %17, i32 24)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.group*, %struct.group** %7, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 3
  %22 = call i32 @group_unpack_string(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %21, i8** %8, i64* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %16
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.group*, %struct.group** %7, align 8
  %30 = getelementptr inbounds %struct.group, %struct.group* %29, i32 0, i32 2
  %31 = call i32 @group_unpack_string(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %30, i8** %8, i64* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %50

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @nvlist_get_number(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.group*, %struct.group** %7, align 8
  %40 = getelementptr inbounds %struct.group, %struct.group* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.group*, %struct.group** %7, align 8
  %43 = getelementptr inbounds %struct.group, %struct.group* %42, i32 0, i32 0
  %44 = call i32 @group_unpack_members(i32* %41, i32* %43, i8** %8, i64* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %47, %34, %25, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @explicit_bzero(%struct.group*, i32) #1

declare dso_local i32 @group_unpack_string(i32*, i8*, i32*, i8**, i64*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @group_unpack_members(i32*, i32*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
