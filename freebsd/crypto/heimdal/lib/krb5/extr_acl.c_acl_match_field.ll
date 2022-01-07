; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_acl_match_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_acl_match_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_field = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@acl_string = common dso_local global i64 0, align 8
@acl_fnmatch = common dso_local global i64 0, align 8
@acl_retval = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.acl_field*)* @acl_match_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_match_field(i32 %0, i8* %1, %struct.acl_field* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acl_field*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.acl_field* %2, %struct.acl_field** %7, align 8
  %8 = load %struct.acl_field*, %struct.acl_field** %7, align 8
  %9 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @acl_string, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.acl_field*, %struct.acl_field** %7, align 8
  %15 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load %struct.acl_field*, %struct.acl_field** %7, align 8
  %25 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @acl_fnmatch, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.acl_field*, %struct.acl_field** %7, align 8
  %31 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @fnmatch(i32 %33, i8* %34, i32 0)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %23
  %40 = load %struct.acl_field*, %struct.acl_field** %7, align 8
  %41 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @acl_retval, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strdup(i8* %46)
  %48 = load %struct.acl_field*, %struct.acl_field** %7, align 8
  %49 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %45, %29, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fnmatch(i32, i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
