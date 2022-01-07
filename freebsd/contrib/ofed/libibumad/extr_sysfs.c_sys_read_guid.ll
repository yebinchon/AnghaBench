; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_sysfs.c_sys_read_guid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_sysfs.c_sys_read_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c": \09\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_read_guid(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %17 = call i32 @sys_read_string(i8* %14, i8* %15, i8* %16, i32 32)
  store i32 %17, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %39, %21
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 %33, 16
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strtoul(i8* %35, i32* null, i32 16)
  %37 = and i32 %36, 65535
  %38 = or i32 %34, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @htobe64(i32 %43)
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %29, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sys_read_string(i8*, i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
