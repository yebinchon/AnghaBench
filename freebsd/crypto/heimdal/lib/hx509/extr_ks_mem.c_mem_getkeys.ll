; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_mem.c_mem_getkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_mem.c_mem_getkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i64* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32***)* @mem_getkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_getkeys(i32 %0, i32 %1, i8* %2, i32*** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32***, align 8
  %10 = alloca %struct.mem_data*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32*** %3, i32**** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.mem_data*
  store %struct.mem_data* %13, %struct.mem_data** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %31, %4
  %15 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %16 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %21 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %19, %14
  %29 = phi i1 [ false, %14 ], [ %27, %19 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %14

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32** @calloc(i32 %36, i32 8)
  %38 = load i32***, i32**** %9, align 8
  store i32** %37, i32*** %38, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %94, %34
  %40 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %41 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %46 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %44, %39
  %54 = phi i1 [ false, %39 ], [ %52, %44 ]
  br i1 %54, label %55, label %97

55:                                               ; preds = %53
  %56 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %57 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32* @_hx509_private_key_ref(i64 %62)
  %64 = load i32***, i32**** %9, align 8
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* %63, i32** %68, align 8
  %69 = load i32***, i32**** %9, align 8
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32***, i32**** %9, align 8
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = call i32 @hx509_private_key_free(i32** %86)
  br label %77

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @hx509_set_error_string(i32 %89, i32 0, i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  store i32 %92, i32* %5, align 4
  br label %103

93:                                               ; preds = %55
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %39

97:                                               ; preds = %53
  %98 = load i32***, i32**** %9, align 8
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* null, i32** %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %97, %88
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32* @_hx509_private_key_ref(i64) #1

declare dso_local i32 @hx509_private_key_free(i32**) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
