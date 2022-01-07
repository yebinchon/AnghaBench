; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_rule_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_rule_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsde_parse_rule_string(i8* %0, %struct.mac_bsdextended_rule* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mac_bsdextended_rule*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8*], align 16
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.mac_bsdextended_rule* %1, %struct.mac_bsdextended_rule** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %9, align 8
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %29, %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 9
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  br label %17

32:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  %33 = getelementptr inbounds [100 x i8*], [100 x i8*]* %11, i64 0, i64 0
  store i8** %33, i8*** %12, align 8
  br label %34

34:                                               ; preds = %53, %32
  %35 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = load i8**, i8*** %12, align 8
  store i8* %35, i8** %36, align 8
  %37 = icmp ne i8* %35, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i8**, i8*** %12, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i8**, i8*** %12, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %12, align 8
  %49 = getelementptr inbounds [100 x i8*], [100 x i8*]* %11, i64 0, i64 100
  %50 = icmp uge i8** %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %38
  br label %34

54:                                               ; preds = %51, %34
  %55 = load i32, i32* %13, align 4
  %56 = getelementptr inbounds [100 x i8*], [100 x i8*]* %11, i64 0, i64 0
  %57 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @bsde_parse_rule(i32 %55, i8** %56, %struct.mac_bsdextended_rule* %57, i64 %58, i8* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* %14, align 4
  ret i32 %63
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @bsde_parse_rule(i32, i8**, %struct.mac_bsdextended_rule*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
