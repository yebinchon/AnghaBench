; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_query_and_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_query_and_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ibd_timeout = common dso_local global i32 0, align 4
@ibmad_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s query failed on %s, %s port %d\00", align 1
@summary = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" [%s == %u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i8*, i32, i8*, i32, i32, i32)* @query_and_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_and_dump(i8* %0, i64 %1, i32* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [1024 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %24 = getelementptr inbounds [1024 x i32], [1024 x i32]* %20, i64 0, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 4096)
  %26 = getelementptr inbounds [1024 x i32], [1024 x i32]* %20, i64 0, i64 0
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @ibd_timeout, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @ibmad_port, align 4
  %32 = call i32 @pma_query_via(i32* %26, i32* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %9
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @portid2str(i32* %37)
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @IBWARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i32 %38, i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summary, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @summary, i32 0, i32 0), align 4
  store i32 0, i32* %10, align 4
  br label %79

43:                                               ; preds = %9
  store i32 0, i32* %23, align 4
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %22, align 4
  br label %45

45:                                               ; preds = %74, %43
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %20, i64 0, i64 0
  %51 = load i32, i32* %22, align 4
  %52 = bitcast i32* %21 to i8*
  %53 = call i32 @mad_decode_field(i32* %50, i32 %51, i8* %52)
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %23, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %23, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %61, %63
  %65 = load i32, i32* %22, align 4
  %66 = call i8* @mad_field_name(i32 %65)
  %67 = load i32, i32* %21, align 4
  %68 = call i64 @snprintf(i8* %60, i64 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load i32, i32* %23, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %23, align 4
  br label %73

73:                                               ; preds = %56, %49
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %22, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %22, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load i32, i32* %23, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %34
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pma_query_via(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IBWARN(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @portid2str(i32*) #1

declare dso_local i32 @mad_decode_field(i32*, i32, i8*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i8* @mad_field_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
