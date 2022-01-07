; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_pass_manifest.c_pass_manifest_export_envs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_pass_manifest.c_pass_manifest_export_envs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@manifest_present = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"veriexec.manifest_path\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"veriexec.manifest_hash\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"veriexec.manifest_prefix\00", align 1
@manifest_path = common dso_local global i8* null, align 8
@manifest_hash = common dso_local global i8* null, align 8
@manifest_prefix = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pass_manifest_export_envs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @manifest_present, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i32 @unsetenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @unsetenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @unsetenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %35

9:                                                ; preds = %0
  %10 = load i8*, i8** @manifest_path, align 8
  %11 = call i32 @setenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %10, i32 1)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %35

16:                                               ; preds = %9
  %17 = load i8*, i8** @manifest_hash, align 8
  %18 = call i32 @setenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 1)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @unsetenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %35

24:                                               ; preds = %16
  %25 = load i8*, i8** @manifest_prefix, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** @manifest_prefix, align 8
  %32 = call i32 @setenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 1)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %21, %14, %5
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
