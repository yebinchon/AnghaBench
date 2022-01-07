; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_nvlist_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_nvlist_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_TYPE_UINT64 = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*, i8*)* @nvlist_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvlist_find(i8* %0, i8* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %12, align 8
  %23 = call i32 @xdr_int(i8** %12, i32* %14)
  %24 = call i32 @xdr_int(i8** %12, i32* %14)
  %25 = load i8*, i8** %12, align 8
  store i8* %25, i8** %13, align 8
  %26 = call i32 @xdr_int(i8** %12, i32* %15)
  %27 = call i32 @xdr_int(i8** %12, i32* %16)
  br label %28

28:                                               ; preds = %97, %5
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %101

36:                                               ; preds = %34
  %37 = call i32 @xdr_int(i8** %12, i32* %17)
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %20, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @roundup(i32 %39, i32 4)
  %41 = load i8*, i8** %12, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %12, align 8
  %44 = call i32 @xdr_int(i8** %12, i32* %18)
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %20, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @memcmp(i8* %45, i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %92, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = call i32 @xdr_int(i8** %12, i32* %19)
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %11, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = call i32 @xdr_uint64_t(i8** %12, i32* %67)
  store i32 0, i32* %6, align 4
  br label %103

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @DATA_TYPE_STRING, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = call i32 @xdr_int(i8** %12, i32* %21)
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = bitcast i8* %76 to i8**
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %6, align 4
  br label %103

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @DATA_TYPE_NVLIST, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = bitcast i8* %88 to i8**
  store i8* %87, i8** %89, align 8
  store i32 0, i32* %6, align 4
  br label %103

90:                                               ; preds = %82
  %91 = load i32, i32* @EIO, align 4
  store i32 %91, i32* %6, align 4
  br label %103

92:                                               ; preds = %50, %36
  %93 = load i8*, i8** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8* %96, i8** %12, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %12, align 8
  store i8* %98, i8** %13, align 8
  %99 = call i32 @xdr_int(i8** %12, i32* %15)
  %100 = call i32 @xdr_int(i8** %12, i32* %16)
  br label %28

101:                                              ; preds = %34
  %102 = load i32, i32* @EIO, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %90, %86, %73, %65
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @xdr_int(i8**, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @xdr_uint64_t(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
