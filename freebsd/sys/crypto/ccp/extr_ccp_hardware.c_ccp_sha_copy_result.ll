; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_sha_copy_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_sha_copy_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA_Defn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SHA_definitions = common dso_local global %struct.SHA_Defn* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"bogus sha version auth_mode %u\0A\00", align 1
@LSB_ENTRY_SIZE = common dso_local global i64 0, align 8
@XXX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @ccp_sha_copy_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_sha_copy_result(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.SHA_Defn*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.SHA_Defn*, %struct.SHA_Defn** @SHA_definitions, align 8
  %12 = call i64 @nitems(%struct.SHA_Defn* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.SHA_Defn*, %struct.SHA_Defn** @SHA_definitions, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %15, i64 %16
  %18 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8, align 8
  br label %9

27:                                               ; preds = %22, %9
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.SHA_Defn*, %struct.SHA_Defn** @SHA_definitions, align 8
  %30 = call i64 @nitems(%struct.SHA_Defn* %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.SHA_Defn*, %struct.SHA_Defn** @SHA_definitions, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %36, i64 %37
  store %struct.SHA_Defn* %38, %struct.SHA_Defn** %7, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @byteswap256(i8* %39)
  %41 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %42 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = call i32 @byteswap256(i8* %51)
  br label %53

53:                                               ; preds = %48, %35
  %54 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %55 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %123 [
    i32 132, label %57
    i32 130, label %67
    i32 129, label %76
    i32 128, label %110
  ]

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 12
  %61 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %62 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @memcpy(i8* %58, i8* %60, i64 %65)
  br label %123

67:                                               ; preds = %53
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %71 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @memcpy(i8* %68, i8* %69, i64 %74)
  br label %123

76:                                               ; preds = %53
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %80 = mul nsw i64 %79, 3
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %83 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i8, i8* %81, i64 %87
  %89 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %90 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %95 = sub nsw i64 %93, %94
  %96 = call i32 @memcpy(i8* %77, i8* %88, i64 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.SHA_Defn*, %struct.SHA_Defn** %7, align 8
  %99 = getelementptr inbounds %struct.SHA_Defn, %struct.SHA_Defn* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %109 = call i32 @memcpy(i8* %106, i8* %107, i64 %108)
  br label %123

110:                                              ; preds = %53
  %111 = load i8*, i8** %4, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %116 = call i32 @memcpy(i8* %111, i8* %114, i64 %115)
  %117 = load i8*, i8** %4, align 8
  %118 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* @LSB_ENTRY_SIZE, align 8
  %122 = call i32 @memcpy(i8* %119, i8* %120, i64 %121)
  br label %123

123:                                              ; preds = %53, %110, %76, %67, %57
  ret void
}

declare dso_local i64 @nitems(%struct.SHA_Defn*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @byteswap256(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
