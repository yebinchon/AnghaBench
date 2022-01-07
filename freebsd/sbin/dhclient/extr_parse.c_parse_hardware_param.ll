; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_parse_hardware_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_parse_hardware_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hardware = type { i64, i32*, i32 }

@HTYPE_ETHER = common dso_local global i32 0, align 4
@HTYPE_IEEE802 = common dso_local global i32 0, align 4
@HTYPE_FDDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"expecting a network hardware type\00", align 1
@COLON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hardware address too long\00", align 1
@SEMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"expecting semicolon.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_hardware_param(i32* %0, %struct.hardware* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hardware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.hardware* %1, %struct.hardware** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @next_token(i8** %8, i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 130, label %12
    i32 128, label %16
    i32 129, label %20
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @HTYPE_ETHER, align 4
  %14 = load %struct.hardware*, %struct.hardware** %4, align 8
  %15 = getelementptr inbounds %struct.hardware, %struct.hardware* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @HTYPE_IEEE802, align 4
  %18 = load %struct.hardware*, %struct.hardware** %4, align 8
  %19 = getelementptr inbounds %struct.hardware, %struct.hardware* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @HTYPE_FDDI, align 4
  %22 = load %struct.hardware*, %struct.hardware** %4, align 8
  %23 = getelementptr inbounds %struct.hardware, %struct.hardware* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %28

24:                                               ; preds = %2
  %25 = call i32 @parse_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @skip_to_semi(i32* %26)
  br label %81

28:                                               ; preds = %20, %16, %12
  store i64 0, i64* %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @COLON, align 4
  %31 = call i8* @parse_numeric_aggregate(i32* %29, i32* null, i64* %7, i32 %30, i32 16, i32 8)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %81

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 8
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  %41 = call i32 @parse_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %71

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.hardware*, %struct.hardware** %4, align 8
  %45 = getelementptr inbounds %struct.hardware, %struct.hardware* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.hardware*, %struct.hardware** %4, align 8
  %47 = getelementptr inbounds %struct.hardware, %struct.hardware* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = bitcast i32* %49 to i8*
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.hardware*, %struct.hardware** %4, align 8
  %53 = getelementptr inbounds %struct.hardware, %struct.hardware* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @memcpy(i8* %50, i8* %51, i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %56, 8
  br i1 %57, label %58, label %68

58:                                               ; preds = %42
  %59 = load %struct.hardware*, %struct.hardware** %4, align 8
  %60 = getelementptr inbounds %struct.hardware, %struct.hardware* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %63, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %58, %42
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %38
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @next_token(i8** %8, i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SEMI, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = call i32 @parse_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @skip_to_semi(i32* %79)
  br label %81

81:                                               ; preds = %24, %34, %77, %71
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i8* @parse_numeric_aggregate(i32*, i32*, i64*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
