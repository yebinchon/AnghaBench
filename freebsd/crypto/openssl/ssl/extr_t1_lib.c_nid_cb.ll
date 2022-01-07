; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_nid_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_nid_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@MAX_CURVELIST = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @nid_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nid_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

17:                                               ; preds = %3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_CURVELIST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %87

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 19
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %87

28:                                               ; preds = %24
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %37 = call i32 @EC_curve_nist2nid(i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NID_undef, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %43 = call i32 @OBJ_sn2nid(i8* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %28
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @NID_undef, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %50 = call i32 @OBJ_ln2nid(i8* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @NID_undef, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %87

56:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %87

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %78, i32* %86, align 4
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %77, %72, %55, %27, %23, %16
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @EC_curve_nist2nid(i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
