; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_complete_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hostapd_cli.c_hostapd_complete_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"deny_mac_file\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"accept_mac_file\00", align 1
@__const.hostapd_complete_set.fields = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32)* @hostapd_complete_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @hostapd_complete_set(i8* %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_cmd_arg_num(i8* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.hostapd_complete_set.fields to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i8** %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i8** @os_calloc(i32 %21, i32 8)
  store i8** %22, i8*** %10, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i8** null, i8*** %3, align 8
  br label %56

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @os_strdup(i8* %35)
  %37 = load i8**, i8*** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %36, i8** %40, align 8
  %41 = load i8**, i8*** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %31
  %48 = load i8**, i8*** %10, align 8
  store i8** %48, i8*** %3, align 8
  br label %56

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load i8**, i8*** %10, align 8
  store i8** %54, i8*** %3, align 8
  br label %56

55:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %56

56:                                               ; preds = %55, %53, %47, %25
  %57 = load i8**, i8*** %3, align 8
  ret i8** %57
}

declare dso_local i32 @get_cmd_arg_num(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8** @os_calloc(i32, i32) #1

declare dso_local i8* @os_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
