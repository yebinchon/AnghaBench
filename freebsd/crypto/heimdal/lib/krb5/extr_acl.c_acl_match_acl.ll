; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_acl_match_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_acl_match_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_field = type { %struct.acl_field* }

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acl_field*, i8*)* @acl_match_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_match_acl(i32 %0, %struct.acl_field* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acl_field*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.acl_field* %1, %struct.acl_field** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %9

9:                                                ; preds = %32, %18, %3
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %11 = call i32 @strsep_copy(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10, i32 256)
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %9

19:                                               ; preds = %13
  %20 = load %struct.acl_field*, %struct.acl_field** %6, align 8
  %21 = icmp eq %struct.acl_field* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %27 = load %struct.acl_field*, %struct.acl_field** %6, align 8
  %28 = call i32 @acl_match_field(i32 %25, i8* %26, %struct.acl_field* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load %struct.acl_field*, %struct.acl_field** %6, align 8
  %34 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %33, i32 0, i32 0
  %35 = load %struct.acl_field*, %struct.acl_field** %34, align 8
  store %struct.acl_field* %35, %struct.acl_field** %6, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.acl_field*, %struct.acl_field** %6, align 8
  %38 = icmp ne %struct.acl_field* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39, %30, %22
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @strsep_copy(i8**, i8*, i8*, i32) #1

declare dso_local i32 @acl_match_field(i32, i8*, %struct.acl_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
