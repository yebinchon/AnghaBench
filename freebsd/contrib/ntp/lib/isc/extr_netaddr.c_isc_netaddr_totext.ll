; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_netaddr.c_isc_netaddr_totext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_netaddr.c_isc_netaddr_totext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@ISC_R_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%%%u\00", align 1
@ISC_R_NOSPACE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_netaddr_totext(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [46 x i8], align 16
  %7 = alloca [12 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %29 [
    i32 130, label %19
    i32 129, label %24
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %11, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %11, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @ISC_R_FAILURE, align 4
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %24, %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i64 0, i64 0
  %37 = call i8* @inet_ntop(i32 %34, i8* %35, i8* %36, i32 46)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @ISC_R_FAILURE, align 4
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %31
  %43 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i64 0, i64 0
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %46, 46
  %48 = zext i1 %47 to i32
  %49 = call i32 @INSIST(i32 %48)
  store i32 0, i32* %9, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %75

54:                                               ; preds = %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snprintf(i8* %60, i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @ISC_R_FAILURE, align 4
  store i32 %68, i32* %3, align 4
  br label %94

69:                                               ; preds = %59
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %71, 12
  %73 = zext i1 %72 to i32
  %74 = call i32 @INSIST(i32 %73)
  br label %75

75:                                               ; preds = %69, %54, %42
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %76, %77
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @isc_buffer_availablelength(i32* %79)
  %81 = icmp ugt i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %75
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i64 0, i64 0
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @isc_buffer_putmem(i32* %85, i8* %86, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @isc_buffer_putmem(i32* %89, i8* %90, i32 %91)
  %93 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %82, %67, %40, %29
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i8* @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @isc_buffer_availablelength(i32*) #1

declare dso_local i32 @isc_buffer_putmem(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
