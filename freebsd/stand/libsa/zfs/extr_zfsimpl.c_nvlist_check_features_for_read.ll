; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_nvlist_check_features_for_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_nvlist_check_features_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@features_for_read = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"ZFS: unsupported feature: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nvlist_check_features_for_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvlist_check_features_for_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %3, align 8
  %15 = call i32 @xdr_int(i8** %3, i32* %5)
  %16 = call i32 @xdr_int(i8** %3, i32* %5)
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %4, align 8
  %18 = call i32 @xdr_int(i8** %3, i32* %6)
  %19 = call i32 @xdr_int(i8** %3, i32* %7)
  br label %20

20:                                               ; preds = %66, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %74

28:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  %29 = call i32 @xdr_int(i8** %3, i32* %9)
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @roundup(i32 %31, i32 4)
  %33 = load i8*, i8** %3, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %3, align 8
  %36 = call i32 @xdr_int(i8** %3, i32* %10)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %56, %28
  %38 = load i32**, i32*** @features_for_read, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  %46 = load i32**, i32*** @features_for_read, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @memcmp(i8* %45, i32* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 1, i32* %13, align 4
  br label %59

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %37

59:                                               ; preds = %54, %37
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %3, align 8
  %71 = load i8*, i8** %3, align 8
  store i8* %71, i8** %4, align 8
  %72 = call i32 @xdr_int(i8** %3, i32* %6)
  %73 = call i32 @xdr_int(i8** %3, i32* %7)
  br label %20

74:                                               ; preds = %26
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @xdr_int(i8**, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
