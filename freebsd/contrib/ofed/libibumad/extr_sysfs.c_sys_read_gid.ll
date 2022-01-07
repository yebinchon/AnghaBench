; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_sysfs.c_sys_read_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_sysfs.c_sys_read_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.umad_gid = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c": \09\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_read_gid(i8* %0, i8* %1, %union.umad_gid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.umad_gid*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %union.umad_gid* %2, %union.umad_gid** %7, align 8
  %14 = load %union.umad_gid*, %union.umad_gid** %7, align 8
  %15 = bitcast %union.umad_gid* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %19 = call i32 @sys_read_string(i8* %16, i8* %17, i8* %18, i32 64)
  store i32 %19, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %43, %23
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strtoul(i8* %35, i32* null, i32 16)
  %37 = and i32 %36, 65535
  %38 = call i32 @htobe16(i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %25

46:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %31, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @sys_read_string(i8*, i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
