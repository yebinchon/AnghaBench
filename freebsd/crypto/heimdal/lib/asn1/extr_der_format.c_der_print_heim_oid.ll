; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_format.c_der_print_heim_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_format.c_der_print_heim_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }
%struct.rk_strpool = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_print_heim_oid(%struct.TYPE_3__* %0, i8 signext %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8**, align 8
  %8 = alloca %struct.rk_strpool*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8** %2, i8*** %7, align 8
  store %struct.rk_strpool* null, %struct.rk_strpool** %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %52, %16
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load %struct.rk_strpool*, %struct.rk_strpool** %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %30)
  store %struct.rk_strpool* %31, %struct.rk_strpool** %8, align 8
  %32 = load %struct.rk_strpool*, %struct.rk_strpool** %8, align 8
  %33 = icmp ne %struct.rk_strpool* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, 1
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.rk_strpool*, %struct.rk_strpool** %8, align 8
  %43 = load i8, i8* %6, align 1
  %44 = call %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %43)
  store %struct.rk_strpool* %44, %struct.rk_strpool** %8, align 8
  br label %45

45:                                               ; preds = %41, %34, %23
  %46 = load %struct.rk_strpool*, %struct.rk_strpool** %8, align 8
  %47 = icmp eq %struct.rk_strpool* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8**, i8*** %7, align 8
  store i8* null, i8** %49, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.rk_strpool*, %struct.rk_strpool** %8, align 8
  %57 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %56)
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %62, %48, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool*, i8*, i8 signext) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
