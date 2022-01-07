; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_ypxfr_misc.c_ypxfr_get_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_ypxfr_misc.c_ypxfr_get_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@YPXFR_NODOM = common dso_local global i64 0, align 8
@yp_errno = common dso_local global i32 0, align 4
@YPXFR_NOMAP = common dso_local global i64 0, align 8
@YPXFR_YPERR = common dso_local global i64 0, align 8
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"couldn't create udp handle to ypserv\00", align 1
@YPXFR_RPC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"YPPROC_ORDER failed\00", align 1
@YP_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ypxfr_get_order(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @yp_order(i8* %18, i8* %19, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %31 [
    i32 133, label %24
    i32 132, label %27
    i32 131, label %30
  ]

24:                                               ; preds = %22
  %25 = load i64, i64* @YPXFR_NODOM, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @yp_errno, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load i64, i64* @YPXFR_NOMAP, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @yp_errno, align 4
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %22, %30
  %32 = load i64, i64* @YPXFR_YPERR, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @yp_errno, align 4
  br label %34

34:                                               ; preds = %31, %27, %24
  store i64 0, i64* %5, align 8
  br label %92

35:                                               ; preds = %17
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %5, align 8
  br label %92

38:                                               ; preds = %4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @YPPROG, align 4
  %41 = load i32, i32* @YPVERS, align 4
  %42 = call i32* @clnt_create(i8* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %42, i32** %12, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @yp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i64, i64* @YPXFR_RPC, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @yp_errno, align 4
  store i64 0, i64* %5, align 8
  br label %92

49:                                               ; preds = %38
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call %struct.TYPE_5__* @ypproc_order_2(%struct.TYPE_6__* %14, i32* %54)
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %13, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @clnt_sperror(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 @yp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @clnt_destroy(i32* %61)
  %63 = load i64, i64* @YPXFR_RPC, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @yp_errno, align 4
  store i64 0, i64* %5, align 8
  br label %92

65:                                               ; preds = %49
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @clnt_destroy(i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @YP_TRUE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %84 [
    i32 130, label %77
    i32 129, label %80
    i32 128, label %83
  ]

77:                                               ; preds = %73
  %78 = load i64, i64* @YPXFR_NODOM, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @yp_errno, align 4
  br label %87

80:                                               ; preds = %73
  %81 = load i64, i64* @YPXFR_NOMAP, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @yp_errno, align 4
  br label %87

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %73, %83
  %85 = load i64, i64* @YPXFR_YPERR, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* @yp_errno, align 4
  br label %87

87:                                               ; preds = %84, %80, %77
  store i64 0, i64* %5, align 8
  br label %92

88:                                               ; preds = %65
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %88, %87, %57, %44, %35, %34
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i32 @yp_order(i8*, i8*, i32*) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @yp_error(i8*, i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local %struct.TYPE_5__* @ypproc_order_2(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @clnt_sperror(i32*, i8*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
