; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getnetgrent.c_getnetgrent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getnetgrent.c_getnetgrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getnetgrent.ngrp_storage = internal global i8* null, align 8
@getnetgrent.ngrp_storage_size = internal global i64 0, align 8
@NGRP_STORAGE_INITIAL = common dso_local global i64 0, align 8
@getnetgrent_dtab = common dso_local global i32 0, align 4
@NSDB_NETGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"getnetgrent_r\00", align 1
@defaultsrc = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NGRP_STORAGE_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnetgrent(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** @getnetgrent.ngrp_storage, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i64, i64* @NGRP_STORAGE_INITIAL, align 8
  store i64 %13, i64* @getnetgrent.ngrp_storage_size, align 8
  %14 = load i64, i64* @getnetgrent.ngrp_storage_size, align 8
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** @getnetgrent.ngrp_storage, align 8
  %16 = load i8*, i8** @getnetgrent.ngrp_storage, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %74

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %3
  br label %21

21:                                               ; preds = %65, %20
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* @getnetgrent_dtab, align 4
  %23 = load i32, i32* @NSDB_NETGROUP, align 4
  %24 = load i32, i32* @defaultsrc, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** @getnetgrent.ngrp_storage, align 8
  %29 = load i64, i64* @getnetgrent.ngrp_storage_size, align 8
  %30 = call i32 @_nsdispatch(i32* null, i32 %22, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, i8** %25, i8** %26, i8** %27, i8* %28, i64 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ERANGE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i64, i64* @getnetgrent.ngrp_storage_size, align 8
  %40 = mul i64 %39, 2
  store i64 %40, i64* @getnetgrent.ngrp_storage_size, align 8
  %41 = load i64, i64* @getnetgrent.ngrp_storage_size, align 8
  %42 = load i64, i64* @NGRP_STORAGE_MAX, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** @getnetgrent.ngrp_storage, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** @getnetgrent.ngrp_storage, align 8
  %47 = load i32, i32* @ERANGE, align 4
  store i32 %47, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  br label %74

48:                                               ; preds = %38
  %49 = load i8*, i8** @getnetgrent.ngrp_storage, align 8
  %50 = load i64, i64* @getnetgrent.ngrp_storage_size, align 8
  %51 = call i8* @reallocf(i8* %49, i64 %50)
  store i8* %51, i8** @getnetgrent.ngrp_storage, align 8
  %52 = load i8*, i8** @getnetgrent.ngrp_storage, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %74

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %34, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @NS_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ERANGE, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br i1 %66, label %21, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NS_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* @errno, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %71, %54, %44, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @_nsdispatch(i32*, i32, i32, i8*, i32, i8**, i8**, i8**, i8*, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @reallocf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
